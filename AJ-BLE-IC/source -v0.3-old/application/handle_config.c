/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: handle_config.c
** 创   建   人: 宋志康
** 版        本: V0.3
** 最后修改日期: 2016-08-30
** 描        述: 处理读卡器配置
** 编        译: xc8
** 硬        件: aj-b-dk-g-v3 2016-6-23 PIC16F1947
**
**--------------历史版本信息---------------------------------------------------
** 创   建   人: 宋志康
** 版  	     本: V0.2
** 日　      期: 2016-05-31
** 描　      述: aj-b-dk-g-v2 2015-10-21

** 修   订   人 : 
** 版  	     本 : 
** 修订    日期 : 
** 描　      述 : 
**-----------------------------------------------------------------------------
*******************************************************************************/

//**--------------头文件-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include "delay.h"
#include "beep.h"
#include "24c02.h"
#include "ds1302.h"
#include "uart.h"

#include "handle_config.h"
#include "handle_ic_card.h"

//**--------------全局变量-----------------------------------------------------
BYTE uart1_receive_buffer[8]; // uart1接收数据缓冲区
BYTE uart1_cnt = 0x00; // uart1接收数据计数
BYTE flag_uart1_cmd = 0x00; // uart1接收数据完成标志
BYTE count_uart1_receive = 0x00;

//**--------------函数申明-----------------------------------------------------

//**--------------函数定义-----------------------------------------------------
BYTE
find_project_key(
	BYTE data
	)
{
	WORD i;

	for (i = 0x00; i < 0x100; i++)
	{
		if (data == PWD_TABLE[i])
		{
			return i;
		}
	}

	return 0x00;
}

void
handle_config(
	void
	)
{
	WORD i = 0x00;
	BYTE tmp_buffer[6];
	BYTE report_the_loss_count = 0x00;
	
	if (uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xAA) // 0x55 0xxx 0xxx 0xxx 0xxx 0xxx 0xxx 0xAA  设置24c02数据 全写0xFF
	{
		for (i = 0x00; i < 0x100; i++)
		{
			write_24c02(i, 0xFF); // 24c02全写0xFF
		}
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if (uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xAB) // 0x55 地址 数据 0xxx 0xxx 0xxx 0xxx 0xAB  设置24c02数据 写某个地址
	{
		write_24c02(uart1_receive_buffer[1], uart1_receive_buffer[2]); // 
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0xAA && uart1_receive_buffer[7] == 0x55) // 0xAA 0xxx 0xxx 0xxx 0xxx 0xxx 0xxx 0x55 读24c02数据
	{
		for (i = 0x00; i < 0x100; i++)
		{
			uart1_send_byte(read_24c02(i));
		}
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xBB) // 设置当前系统时间 0x55 0x14 0x02 0x12 0x14 0x47 0x02 0xBB   014-02-12-14:47:00 星期三
	{
		year = uart1_receive_buffer[1];
		month = uart1_receive_buffer[2];
		day = uart1_receive_buffer[3];
		hour = uart1_receive_buffer[4];
		minute = uart1_receive_buffer[5];
		second = 0x00;
		week = uart1_receive_buffer[6];
		ds1302_set_time();
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0xBB && uart1_receive_buffer[7] == 0x55) // 获得当前系统时间
	{
		ds1302_get_time();
		uart1_send_byte(0xBB);
		uart1_send_byte(0x06);
		uart1_send_byte(year);
		uart1_send_byte(month);
		uart1_send_byte(day);
		uart1_send_byte(hour);
		uart1_send_byte(minute);
		uart1_send_byte(second);
		uart1_send_byte(week);
		uart1_send_byte(0x55);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xCC) // 设置读卡器启动梯控（设置完毕后，读卡器要重新启动）
	{
		if (uart1_receive_buffer[1] == 0x01) // 启动梯控
		{
			write_24c02(ADDRESS_STATE, 0xAA);
		}
		else if (uart1_receive_buffer[1] == 0x02) // 关闭梯控
		{
			write_24c02(ADDRESS_STATE, 0x55);
		}
		else
		{
			// do nothing
		}
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0xCC && uart1_receive_buffer[7] == 0x55) // 获得当前读卡器梯控状态
	{
		uart1_send_byte(0xCC);
		uart1_send_byte(0x04);
		uart1_send_byte(read_24c02(ADDRESS_STATE));
		uart1_send_byte(0x55);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}

	else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xDD) // 设置读卡器扇区号（设置完毕后，读卡器要重新启动）
	{
		write_24c02(ADDRESS_SECTOR, uart1_receive_buffer[1]);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0xDD && uart1_receive_buffer[7] == 0x55) // 获得读卡器当前扇区号
	{
		uart1_send_byte(0xDD);
		uart1_send_byte(0x04);
		uart1_send_byte(read_24c02(ADDRESS_SECTOR));
		uart1_send_byte(0x55);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}

	else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xEE) // 设置读卡器群组号（设置完毕后，读卡器要重新启动）
	{
		write_24c02(ADDRESS_GROUP, uart1_receive_buffer[1]);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0xEE && uart1_receive_buffer[7] == 0x55) // 获得读卡器群组号
	{
		uart1_send_byte(0xEE);
		uart1_send_byte(0x04);
		uart1_send_byte(read_24c02(ADDRESS_GROUP));
		uart1_send_byte(0x55);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	
	else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xFF) // 设置读卡器项目密码（设置完毕后，读卡器要重新启动）
	{
		write_24c02(ADDRESS_PROJECT_PASSWORD_FLAG, 0xEF); // 标志要修改密码
		write_24c02(ADDRESS_PROJECT_PASSWORD + 0x00, PWD_TABLE[uart1_receive_buffer[1]]); // 写加过密的密码数据到指定EEPROM地址
		write_24c02(ADDRESS_PROJECT_PASSWORD + 0x01, PWD_TABLE[uart1_receive_buffer[2]]);
		write_24c02(ADDRESS_PROJECT_PASSWORD + 0x02, PWD_TABLE[uart1_receive_buffer[3]]);
		write_24c02(ADDRESS_PROJECT_PASSWORD + 0x03, PWD_TABLE[uart1_receive_buffer[4]]);
		write_24c02(ADDRESS_PROJECT_PASSWORD + 0x04, PWD_TABLE[uart1_receive_buffer[5]]);
		write_24c02(ADDRESS_PROJECT_PASSWORD + 0x05, PWD_TABLE[uart1_receive_buffer[6]]);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0xFF && uart1_receive_buffer[7] == 0x55) // 获得读卡器项目密码
	{
		uart1_send_byte(0xFF);
		uart1_send_byte(0x09);
		for (i = 0x00; i < 0x06; i++)
		{
			tmp_buffer[i] = find_project_key(read_24c02(ADDRESS_PROJECT_PASSWORD + i));
		}
		uart1_send_byte(tmp_buffer[0]);
		uart1_send_byte(tmp_buffer[1]);
		uart1_send_byte(tmp_buffer[2]);
		uart1_send_byte(tmp_buffer[3]);
		uart1_send_byte(tmp_buffer[4]);
		uart1_send_byte(tmp_buffer[5]);
		uart1_send_byte(0x55);
		for (i = 0x00; i < 0x06; i++)
		{
			tmp_buffer[i] = 0x00;
		}
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	/*
	else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0x99) // 设置读卡器挂失卡号（设置完毕后，读卡器要重新启动）
	{
		report_the_loss_count = read_24c02(REPORT_THE_LOSS_COUNT);
		if ((report_the_loss_count == 0xFF) || (report_the_loss_count == GUASHI_COUNT))
		{
			report_the_loss_count = 0x00;
		}
		report_the_loss_count++;
		write_24c02(ADDRESS_GUASHI_COUNT, report_the_loss_count);
		write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_count - 0x01) * 0x04 + 0x00, uart1_receive_buffer[1]);
		write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_count - 0x01) * 0x04 + 0x01, uart1_receive_buffer[2]);
		write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_count - 0x01) * 0x04 + 0x02, uart1_receive_buffer[3]);
		write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_count - 0x01) * 0x04 + 0x03, uart1_receive_buffer[4]);
		BEEP_ON;
		delay_ms(500);
		BEEP_OFF;
	}
	*/
	else if(uart1_receive_buffer[0] == 0x99 && uart1_receive_buffer[7] == 0x55) // 获得读卡器挂失的卡号
	{
		report_the_loss_count = read_24c02(ADDRESS_REPORT_THE_LOSS_COUNT); //2016-02-22 szk add
		uart1_send_byte(0x99);
		for (i = 0x01; i < (report_the_loss_count + 0x01); i++)
		{
			uart1_send_byte(read_24c02(ADDRESS_REPORT_THE_LOSS + (i - 0x01) * 0x04 + 0x00));
			uart1_send_byte(read_24c02(ADDRESS_REPORT_THE_LOSS + (i - 0x01) * 0x04 + 0x01));
			uart1_send_byte(read_24c02(ADDRESS_REPORT_THE_LOSS + (i - 0x01) * 0x04 + 0x02));
			uart1_send_byte(read_24c02(ADDRESS_REPORT_THE_LOSS + (i - 0x01) * 0x04 + 0x03));
		}
		uart1_send_byte(0x55);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	
	else if (uart1_receive_buffer[0] == 0x88 && uart1_receive_buffer[7] == 0x55) // 获得读卡器固件版本号 2016-07-19 szk add
	{
		uart1_send_byte(read_eeprom(0x00));
		uart1_send_byte(read_eeprom(0x01));
		uart1_send_byte(read_eeprom(0x02));
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else
	{
		// do nothing
	}
	for (i = 0x00; i < 0x08; i++)
	{
		uart1_receive_buffer[i] = 0x00;
	}
}
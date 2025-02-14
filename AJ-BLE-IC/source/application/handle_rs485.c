/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: handle_rs485.c
** 创   建   人: 宋志康
** 版        本: V0.3
** 最后修改日期: 2016-08-30
** 描        述: 处理rs485接收数据
** 编        译: xc8
** 硬        件: aj-b-dk-g-v3 2016-6-23
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


#include "led.h"
#include "beep.h"
#include "delay.h"
#include "ds1302.h"
#include "24c02.h"
#include "uart.h"

#include "other.h"
#include "handle_rs485.h"
#include "handle_ic_card.h"
#include "handle_floor.h"

//**--------------全局变量-----------------------------------------------------
BYTE uart2_receive_buffer[16]; // uart2接收数据缓冲区
BYTE uart2_cnt = 0x00; // uart2接收数据计数
BYTE flag_uart2_cmd = 0x00; // uart2接收数据完成标志
BYTE count_uart2_receive = 0x00;


//**--------------函数申明-----------------------------------------------------

//**--------------函数定义-----------------------------------------------------
BYTE
do_check_sum(
	void
	)
{
	BYTE sum = 0x00;
	BYTE length = 0x00;
	
	length = uart2_receive_buffer[1];
	
	for (BYTE i = 0x00; i < (length - 0x05); i++)
	{
		sum += uart2_receive_buffer[3 + i];
	}
	sum += (BYTE)(uart2_receive_buffer[1] + uart2_receive_buffer[2]);
	if (sum == uart2_receive_buffer[length - 0x02])
	{
		return 0x01;
	}
	else
	{
		return 0x00;
	}
}

BYTE
check_report_the_loss(
	void
	)
{
	for (BYTE i = 0x00; i < REPORT_THE_LOSS_COUNT; i++)
	{
		if ((uart2_receive_buffer[4] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x00)) &&
			(uart2_receive_buffer[5] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x01)) &&
			(uart2_receive_buffer[6] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x02)) &&
			(uart2_receive_buffer[7] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x03))) // 该卡已经挂失
		{
			return 0x01;
		}
	}
	
	return 0x00;
}

BYTE
find_card(
	BYTE *buffer
	)
{
	for (BYTE i = 0x00; i < REPORT_THE_LOSS_COUNT; i++)
	{
		if ((buffer[0] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x00)) &&
			(buffer[1] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x01)) &&
			(buffer[2] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x02)) &&
			(buffer[3] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x03)))
		{
			return (i + 0x01);
		}
	}
	
	return 0x00;
}

void handle_rs485(void) // 处理rs485接收数据
{
	BYTE tmp[4];
	BYTE report_the_loss_address = 0x00;
	BYTE sum = 0x00;
	BYTE report_the_loss_count = 0x00;

	if (do_check_sum()) // 检查数据校验
	{
		// 分析数据
		switch (uart2_receive_buffer[2]) // 命令码
		{
			case CMD_GET_RECORD : // 刷卡记录
				if (flag_record) // 检查是否有刷卡记录
				{
					flag_record = 0x00; // 清刷卡记录标志
					sum = (BYTE)(0x09 + CMD_GET_RECORD + ic_card[0] + ic_card[1] + ic_card[2] + ic_card[3]);
					uart2_send_byte(P_H_A); // 包头
					uart2_send_byte(0x09); // 数据长度
					uart2_send_byte(CMD_GET_RECORD); // 命令码
					uart2_send_byte(ic_card[0]); // 卡号高字节
					uart2_send_byte(ic_card[1]);
					uart2_send_byte(ic_card[2]);
					uart2_send_byte(ic_card[3]); // 卡号低字节
					uart2_send_byte(sum); // 校验和
					uart2_send_byte(P_T_A); // 包尾
				}
				else
				{
					sum = (BYTE)(0x09 + CMD_GET_RECORD);
					uart2_send_byte(P_H_A); // 包头
					uart2_send_byte(0x09); // 数据长度
					uart2_send_byte(CMD_GET_RECORD); // 命令码
					uart2_send_byte(0x00); // 卡号高字节
					uart2_send_byte(0x00);
					uart2_send_byte(0x00);
					uart2_send_byte(0x00); // 卡号低字节
					uart2_send_byte(sum); // 校验和
					uart2_send_byte(P_T_A); // 包尾
				}
				break;
			case CMD_REPORT_THE_LOSS : // 群控器通知读卡器挂失或取消挂失某个卡号
				tmp[0] = uart2_receive_buffer[4];
				tmp[1] = uart2_receive_buffer[5];
				tmp[2] = uart2_receive_buffer[6];
				tmp[3] = uart2_receive_buffer[7];	
				if (uart2_receive_buffer[3] == 0x00) // 挂失卡号
				{
					// 检查该卡是否已经挂失，如果已经挂失do nothing，否则把卡号写到EEPROM中，累加挂失卡号总数
					if (check_report_the_loss()) // 该卡已经挂失
					{
						// do nothing
					}
					else // 该卡没有挂失，开始挂失处理
					{
						report_the_loss_count = read_24c02(ADDRESS_REPORT_THE_LOSS_COUNT); // 从EEPROM中读出挂失卡计数
						if ((report_the_loss_count == 0xFF) || (report_the_loss_count == REPORT_THE_LOSS_COUNT)) // 挂失次数满 清挂失次数
						{
							report_the_loss_count = 0x00;
						}
						report_the_loss_count++; // 刷挂失卡计数 2014-10-31
						write_24c02(ADDRESS_REPORT_THE_LOSS_COUNT, report_the_loss_count);
						write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_count - 0x01) * 0x04 + 0x00, uart2_receive_buffer[4]); // 把要挂失的卡号写到指定的EEPROM
						write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_count - 0x01) * 0x04 + 0x01, uart2_receive_buffer[5]);
						write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_count - 0x01) * 0x04 + 0x02, uart2_receive_buffer[6]);
						write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_count - 0x01) * 0x04 + 0x03, uart2_receive_buffer[7]);
					}
				}
				else if (uart2_receive_buffer[3] == 0x01) // 取消挂失卡号
				{
					// 检查该卡是否已经挂失，如果已经挂失清除EEPROM，否则do nothing
					if (check_report_the_loss()) // 该卡已经挂失
					{
						if (report_the_loss_address = find_card(tmp))
						{
							write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_address - 0x01) * 0x04 + 0x00, 0x00); // 把要取消挂失的卡指定EEPROM处写0x00
							write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_address - 0x01) * 0x04 + 0x01, 0x00);
							write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_address - 0x01) * 0x04 + 0x02, 0x00);
							write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_address - 0x01) * 0x04 + 0x03, 0x00);
							//report_the_loss_count--;
						}
					}
					else // 该卡没有挂失
					{
						// do nothing
					}
				}
				else // 不可能的情况
				{
					// do nothing
				}
				break;
			case CMD_FIRE : // 启动或关闭梯控（消防）
				if (uart2_receive_buffer[3] == 0x00) // 关闭梯控
				{
					LED1_OFF; // 熄灭灯
					is_enable = 0x00;
					uart1_send_byte(0xF0); // 发送指定的数据给楼层板，由楼层板控制关闭刷卡功能
					uart1_send_byte(0xF1);
					uart1_send_byte(0xFE);
				}
				break;
			default : break;
		}
	}
	else // 数据校验失败
	{
		//BEEP_ON; // 报警
		//delay_ms(1000);
		//BEEP_OFF;
		// do nothing
	}
	for (BYTE i = 0x00; i < 0x10; i++) // 清接收缓冲区
	{
		uart2_receive_buffer[i] = 0x00;
	}
}
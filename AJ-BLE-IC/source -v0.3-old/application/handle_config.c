/******************************************************************************
**                           �Ͼ�������Ϣ�Ƽ����޹�˾
**
**                           http://www.njanjar.com
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��: handle_config.c
** ��   ��   ��: ��־��
** ��        ��: V0.3
** ����޸�����: 2016-08-30
** ��        ��: �������������
** ��        ��: xc8
** Ӳ        ��: aj-b-dk-g-v3 2016-6-23 PIC16F1947
**
**--------------��ʷ�汾��Ϣ---------------------------------------------------
** ��   ��   ��: ��־��
** ��  	     ��: V0.2
** �ա�      ��: 2016-05-31
** �衡      ��: aj-b-dk-g-v2 2015-10-21

** ��   ��   �� : 
** ��  	     �� : 
** �޶�    ���� : 
** �衡      �� : 
**-----------------------------------------------------------------------------
*******************************************************************************/

//**--------------ͷ�ļ�-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include "delay.h"
#include "beep.h"
#include "24c02.h"
#include "ds1302.h"
#include "uart.h"

#include "handle_config.h"
#include "handle_ic_card.h"

//**--------------ȫ�ֱ���-----------------------------------------------------
BYTE uart1_receive_buffer[8]; // uart1�������ݻ�����
BYTE uart1_cnt = 0x00; // uart1�������ݼ���
BYTE flag_uart1_cmd = 0x00; // uart1����������ɱ�־
BYTE count_uart1_receive = 0x00;

//**--------------��������-----------------------------------------------------

//**--------------��������-----------------------------------------------------
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
	
	if (uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xAA) // 0x55 0xxx 0xxx 0xxx 0xxx 0xxx 0xxx 0xAA  ����24c02���� ȫд0xFF
	{
		for (i = 0x00; i < 0x100; i++)
		{
			write_24c02(i, 0xFF); // 24c02ȫд0xFF
		}
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if (uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xAB) // 0x55 ��ַ ���� 0xxx 0xxx 0xxx 0xxx 0xAB  ����24c02���� дĳ����ַ
	{
		write_24c02(uart1_receive_buffer[1], uart1_receive_buffer[2]); // 
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0xAA && uart1_receive_buffer[7] == 0x55) // 0xAA 0xxx 0xxx 0xxx 0xxx 0xxx 0xxx 0x55 ��24c02����
	{
		for (i = 0x00; i < 0x100; i++)
		{
			uart1_send_byte(read_24c02(i));
		}
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xBB) // ���õ�ǰϵͳʱ�� 0x55 0x14 0x02 0x12 0x14 0x47 0x02 0xBB   014-02-12-14:47:00 ������
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
	else if(uart1_receive_buffer[0] == 0xBB && uart1_receive_buffer[7] == 0x55) // ��õ�ǰϵͳʱ��
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
	else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xCC) // ���ö����������ݿأ�������Ϻ󣬶�����Ҫ����������
	{
		if (uart1_receive_buffer[1] == 0x01) // �����ݿ�
		{
			write_24c02(ADDRESS_STATE, 0xAA);
		}
		else if (uart1_receive_buffer[1] == 0x02) // �ر��ݿ�
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
	else if(uart1_receive_buffer[0] == 0xCC && uart1_receive_buffer[7] == 0x55) // ��õ�ǰ�������ݿ�״̬
	{
		uart1_send_byte(0xCC);
		uart1_send_byte(0x04);
		uart1_send_byte(read_24c02(ADDRESS_STATE));
		uart1_send_byte(0x55);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}

	else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xDD) // ���ö����������ţ�������Ϻ󣬶�����Ҫ����������
	{
		write_24c02(ADDRESS_SECTOR, uart1_receive_buffer[1]);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0xDD && uart1_receive_buffer[7] == 0x55) // ��ö�������ǰ������
	{
		uart1_send_byte(0xDD);
		uart1_send_byte(0x04);
		uart1_send_byte(read_24c02(ADDRESS_SECTOR));
		uart1_send_byte(0x55);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}

	else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xEE) // ���ö�����Ⱥ��ţ�������Ϻ󣬶�����Ҫ����������
	{
		write_24c02(ADDRESS_GROUP, uart1_receive_buffer[1]);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0xEE && uart1_receive_buffer[7] == 0x55) // ��ö�����Ⱥ���
	{
		uart1_send_byte(0xEE);
		uart1_send_byte(0x04);
		uart1_send_byte(read_24c02(ADDRESS_GROUP));
		uart1_send_byte(0x55);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	
	else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xFF) // ���ö�������Ŀ���루������Ϻ󣬶�����Ҫ����������
	{
		write_24c02(ADDRESS_PROJECT_PASSWORD_FLAG, 0xEF); // ��־Ҫ�޸�����
		write_24c02(ADDRESS_PROJECT_PASSWORD + 0x00, PWD_TABLE[uart1_receive_buffer[1]]); // д�ӹ��ܵ��������ݵ�ָ��EEPROM��ַ
		write_24c02(ADDRESS_PROJECT_PASSWORD + 0x01, PWD_TABLE[uart1_receive_buffer[2]]);
		write_24c02(ADDRESS_PROJECT_PASSWORD + 0x02, PWD_TABLE[uart1_receive_buffer[3]]);
		write_24c02(ADDRESS_PROJECT_PASSWORD + 0x03, PWD_TABLE[uart1_receive_buffer[4]]);
		write_24c02(ADDRESS_PROJECT_PASSWORD + 0x04, PWD_TABLE[uart1_receive_buffer[5]]);
		write_24c02(ADDRESS_PROJECT_PASSWORD + 0x05, PWD_TABLE[uart1_receive_buffer[6]]);
		BEEP_ON;
		delay_ms(100);
		BEEP_OFF;
	}
	else if(uart1_receive_buffer[0] == 0xFF && uart1_receive_buffer[7] == 0x55) // ��ö�������Ŀ����
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
	else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0x99) // ���ö�������ʧ���ţ�������Ϻ󣬶�����Ҫ����������
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
	else if(uart1_receive_buffer[0] == 0x99 && uart1_receive_buffer[7] == 0x55) // ��ö�������ʧ�Ŀ���
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
	
	else if (uart1_receive_buffer[0] == 0x88 && uart1_receive_buffer[7] == 0x55) // ��ö������̼��汾�� 2016-07-19 szk add
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
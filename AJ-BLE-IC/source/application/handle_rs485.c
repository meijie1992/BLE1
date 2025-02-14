/******************************************************************************
**                           �Ͼ�������Ϣ�Ƽ����޹�˾
**
**                           http://www.njanjar.com
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��: handle_rs485.c
** ��   ��   ��: ��־��
** ��        ��: V0.3
** ����޸�����: 2016-08-30
** ��        ��: ����rs485��������
** ��        ��: xc8
** Ӳ        ��: aj-b-dk-g-v3 2016-6-23
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

//**--------------ȫ�ֱ���-----------------------------------------------------
BYTE uart2_receive_buffer[16]; // uart2�������ݻ�����
BYTE uart2_cnt = 0x00; // uart2�������ݼ���
BYTE flag_uart2_cmd = 0x00; // uart2����������ɱ�־
BYTE count_uart2_receive = 0x00;


//**--------------��������-----------------------------------------------------

//**--------------��������-----------------------------------------------------
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
			(uart2_receive_buffer[7] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x03))) // �ÿ��Ѿ���ʧ
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

void handle_rs485(void) // ����rs485��������
{
	BYTE tmp[4];
	BYTE report_the_loss_address = 0x00;
	BYTE sum = 0x00;
	BYTE report_the_loss_count = 0x00;

	if (do_check_sum()) // �������У��
	{
		// ��������
		switch (uart2_receive_buffer[2]) // ������
		{
			case CMD_GET_RECORD : // ˢ����¼
				if (flag_record) // ����Ƿ���ˢ����¼
				{
					flag_record = 0x00; // ��ˢ����¼��־
					sum = (BYTE)(0x09 + CMD_GET_RECORD + ic_card[0] + ic_card[1] + ic_card[2] + ic_card[3]);
					uart2_send_byte(P_H_A); // ��ͷ
					uart2_send_byte(0x09); // ���ݳ���
					uart2_send_byte(CMD_GET_RECORD); // ������
					uart2_send_byte(ic_card[0]); // ���Ÿ��ֽ�
					uart2_send_byte(ic_card[1]);
					uart2_send_byte(ic_card[2]);
					uart2_send_byte(ic_card[3]); // ���ŵ��ֽ�
					uart2_send_byte(sum); // У���
					uart2_send_byte(P_T_A); // ��β
				}
				else
				{
					sum = (BYTE)(0x09 + CMD_GET_RECORD);
					uart2_send_byte(P_H_A); // ��ͷ
					uart2_send_byte(0x09); // ���ݳ���
					uart2_send_byte(CMD_GET_RECORD); // ������
					uart2_send_byte(0x00); // ���Ÿ��ֽ�
					uart2_send_byte(0x00);
					uart2_send_byte(0x00);
					uart2_send_byte(0x00); // ���ŵ��ֽ�
					uart2_send_byte(sum); // У���
					uart2_send_byte(P_T_A); // ��β
				}
				break;
			case CMD_REPORT_THE_LOSS : // Ⱥ����֪ͨ��������ʧ��ȡ����ʧĳ������
				tmp[0] = uart2_receive_buffer[4];
				tmp[1] = uart2_receive_buffer[5];
				tmp[2] = uart2_receive_buffer[6];
				tmp[3] = uart2_receive_buffer[7];	
				if (uart2_receive_buffer[3] == 0x00) // ��ʧ����
				{
					// ���ÿ��Ƿ��Ѿ���ʧ������Ѿ���ʧdo nothing������ѿ���д��EEPROM�У��ۼӹ�ʧ��������
					if (check_report_the_loss()) // �ÿ��Ѿ���ʧ
					{
						// do nothing
					}
					else // �ÿ�û�й�ʧ����ʼ��ʧ����
					{
						report_the_loss_count = read_24c02(ADDRESS_REPORT_THE_LOSS_COUNT); // ��EEPROM�ж�����ʧ������
						if ((report_the_loss_count == 0xFF) || (report_the_loss_count == REPORT_THE_LOSS_COUNT)) // ��ʧ������ ���ʧ����
						{
							report_the_loss_count = 0x00;
						}
						report_the_loss_count++; // ˢ��ʧ������ 2014-10-31
						write_24c02(ADDRESS_REPORT_THE_LOSS_COUNT, report_the_loss_count);
						write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_count - 0x01) * 0x04 + 0x00, uart2_receive_buffer[4]); // ��Ҫ��ʧ�Ŀ���д��ָ����EEPROM
						write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_count - 0x01) * 0x04 + 0x01, uart2_receive_buffer[5]);
						write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_count - 0x01) * 0x04 + 0x02, uart2_receive_buffer[6]);
						write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_count - 0x01) * 0x04 + 0x03, uart2_receive_buffer[7]);
					}
				}
				else if (uart2_receive_buffer[3] == 0x01) // ȡ����ʧ����
				{
					// ���ÿ��Ƿ��Ѿ���ʧ������Ѿ���ʧ���EEPROM������do nothing
					if (check_report_the_loss()) // �ÿ��Ѿ���ʧ
					{
						if (report_the_loss_address = find_card(tmp))
						{
							write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_address - 0x01) * 0x04 + 0x00, 0x00); // ��Ҫȡ����ʧ�Ŀ�ָ��EEPROM��д0x00
							write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_address - 0x01) * 0x04 + 0x01, 0x00);
							write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_address - 0x01) * 0x04 + 0x02, 0x00);
							write_24c02(ADDRESS_REPORT_THE_LOSS + (report_the_loss_address - 0x01) * 0x04 + 0x03, 0x00);
							//report_the_loss_count--;
						}
					}
					else // �ÿ�û�й�ʧ
					{
						// do nothing
					}
				}
				else // �����ܵ����
				{
					// do nothing
				}
				break;
			case CMD_FIRE : // ������ر��ݿأ�������
				if (uart2_receive_buffer[3] == 0x00) // �ر��ݿ�
				{
					LED1_OFF; // Ϩ���
					is_enable = 0x00;
					uart1_send_byte(0xF0); // ����ָ�������ݸ�¥��壬��¥�����ƹر�ˢ������
					uart1_send_byte(0xF1);
					uart1_send_byte(0xFE);
				}
				break;
			default : break;
		}
	}
	else // ����У��ʧ��
	{
		//BEEP_ON; // ����
		//delay_ms(1000);
		//BEEP_OFF;
		// do nothing
	}
	for (BYTE i = 0x00; i < 0x10; i++) // ����ջ�����
	{
		uart2_receive_buffer[i] = 0x00;
	}
}
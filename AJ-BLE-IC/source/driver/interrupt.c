/******************************************************************************
**                           �Ͼ�������Ϣ�Ƽ����޹�˾
**
**                           http://www.njanjar.com
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��: interrupt.c
** ��   ��   ��: ��־��
** ��        ��: V0.3
** ����޸�����: 2016-08-30
** ��        ��: �жϷ��������
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

#include "uart.h"
#include "24c02.h"
#include "handle_rs485.h"
#include "handle_config.h"
#include "handle_timer.h"
#include "handle_ic_card.h"

//**--------------ȫ�ֱ���-----------------------------------------------------

//**--------------��������-----------------------------------------------------

//**--------------��������-----------------------------------------------------
/******************************************************************************
** �������� : void interrupt isr(void)
** ������� : ��
** ������� : ��
** �������� : �жϷ��������
** ȫ�ֱ��� : timer1_count
              flag_timer1
              
              flag_timer_card
              flag_timer_card_count
              flag_timer_card_timeout
              
              flag_timer_heartbeat
              flag_timer_heartbeat_count
              flag_timer_heartbeat_timeout
              
              flag_timer_polling
              flag_timer_polling_count
              flag_timer_polling_timeout
              
              cmd_232[]
              rs232_cnt
              count_uart1_recv
              
              flag_rs485_cmd
              uart2_recv_buffer
              rs485_cnt
              count_uart2_recv
** ��    �� : ��־��
** ��    �� : 2016-05-31
** ��    �� : ��
** ��    �� : V0.2
*******************************************************************************/
void
interrupt
isr(
	void
 	) // �жϷ������
{
	BYTE data_length = 0x00;
	
	if (TMR1IE && TMR1IF) // ��ʱ��1�ж� 1ms���
	{
		TMR1IF = 0x00;
		TMR1H = 0xE0;
		TMR1L = 0xC0; // ��ʱ1ms
		timer_count++;
		if (timer_count >= 1000)
		{
			timer_count = 0x00;
      		flag_timer = 0x01;
      	}
      	
      	if (count_uart1_receive > 0x00)
		{
			count_uart1_receive--;
		}
		else if (count_uart1_receive == 0x00)
		{
			uart1_cnt = 0x00;
		}
		else
		{
			// do nothing
		}
		
		if (count_uart2_receive > 0x00)
		{
			count_uart2_receive--;
			
			 if (count_uart2_receive == 0x00)
			{
				if((uart2_cnt==5)&&(uart2_receive_buffer[4]==0xAA))
				{
					flag_uart2_cmd = 0x01; // �����������
				}
				uart2_cnt = 0x00;
			}
		}
		
		
		
		/*
		if (flag_timer_card)
		{
			flag_timer_card_count++;
			if (flag_timer_card_count >= 2000) // 2���ӳ�ʱ
			{
				flag_timer_card_count = 0x00;
				flag_timer_card_timeout = 0x01;
				flag_timer_card = 0x00;
			}
		}
		*/
		
		/*
		if (flag_timer_heartbeat)
		{
			flag_timer_heartbeat_count++;
			if (flag_timer_heartbeat_count >= 2000) // 2���ӳ�ʱ
			{
				flag_timer_heartbeat_count = 0x00;
				flag_timer_heartbeat_timeout = 0x01;
				flag_timer_heartbeat = 0x00;
			}
		}
		*/
		
		/*
		if (flag_timer_polling)
		{
			flag_timer_polling_count++;
			if (flag_timer_polling_count >= 5000) // 5���ӳ�ʱ
			{
				flag_timer_polling_count = 0x00;
				flag_timer_polling_timeout = 0x01;
				flag_timer_polling = 0x00;
			}
		}
		*/
	}
	
	if (RC1IE && RC1IF) // uart1��rs232�����ж�
	{
		RC1IF = 0x00; // �����־
		uart1_receive_buffer[uart1_cnt++] = RC1REG; // ������յ�������
		count_uart1_receive = 0x03; // �����ַ����ַ���ʱʱ��Ϊ3ms 9600bps
		if (uart1_cnt == 0x08)
		{
			uart1_cnt = 0x00;
			flag_uart1_cmd = 0x01;
		}
		if (uart1_cnt > 0x08)
		{
			uart1_cnt = 0x00;
		}
	}
	
	if (RC2IE && RC2IF) // uart2��rs485���������жϣ�Ⱥ�������ͣ����������գ�Ⱥ����ѯ����û��ˢ����¼
	{
		RC2IF = 0x00; // �����־
		if (flag_uart2_cmd == 0x00)
		{
			uart2_receive_buffer[uart2_cnt] = RC2REG; // ������յ�������
			
			if (uart2_receive_buffer[0] == 0x55) // ��ͷ������ȷ�����ռ����ۼ�
			{
				uart2_cnt++;
			}
			

			count_uart2_receive = 0x05; // �����ַ����ַ���ʱʱ��Ϊ3ms 9600bps
			
		}
		else
		{
			// do nothing
		}
	}
}

/******************************************************************************
** �������� : init_interrupt
** ������� : ��
** ������� : ��
** �������� : �жϳ�ʼ��
** ȫ�ֱ��� : 
** ��    �� : ��־��
** ��    �� : 2016-05-31
** ��    �� : ��
** ��    �� : V0.2
*******************************************************************************/
void
init_interrupt(
	void
	)
{
	PEIE = 0x01; // ʹ�������ж�
	GIE = 0x01; // ʹ��ȫ���ж�	   
}

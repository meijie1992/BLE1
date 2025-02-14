/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: interrupt.c
** 创   建   人: 宋志康
** 版        本: V0.3
** 最后修改日期: 2016-08-30
** 描        述: 中断服务程序处理
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

#include "uart.h"
#include "24c02.h"
#include "handle_rs485.h"
#include "handle_config.h"
#include "handle_timer.h"
#include "handle_ic_card.h"

//**--------------全局变量-----------------------------------------------------

//**--------------函数申明-----------------------------------------------------

//**--------------函数定义-----------------------------------------------------
/******************************************************************************
** 函数名称 : void interrupt isr(void)
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 中断服务程序处理
** 全局变量 : timer1_count
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
** 作    者 : 宋志康
** 日    期 : 2016-05-31
** 修    改 : 无
** 版    本 : V0.2
*******************************************************************************/
void
interrupt
isr(
	void
 	) // 中断服务程序
{
	BYTE data_length = 0x00;
	
	if (TMR1IE && TMR1IF) // 定时器1中断 1ms间隔
	{
		TMR1IF = 0x00;
		TMR1H = 0xE0;
		TMR1L = 0xC0; // 定时1ms
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
					flag_uart2_cmd = 0x01; // 接收数据完成
				}
				uart2_cnt = 0x00;
			}
		}
		
		
		
		/*
		if (flag_timer_card)
		{
			flag_timer_card_count++;
			if (flag_timer_card_count >= 2000) // 2秒钟超时
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
			if (flag_timer_heartbeat_count >= 2000) // 2秒钟超时
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
			if (flag_timer_polling_count >= 5000) // 5秒钟超时
			{
				flag_timer_polling_count = 0x00;
				flag_timer_polling_timeout = 0x01;
				flag_timer_polling = 0x00;
			}
		}
		*/
	}
	
	if (RC1IE && RC1IF) // uart1，rs232接收中断
	{
		RC1IF = 0x00; // 清除标志
		uart1_receive_buffer[uart1_cnt++] = RC1REG; // 保存接收到的数据
		count_uart1_receive = 0x03; // 接收字符与字符超时时间为3ms 9600bps
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
	
	if (RC2IE && RC2IF) // uart2，rs485接收数据中断，群控器发送，读卡器接收，群控器询问有没有刷卡记录
	{
		RC2IF = 0x00; // 清除标志
		if (flag_uart2_cmd == 0x00)
		{
			uart2_receive_buffer[uart2_cnt] = RC2REG; // 保存接收到的数据
			
			if (uart2_receive_buffer[0] == 0x55) // 包头数据正确，接收计数累加
			{
				uart2_cnt++;
			}
			

			count_uart2_receive = 0x05; // 接收字符与字符超时时间为3ms 9600bps
			
		}
		else
		{
			// do nothing
		}
	}
}

/******************************************************************************
** 函数名称 : init_interrupt
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 中断初始化
** 全局变量 : 
** 作    者 : 宋志康
** 日    期 : 2016-05-31
** 修    改 : 无
** 版    本 : V0.2
*******************************************************************************/
void
init_interrupt(
	void
	)
{
	PEIE = 0x01; // 使能外设中断
	GIE = 0x01; // 使能全局中断	   
}

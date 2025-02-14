/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: uart.h
** 创   建   人: 宋志康
** 版        本: V0.2
** 最后修改日期: 2016-05-31
** 描        述: pic16系列单片机外设(pic16f1947)uart驱动
**
**--------------历史版本信息---------------------------------------------------
** 创   建   人: 宋志康
** 版  	     本: V0.2
** 日　      期: 2016-05-31
** 描　      述: pic16系列单片机外设(pic16f1947)uart驱动

** 修   订   人 : 
** 版  	     本 : 
** 修订    日期 : 
** 描　      述 : 
**-----------------------------------------------------------------------------
*******************************************************************************/
#ifndef _AJ_UART_H
#define _AJ_UART_H

//**--------------包含文件-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------
#define FRQ_SYS      8000000 // 系统时钟
#define BDRT         9600 // 波特率

#define BDRT_S_H     0  // (FRQ_SYS / (16 * BDRT) - 1) / 256
#define BDRT_S_L     51 // (FRQ_SYS / (16 * BDRT) - 1) % 256

#define RS485_CONTROL_TRIS	(TRISGbits.TRISG0) // RG0
#define RS485_SEND          (LATGbits.LATG0 = 1) // 输出高电平
#define RS485_RECEIVE      	(LATGbits.LATG0 = 0) // 输出低电平

#define UART1_TX_TRIS 		(TRISCbits.TRISC6) // RC6
#define UART1_RX_TRIS  		(TRISCbits.TRISC7) // RC7

#define UART2_TX_TRIS 		(TRISGbits.TRISG1) // RG1
#define UART2_RX_TRIS  		(TRISGbits.TRISG2) // RG2
//**--------------数据结构-----------------------------------------------------

//**--------------函数申明-----------------------------------------------------
void
init_uart1(
	void
	);
	
void
uart1_send_byte(
	BYTE data
	);

void
uart1_send_nbyte(
	BYTE *data,
	DWORD size
	);
	
BYTE
uart1_read_byte(
	void
	);
	
void
uart1_read_nbyte(
	BYTE *buffer,
	BYTE length
	);	
	
void
init_uart2(
	void
	);
	
void
uart2_send_byte(
	BYTE data
	);

void
uart2_send_nbyte(
	BYTE *data,
	DWORD size
	);
	
BYTE
uart2_read_byte(
	void
	);
	
void
uart2_read_nbyte(
	BYTE *buffer,
	BYTE length
	);

void
uart2_send_const_byte(
	const BYTE data
	);
	
void
uart2_send_const_nbyte(
	const BYTE *data,
	DWORD size
	);
		
//**--------------全局变量-----------------------------------------------------

#endif // _AJ_UART_H

/******************************************************************************
**                           �Ͼ�������Ϣ�Ƽ����޹�˾
**
**                           http://www.njanjar.com
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��: uart.h
** ��   ��   ��: ��־��
** ��        ��: V0.2
** ����޸�����: 2016-05-31
** ��        ��: pic16ϵ�е�Ƭ������(pic16f1947)uart����
**
**--------------��ʷ�汾��Ϣ---------------------------------------------------
** ��   ��   ��: ��־��
** ��  	     ��: V0.2
** �ա�      ��: 2016-05-31
** �衡      ��: pic16ϵ�е�Ƭ������(pic16f1947)uart����

** ��   ��   �� : 
** ��  	     �� : 
** �޶�    ���� : 
** �衡      �� : 
**-----------------------------------------------------------------------------
*******************************************************************************/
#ifndef _AJ_UART_H
#define _AJ_UART_H

//**--------------�����ļ�-----------------------------------------------------

//**--------------�궨��-------------------------------------------------------
#define FRQ_SYS      8000000 // ϵͳʱ��
#define BDRT         9600 // ������

#define BDRT_S_H     0  // (FRQ_SYS / (16 * BDRT) - 1) / 256
#define BDRT_S_L     51 // (FRQ_SYS / (16 * BDRT) - 1) % 256

#define RS485_CONTROL_TRIS	(TRISGbits.TRISG0) // RG0
#define RS485_SEND          (LATGbits.LATG0 = 1) // ����ߵ�ƽ
#define RS485_RECEIVE      	(LATGbits.LATG0 = 0) // ����͵�ƽ

#define UART1_TX_TRIS 		(TRISCbits.TRISC6) // RC6
#define UART1_RX_TRIS  		(TRISCbits.TRISC7) // RC7

#define UART2_TX_TRIS 		(TRISGbits.TRISG1) // RG1
#define UART2_RX_TRIS  		(TRISGbits.TRISG2) // RG2
//**--------------���ݽṹ-----------------------------------------------------

//**--------------��������-----------------------------------------------------
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
		
//**--------------ȫ�ֱ���-----------------------------------------------------

#endif // _AJ_UART_H

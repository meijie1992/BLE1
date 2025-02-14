/******************************************************************************
**                           �Ͼ�������Ϣ�Ƽ����޹�˾
**
**                           http://www.njanjar.com
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��: input.h
** ��   ��   ��: ��־��
** ��        ��: V0.2
** ����޸�����: 2016-05-31
** ��        ��: �����źŴ���
**
**--------------��ʷ�汾��Ϣ---------------------------------------------------
** ��   ��   ��: ��־��
** ��  	     ��: V0.2
** �ա�      ��: 2016-05-31
** �衡      ��: �����źŴ���

** ��   ��   �� : 
** ��  	     �� : 
** �޶�    ���� : 
** �衡      �� : 
**-----------------------------------------------------------------------------
*******************************************************************************/
#ifndef _AJ_INPUT_H
#define _AJ_INPUT_H

//**--------------�����ļ�-----------------------------------------------------

//**--------------�궨��-------------------------------------------------------
#define INPUT1_TRIS			(TRISFbits.TRISF7) // RF7
#define INPUT1_GET 			(RF7)
#define INPUT2_TRIS			(TRISFbits.TRISF6) // RF6
#define INPUT2_GET 			(RF6)
#define INPUT3_TRIS			(TRISFbits.TRISF5) // RF5
#define INPUT3_GET 			(RF5)
#define INPUT4_TRIS			(TRISFbits.TRISF4) // RF4
#define INPUT4_GET 			(RF4)
#define INPUT5_TRIS			(TRISFbits.TRISF3) // RF3
#define INPUT5_GET 			(RF3)
#define INPUT6_TRIS			(TRISFbits.TRISF2) // RF2
#define INPUT6_GET 			(RF2)
#define INPUT7_TRIS			(TRISFbits.TRISF1) // RF1
#define INPUT7_GET 			(RF1)
#define INPUT8_TRIS			(TRISFbits.TRISF0) // RF0
#define INPUT8_GET 			(RF0)

#define FRD_INPUT_TRIS		(TRISEbits.TRISE1) // RE1
#define FRD_INPUT_GET 		(RE1)

#define SWITCH_INPUT_TRIS	(TRISEbits.TRISE0) // RE0
#define SWITCH_INPUT_GET 	(RE0)

//**--------------���ݽṹ-----------------------------------------------------

//**--------------��������-----------------------------------------------------
void
init_input(
	void
	);

void
get_group(
	void
	);

//**--------------ȫ�ֱ���-----------------------------------------------------
extern BYTE group;

#endif // _AJ_INPUT_H

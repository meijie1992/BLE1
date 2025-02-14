/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: input.h
** 创   建   人: 宋志康
** 版        本: V0.2
** 最后修改日期: 2016-05-31
** 描        述: 输入信号处理
**
**--------------历史版本信息---------------------------------------------------
** 创   建   人: 宋志康
** 版  	     本: V0.2
** 日　      期: 2016-05-31
** 描　      述: 输入信号处理

** 修   订   人 : 
** 版  	     本 : 
** 修订    日期 : 
** 描　      述 : 
**-----------------------------------------------------------------------------
*******************************************************************************/
#ifndef _AJ_INPUT_H
#define _AJ_INPUT_H

//**--------------包含文件-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------
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

//**--------------数据结构-----------------------------------------------------

//**--------------函数申明-----------------------------------------------------
void
init_input(
	void
	);

void
get_group(
	void
	);

//**--------------全局变量-----------------------------------------------------
extern BYTE group;

#endif // _AJ_INPUT_H

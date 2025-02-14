/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: 24c02.h
** 创   建   人: 宋志康
** 版        本: V0.3
** 最后修改日期: 2016-08-30
** 描        述: 24c02驱动
**
**--------------历史版本信息---------------------------------------------------
** 创   建   人: 宋志康
** 版  	     本: V0.1
** 日　      期: 2015年07月15日
** 描　      述: 24c256驱动
**-----------------------------------------------------------------------------
*******************************************************************************/
#ifndef _AJ_24C02_H
#define _AJ_24C02_H

//**--------------包含文件-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------
#define ADDRESS_STATE					0x00
#define ADDRESS_GROUP					0x01
#define ADDRESS_PROJECT_PASSWORD_FLAG	0x02
#define ADDRESS_PROJECT_PASSWORD		0x03
#define ADDRESS_SECTOR					0x09
#define ADDRESS_REPORT_THE_LOSS			0x40
#define ADDRESS_REPORT_THE_LOSS_COUNT	0xFF

#define LENGTH_PROJECT_PASSWORD			0x06
#define REPORT_THE_LOSS_COUNT			0x2C // 最多支持44个卡号挂失

#define SCL_TRIS		(TRISCbits.TRISC3)
#define SCL				RC3

#define SDA_TRIS		(TRISCbits.TRISC4)
#define SDA				RC4

//**--------------数据结构-----------------------------------------------------

//**--------------函数申明-----------------------------------------------------
void
init_i2c(
	void
	);
	
void
write_24c02(
	BYTE address,
	BYTE data
	);

BYTE
read_24c02(
	BYTE address
	);

BYTE
read_eeprom(
	BYTE address
	); // 读EEPROM

//**--------------全局变量-----------------------------------------------------


#endif // _AJ_24C02_H

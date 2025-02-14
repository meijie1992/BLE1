/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: ds1302.h
** 创   建   人: 宋志康
** 版        本: V0.2
** 最后修改日期: 2016-05-31
** 描        述: 实时时钟芯片ds1302驱动
**
**--------------历史版本信息---------------------------------------------------
** 创   建   人: 宋志康
** 版  	     本: V0.2
** 日　      期: 2016-05-31
** 描　      述: 实时时钟芯片ds1302驱动

** 修   订   人 : 
** 版  	     本 : 
** 修订    日期 : 
** 描　      述 : 
**-----------------------------------------------------------------------------
*******************************************************************************/
#ifndef _AJ_DS1302_H
#define _AJ_DS1302_H

//**--------------包含文件-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------
#define RTC_RST_TRIS		(TRISCbits.TRISC0)
#define RTC_RST_IO			(RC0)

#define RTC_SCL_TRIS		(TRISCbits.TRISC2)
#define RTC_SCL_IO			(RC2)

#define RTC_SDA_TRIS		(TRISCbits.TRISC1)
#define RTC_SDA_IN			(RC1)
#define RTC_SDA_OUT			(RC1)

//**---DS1302时钟寄存器操作命令码定义
#define	DS1302_SEC_REG_WR			0x80 // DS1302的秒寄存器写命令
#define	DS1302_SEC_REG_RD			0x81 // DS1302的秒寄存器读命令
#define	DS1302_MIN_REG_WR			0x82 // DS1302的分寄存器写命令
#define	DS1302_MIN_REG_RD			0x83 // DS1302的分寄存器读命令
#define	DS1302_HOUR_REG_WR			0x84 // DS1302的时寄存器写命令
#define	DS1302_HOUR_REG_RD			0x85 // DS1302的时寄存器读命令
#define	DS1302_DATA_REG_WR			0x86 // DS1302的日寄存器写命令
#define	DS1302_DATA_REG_RD			0x87 // DS1302的日寄存器读命令
#define	DS1302_MONTH_REG_WR			0x88 // DS1302的月寄存器写命令
#define	DS1302_MONTH_REG_RD			0x89 // DS1302的月寄存器读命令
#define	DS1302_WEEK_REG_WR			0x8A // DS1302的周寄存器写命令
#define	DS1302_WEEK_REG_RD			0x8B // DS1302的周寄存器读命令
#define	DS1302_YEAR_REG_WR			0x8C // DS1302的年寄存器写命令
#define	DS1302_YEAR_REG_RD			0x8D // DS1302的年寄存器读命令

#define	DS1302_CONTROL_REG_WR		0x8E // DS1302的控制寄存器写命令
#define	DS1302_CONTROL_REG_RD		0x8F // DS1302的控制寄存器读命令


#define DEFAULT_RTC_YEAR 	0x08
#define DEFAULT_RTC_MONTH 	0x08
#define DEFAULT_RTC_DAY 	0x08
#define DEFAULT_RTC_HOUR 	0x08
#define DEFAULT_RTC_MINUTE 	0x08
#define DEFAULT_RTC_SECOND  0x08
#define DEFAULT_RTC_WEEK	0x01


//**--------------数据结构-----------------------------------------------------

//**--------------函数申明-----------------------------------------------------
void
init_ds1302(
	void
	); // ds1302初始化
	
void
ds1302_get_time(
	void
	); // 获取当前DS1302内部时间,获取后的时钟信息存放在time结构体中
	
void
ds1302_set_time(
	void
	); // 要设置的时间值已存储在time中
	
BYTE
ds1302_read(
	BYTE address
	);

void
ds1302_write(
	BYTE address,
	BYTE data
	);
		
//**--------------全局变量-----------------------------------------------------
extern BYTE day, month, year, hour, minute, second, week;

#endif // _AJ_DS1302_H

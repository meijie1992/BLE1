/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: ds1302.c
** 创   建   人: 宋志康
** 版        本: V0.2
** 最后修改日期: 2016-05-31
** 描        述: 实时时钟芯片ds1302驱动实现
** 编        译: xc8
** 硬        件: aj-b-dk-g-v2 2015-10-21
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

#include "delay.h"
#include "ds1302.h"

//**--------------全局变量-----------------------------------------------------
BYTE day, month, year, hour, minute, second, week;

//**--------------函数申明-----------------------------------------------------



//**--------------函数定义-----------------------------------------------------
void
init_ds1302(
	void
	) // ds1302初始化
{
	RTC_RST_IO = 0x00;
	RTC_SCL_IO = 0x01;
	RTC_SDA_OUT = 0x01;
	RTC_RST_TRIS = 0x00; // 输出
	RTC_SCL_TRIS = 0x00; // 输出
	RTC_SDA_TRIS = 0x00; // 输出
	
	
	year 	= DEFAULT_RTC_YEAR;
	month 	= DEFAULT_RTC_MONTH;
	day 	= DEFAULT_RTC_DAY;
	hour 	= DEFAULT_RTC_HOUR;
	minute  = DEFAULT_RTC_MINUTE;
	second  = DEFAULT_RTC_SECOND;
	week = DEFAULT_RTC_WEEK;
}

void
ds1302_write_byte(
	BYTE data
	)
{
	BYTE i;

    for (i = 8; i > 0; i--)
	{
		if (data & 0x01)
		{
			RTC_SDA_OUT = 0x01; // SDA = 1
		  	NOP(); // 1us
			NOP(); // 1us
	  	}
	  	else
	  	{
	     	RTC_SDA_OUT = 0x00; // SDA = 0
		  	NOP(); // 1us
			NOP(); // 1us
	  	}
	  	RTC_SCL_IO = 0x00; // SCLK = 0
	  	NOP(); // 1us
		NOP(); // 1us
	  	RTC_SCL_IO = 0x01; // SCLK = 1
	  	NOP(); // 1us
		NOP(); // 1us
      	data = data >> 1;
	}
}

BYTE
ds1302_read_byte(
	void
	)
{
	BYTE i, data = 0x00;
	
   	RTC_SDA_TRIS = 0x01; // 设置SDA线方向为输入
   	for (i = 0x00; i < 0x08; i++)
   	{
   		data = data >> 0x01;
		RTC_SCL_IO = 0x01;
	  	NOP(); // 1us
		NOP(); // 1us
	  	RTC_SCL_IO = 0x00;
	  	NOP(); // 1us
		NOP(); // 1us
	  	if (RTC_SDA_IN)
	  	{
	    	data = data | 0x80;
	  	}
   	}
   	RTC_SDA_TRIS = 0x00; // 设置SDA线方向为输出
   	
   	return data;
}

BYTE
ds1302_read(
	BYTE address
	)
{
	BYTE temp;
	
	RTC_RST_IO = 0x00; // 停止工作
    NOP(); // 1us
	NOP(); // 1us
    RTC_SCL_IO = 0x00;
    NOP(); // 1us
	NOP(); // 1us
    RTC_RST_IO = 0x01; // 重新工作   
    NOP(); // 1us
	NOP(); // 1us
    ds1302_write_byte(address); // 写入地址
    temp = ds1302_read_byte();
    RTC_RST_IO = 0x00; // 停止工作      
    RTC_SCL_IO = 0x01;
    NOP(); // 1us
	NOP(); // 1us
    
    return temp;
}

void
ds1302_write(
	BYTE address,
	BYTE data
	)
{
    RTC_RST_IO = 0x00; // 停止工作
   	NOP(); // 1us
	NOP(); // 1us
    RTC_SCL_IO = 0x00;
   	NOP(); // 1us
	NOP(); // 1us
    RTC_RST_IO = 0x01; // 重新工作  
    NOP(); // 1us
	NOP(); // 1us
    ds1302_write_byte(address); // 写入地址
    ds1302_write_byte(data); // 写入数据
    RTC_RST_IO = 0x00; // 停止工作                      
    RTC_SCL_IO = 0x01;
   	NOP(); // 1us
	NOP(); // 1us
}

void
ds1302_get_time(
	void
	) // 获取当前DS1302内部时间,获取后的时钟信息存放在time结构体中
{
	year 	= ds1302_read(DS1302_YEAR_REG_RD);
	month 	= ds1302_read(DS1302_MONTH_REG_RD);
	day 	= ds1302_read(DS1302_DATA_REG_RD);
	hour 	= ds1302_read(DS1302_HOUR_REG_RD);
	hour 	&= 0x7F;
	minute = ds1302_read(DS1302_MIN_REG_RD);
	second = ds1302_read(DS1302_SEC_REG_RD);
	week = ds1302_read(DS1302_WEEK_REG_RD);
}

void
ds1302_set_time(
	void
	) // 要设置的时间值已存储在time中
{	
	// 打开DS1302写保护
	ds1302_write(DS1302_CONTROL_REG_WR, 0x00); // WP = 0 允许写操作
	
	// 设置DS1302的时间
	ds1302_write(DS1302_SEC_REG_WR, second & 0x7F); // 设置秒
	ds1302_write(DS1302_MIN_REG_WR, minute ); // 设置分
	ds1302_write(DS1302_HOUR_REG_WR, hour & 0x3F); // 设置时
	ds1302_write(DS1302_DATA_REG_WR, day); // 设置日
	ds1302_write(DS1302_MONTH_REG_WR, month); // 设置月
	ds1302_write(DS1302_YEAR_REG_WR, year); // 设置年
	ds1302_write(DS1302_WEEK_REG_WR, week); // 设置周

	// 关闭DS1302写保护
	ds1302_write(DS1302_CONTROL_REG_WR, 0x80); // WP = 1 禁止写操作
}

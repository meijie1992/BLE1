/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: 24c02.c
** 创   建   人: 宋志康
** 版        本: V0.3
** 最后修改日期: 2016-08-30
** 描        述: 使用I/O软件模式i2c
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

#include "delay.h"
#include "24c02.h"

//**--------------全局变量-----------------------------------------------------


//**--------------函数申明-----------------------------------------------------

//**--------------函数定义-----------------------------------------------------
__EEPROM_DATA (0x00,0x03,0x01,0xFF,0xFF,0xFF,0xFF,0xFF);

void
init_i2c(
	void
	) // 软件模拟i2c时序
{
	SCL_TRIS = 0x00; // 输出
	SDA_TRIS = 0x00; // 输出
	
	SCL = 0x01; // 默认高电平 总线空闲
	SDA = 0x01; // 默认高电平 总线空闲
}

void
start_i2c(
	void
	) // 产生起始位，SCL位高电平时，SDA由高变低
{
    SDA = 0x01; // 发送起始条件的数据信号
    NOP();
    SCL = 0x01;
    NOP();NOP();NOP();NOP();NOP();
    SDA = 0x00; // 发送起始信号
    NOP();NOP();NOP();NOP();NOP(); // 起始条件锁定时间大于4μs
    SCL = 0x00;
    NOP();NOP();
}

void
stop_i2c(
	void
	) // 产生停止位，SCL位高电平时，SDA由低变高
{
    SDA = 0x00;
    NOP();
	SCL = 0x01;
	NOP();NOP();NOP();NOP();NOP();
    SDA = 0x01; // 发送I2C总线结束信号
    NOP();NOP();NOP();NOP();
}

BYTE
rece_byte(
	void
	)
{
   	BYTE i = 0x00;
 	BYTE read_data = 0x00;
	
	SDA_TRIS = 0x01; // 输入
   	for (i = 0x00; i < 0x08; i++)
   	{
		NOP();NOP();NOP();
   		SCL = 0x01;
   		NOP();NOP();
   		read_data <<= 0x01;
		if (SDA == 0x01)
		{
			read_data = read_data + 0x01;	
		}
		NOP();
		SCL = 0x00;
   	}
	SDA_TRIS = 0x00; // 输出
	return read_data;
}

void
send_byte(
	BYTE write_data
	)
{
	BYTE i;

	for (i = 0x00; i < 0x08; i++)
	{
		if (write_data & 0x80)
		{
			SDA = 0x01;
		}
		else
		{
			SDA = 0x00;
		}
		NOP();
		SCL = 0x01;
		NOP();NOP();NOP();NOP();NOP();
		SCL = 0x00;
		NOP();
		write_data <<= 0x01;
	}
	NOP();NOP();
	SDA = 0x01;
	NOP();NOP();
	SCL = 0x01;
	NOP();NOP();NOP();
	SCL = 0x00;
	NOP();NOP();
}

void
write_24c02(
	BYTE address,
	BYTE data
	) // 字节写
{
	start_i2c();
	send_byte(0xA0);
	send_byte(address);
	send_byte(data);
	stop_i2c();
	delay_ms(0x05); // 必须延时20ms
}

BYTE
read_24c02(
	BYTE address
	)
{
	BYTE data = 0x00;

	start_i2c();
	send_byte(0xa0);
	send_byte(address);
	start_i2c();
	send_byte(0xa1);
	data = rece_byte();
	stop_i2c();
	
	return data;
}

BYTE
read_eeprom(
	BYTE address
	) // 读EEPROM
{
	GIE = 0x00;
	EEADR = address;
	EEPGD = 0x00;
	RD = 0x01;
	GIE = 0x01;
	
	return EEDATA;    //直接返回读取的EEPROM
}
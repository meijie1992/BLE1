/******************************************************************************
**                           �Ͼ�������Ϣ�Ƽ����޹�˾
**
**                           http://www.njanjar.com
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��: ds1302.c
** ��   ��   ��: ��־��
** ��        ��: V0.2
** ����޸�����: 2016-05-31
** ��        ��: ʵʱʱ��оƬds1302����ʵ��
** ��        ��: xc8
** Ӳ        ��: aj-b-dk-g-v2 2015-10-21
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

#include "delay.h"
#include "ds1302.h"

//**--------------ȫ�ֱ���-----------------------------------------------------
BYTE day, month, year, hour, minute, second, week;

//**--------------��������-----------------------------------------------------



//**--------------��������-----------------------------------------------------
void
init_ds1302(
	void
	) // ds1302��ʼ��
{
	RTC_RST_IO = 0x00;
	RTC_SCL_IO = 0x01;
	RTC_SDA_OUT = 0x01;
	RTC_RST_TRIS = 0x00; // ���
	RTC_SCL_TRIS = 0x00; // ���
	RTC_SDA_TRIS = 0x00; // ���
	
	
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
	
   	RTC_SDA_TRIS = 0x01; // ����SDA�߷���Ϊ����
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
   	RTC_SDA_TRIS = 0x00; // ����SDA�߷���Ϊ���
   	
   	return data;
}

BYTE
ds1302_read(
	BYTE address
	)
{
	BYTE temp;
	
	RTC_RST_IO = 0x00; // ֹͣ����
    NOP(); // 1us
	NOP(); // 1us
    RTC_SCL_IO = 0x00;
    NOP(); // 1us
	NOP(); // 1us
    RTC_RST_IO = 0x01; // ���¹���   
    NOP(); // 1us
	NOP(); // 1us
    ds1302_write_byte(address); // д���ַ
    temp = ds1302_read_byte();
    RTC_RST_IO = 0x00; // ֹͣ����      
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
    RTC_RST_IO = 0x00; // ֹͣ����
   	NOP(); // 1us
	NOP(); // 1us
    RTC_SCL_IO = 0x00;
   	NOP(); // 1us
	NOP(); // 1us
    RTC_RST_IO = 0x01; // ���¹���  
    NOP(); // 1us
	NOP(); // 1us
    ds1302_write_byte(address); // д���ַ
    ds1302_write_byte(data); // д������
    RTC_RST_IO = 0x00; // ֹͣ����                      
    RTC_SCL_IO = 0x01;
   	NOP(); // 1us
	NOP(); // 1us
}

void
ds1302_get_time(
	void
	) // ��ȡ��ǰDS1302�ڲ�ʱ��,��ȡ���ʱ����Ϣ�����time�ṹ����
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
	) // Ҫ���õ�ʱ��ֵ�Ѵ洢��time��
{	
	// ��DS1302д����
	ds1302_write(DS1302_CONTROL_REG_WR, 0x00); // WP = 0 ����д����
	
	// ����DS1302��ʱ��
	ds1302_write(DS1302_SEC_REG_WR, second & 0x7F); // ������
	ds1302_write(DS1302_MIN_REG_WR, minute ); // ���÷�
	ds1302_write(DS1302_HOUR_REG_WR, hour & 0x3F); // ����ʱ
	ds1302_write(DS1302_DATA_REG_WR, day); // ������
	ds1302_write(DS1302_MONTH_REG_WR, month); // ������
	ds1302_write(DS1302_YEAR_REG_WR, year); // ������
	ds1302_write(DS1302_WEEK_REG_WR, week); // ������

	// �ر�DS1302д����
	ds1302_write(DS1302_CONTROL_REG_WR, 0x80); // WP = 1 ��ֹд����
}

/******************************************************************************
**                           �Ͼ�������Ϣ�Ƽ����޹�˾
**
**                           http://www.njanjar.com
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��: 24c02.c
** ��   ��   ��: ��־��
** ��        ��: V0.3
** ����޸�����: 2016-08-30
** ��        ��: ʹ��I/O���ģʽi2c
** ��        ��: xc8
** Ӳ        ��: aj-b-dk-g-v3 2016-6-23
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
#include "24c02.h"

//**--------------ȫ�ֱ���-----------------------------------------------------


//**--------------��������-----------------------------------------------------

//**--------------��������-----------------------------------------------------
__EEPROM_DATA (0x00,0x03,0x01,0xFF,0xFF,0xFF,0xFF,0xFF);

void
init_i2c(
	void
	) // ���ģ��i2cʱ��
{
	SCL_TRIS = 0x00; // ���
	SDA_TRIS = 0x00; // ���
	
	SCL = 0x01; // Ĭ�ϸߵ�ƽ ���߿���
	SDA = 0x01; // Ĭ�ϸߵ�ƽ ���߿���
}

void
start_i2c(
	void
	) // ������ʼλ��SCLλ�ߵ�ƽʱ��SDA�ɸ߱��
{
    SDA = 0x01; // ������ʼ�����������ź�
    NOP();
    SCL = 0x01;
    NOP();NOP();NOP();NOP();NOP();
    SDA = 0x00; // ������ʼ�ź�
    NOP();NOP();NOP();NOP();NOP(); // ��ʼ��������ʱ�����4��s
    SCL = 0x00;
    NOP();NOP();
}

void
stop_i2c(
	void
	) // ����ֹͣλ��SCLλ�ߵ�ƽʱ��SDA�ɵͱ��
{
    SDA = 0x00;
    NOP();
	SCL = 0x01;
	NOP();NOP();NOP();NOP();NOP();
    SDA = 0x01; // ����I2C���߽����ź�
    NOP();NOP();NOP();NOP();
}

BYTE
rece_byte(
	void
	)
{
   	BYTE i = 0x00;
 	BYTE read_data = 0x00;
	
	SDA_TRIS = 0x01; // ����
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
	SDA_TRIS = 0x00; // ���
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
	) // �ֽ�д
{
	start_i2c();
	send_byte(0xA0);
	send_byte(address);
	send_byte(data);
	stop_i2c();
	delay_ms(0x05); // ������ʱ20ms
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
	) // ��EEPROM
{
	GIE = 0x00;
	EEADR = address;
	EEPGD = 0x00;
	RD = 0x01;
	GIE = 0x01;
	
	return EEDATA;    //ֱ�ӷ��ض�ȡ��EEPROM
}
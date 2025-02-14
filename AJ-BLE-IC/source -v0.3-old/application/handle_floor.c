/******************************************************************************
**                           �Ͼ�������Ϣ�Ƽ����޹�˾
**
**                           http://www.njanjar.com
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��: handle_floor.c
** ��   ��   ��: ��־��
** ��        ��: V0.3
** ����޸�����: 2016-08-30
** ��        ��: ��KS280¥�������ͨѶ
** ��        ��: xc8
** Ӳ        ��: aj-b-dk-g-v3 2016-6-23 PIC16F1947
**
**--------------��ʷ�汾��Ϣ---------------------------------------------------
** ��   ��   ��: 
** ��  	     ��: 
** �ա�      ��: 
** �衡      ��: 
**-----------------------------------------------------------------------------
*******************************************************************************/

//**--------------ͷ�ļ�-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include "delay.h"
#include "uart.h"

//**--------------ȫ�ֱ���-----------------------------------------------------

//**--------------��������-----------------------------------------------------

//**--------------��������-----------------------------------------------------
void
deal_floor(
	BYTE *data
	)
{
	BYTE i, floor[8];
	
	for (i = 0; i < 0x08; i++)
	{
		floor[i] = data[i + 6];
	}
	
	// ˢ������
	if ((floor[0] == 0x01 || floor[0] == 0x02 || floor[0] == 0x04 || floor[0] == 0x08 ||
	     floor[0] == 0x10 || floor[0] == 0x20 || floor[0] == 0x40 || floor[0] == 0x80) && 
	     floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && 
	     floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	{
		switch (floor[0])
		{
			case 0x01: uart1_send_byte(0x01); break; // 1¥
			case 0x02: uart1_send_byte(0x02); break; // 2¥ 	
			case 0x04: uart1_send_byte(0x04); break; // 3¥
			case 0x08: uart1_send_byte(0x08); break; // 4¥
			case 0x10: uart1_send_byte(0x11); break; // 5¥
			case 0x20: uart1_send_byte(0x12); break; // 6¥
			case 0x40: uart1_send_byte(0x14); break; // 7¥
			case 0x80: uart1_send_byte(0x18); break; // 8¥
			default : break;
		}	
	}
	else if (floor[0] == 0x00 && 
			(floor[1] == 0x01 || floor[1] == 0x02 || floor[1] == 0x04 || floor[1] == 0x08 || 
			 floor[1] == 0x10 || floor[1] == 0x20 || floor[1] == 0x40 || floor[1] == 0x80) && 
			 floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	{
		switch (floor[1])
		{
			case 0x01: uart1_send_byte(0x01 + 0x20); break; // 9¥
			case 0x02: uart1_send_byte(0x02 + 0x20); break; // 10¥		
			case 0x04: uart1_send_byte(0x04 + 0x20); break; // 11¥
			case 0x08: uart1_send_byte(0x08 + 0x20); break; // 12¥
			case 0x10: uart1_send_byte(0x11 + 0x20); break; // 13¥
			case 0x20: uart1_send_byte(0x12 + 0x20); break; // 14¥
			case 0x40: uart1_send_byte(0x14 + 0x20); break; // 15¥
			case 0x80: uart1_send_byte(0x18 + 0x20); break; // 16¥
			default : break;
		}
	}
	else if (floor[0] == 0x00 && floor[1] == 0x00 && 
	        (floor[2] == 0x01 || floor[2] == 0x02 || floor[2] == 0x04 || floor[2] == 0x08 || 
	         floor[2] == 0x10 || floor[2] == 0x20 || floor[2] == 0x40 || floor[2] == 0x80) && 
	         floor[3] == 0x00 && floor[4] == 0x00 && floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	{
		switch (floor[2])
		{
			case 0x01: uart1_send_byte(0x01 + 0x40); break; // 17¥
			case 0x02: uart1_send_byte(0x02 + 0x40); break; // 18¥		
			case 0x04: uart1_send_byte(0x04 + 0x40); break; // 19¥
			case 0x08: uart1_send_byte(0x08 + 0x40); break; // 20¥
			case 0x10: uart1_send_byte(0x11 + 0x40); break; // 21¥
			case 0x20: uart1_send_byte(0x12 + 0x40); break; // 22¥
			case 0x40: uart1_send_byte(0x14 + 0x40); break; // 23¥
			case 0x80: uart1_send_byte(0x18 + 0x40); break; // 24¥
			default : break;
		}
	}
	else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && 
	        (floor[3] == 0x01 || floor[3] == 0x02 || floor[3] == 0x04 || floor[3] == 0x08 ||
	         floor[3] == 0x10 || floor[3] == 0x20 || floor[3] == 0x40 || floor[3] == 0x80) 
	        && floor[4] == 0x00 && floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	{
		switch (floor[3])
		{
			case 0x01: uart1_send_byte(0x01 + 0x60); break; // 25¥
			case 0x02: uart1_send_byte(0x02 + 0x60); break; // 26¥		
			case 0x04: uart1_send_byte(0x04 + 0x60); break; // 27¥
			case 0x08: uart1_send_byte(0x08 + 0x60); break; // 28¥
			case 0x10: uart1_send_byte(0x11 + 0x60); break; // 29¥
			case 0x20: uart1_send_byte(0x12 + 0x60); break; // 30¥
			case 0x40: uart1_send_byte(0x14 + 0x60); break; // 31¥
			case 0x80: uart1_send_byte(0x18 + 0x60); break; // 32¥
			default : break;
		}
	}
	else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && 
	        (floor[4] == 0x01 || floor[4] == 0x02 || floor[4] == 0x04 || floor[4] == 0x08 ||
	         floor[4] == 0x10 || floor[4] == 0x20 || floor[4] == 0x40 || floor[4] == 0x80)
	        && floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	{
		switch (floor[4])
		{
			case 0x01: uart1_send_byte(0x01 + 0x80); break; // 33¥
			case 0x02: uart1_send_byte(0x02 + 0x80); break; // 34¥		
			case 0x04: uart1_send_byte(0x04 + 0x80); break; // 35¥
			case 0x08: uart1_send_byte(0x08 + 0x80); break; // 36¥
			case 0x10: uart1_send_byte(0x11 + 0x80); break; // 37¥
			case 0x20: uart1_send_byte(0x12 + 0x80); break; // 38¥
			case 0x40: uart1_send_byte(0x14 + 0x80); break; // 39¥
			case 0x80: uart1_send_byte(0x18 + 0x80); break; // 40¥
			default : break;
		}
	}
	else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && 
	 		(floor[5] == 0x01 || floor[5] == 0x02 || floor[5] == 0x04 || floor[5] == 0x08 ||
	 		 floor[5] == 0x10 || floor[5] == 0x20 || floor[5] == 0x40 || floor[5] == 0x80) && 
	 		 floor[6] == 0x00 && floor[7] == 0x00)
	{
		switch (floor[5])
		{
			case 0x01: uart1_send_byte(0x01 + 0xA0); break; // 41¥
			case 0x02: uart1_send_byte(0x02 + 0xA0); break; // 42¥		
			case 0x04: uart1_send_byte(0x04 + 0xA0); break; // 43¥
			case 0x08: uart1_send_byte(0x08 + 0xA0); break; // 44¥
			case 0x10: uart1_send_byte(0x11 + 0xA0); break; // 45¥
			case 0x20: uart1_send_byte(0x12 + 0xA0); break; // 46¥
			case 0x40: uart1_send_byte(0x14 + 0xA0); break; // 47¥
			case 0x80: uart1_send_byte(0x18 + 0xA0); break; // 48¥
			default : break;
		}
	}
	else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && floor[5] == 0x00 && 
	 		(floor[6] == 0x01 || floor[6] == 0x02 || floor[6] == 0x04 || floor[6] == 0x08 ||
	 		 floor[6] == 0x10 || floor[6] == 0x20 || floor[6] == 0x40 || floor[6] == 0x80) && 
	 		 floor[7] == 0x00)
	{
		switch (floor[6])
		{
			case 0x01: uart1_send_byte(0x01 + 0xC0); break; // 49¥
			case 0x02: uart1_send_byte(0x02 + 0xC0); break; // 50¥		
			case 0x04: uart1_send_byte(0x04 + 0xC0); break; // 51¥
			case 0x08: uart1_send_byte(0x08 + 0xC0); break; // 52¥
			case 0x10: uart1_send_byte(0x11 + 0xC0); break; // 53¥
			case 0x20: uart1_send_byte(0x12 + 0xC0); break; // 54¥
			case 0x40: uart1_send_byte(0x14 + 0xC0); break; // 55¥
			case 0x80: uart1_send_byte(0x18 + 0xC0); break; // 56¥
			default : break;
		}
	}
	else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && floor[5] == 0x00 && floor[6] == 0x00 && 
	        (floor[7] == 0x01 || floor[7] == 0x02 || floor[7] == 0x04 || floor[7] == 0x08 ||
	         floor[7] == 0x10 || floor[7] == 0x20 || floor[7] == 0x40 || floor[7] == 0x80))
	{
		switch (floor[7])
		{
			case 0x01: uart1_send_byte(0x01 + 0xE0); break; // 57¥
			case 0x02: uart1_send_byte(0x02 + 0xE0); break; // 58¥		
			case 0x04: uart1_send_byte(0x04 + 0xE0); break; // 59¥
			case 0x08: uart1_send_byte(0x08 + 0xE0); break; // 60¥
			case 0x10: uart1_send_byte(0x11 + 0xE0); break; // 61¥
			case 0x20: uart1_send_byte(0x12 + 0xE0); break; // 62¥
			case 0x40: uart1_send_byte(0x14 + 0xE0); break; // 63¥
			case 0x80: uart1_send_byte(0x18 + 0xE0); break; // 64¥
			default : break;
		}
	}
	else // ˢ���ɰ�
	{
		if (floor[0] & 0x01) // floor[0]
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x01);
			delay_ms(150);
		}
		if (floor[0] & 0x02)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x02);
			delay_ms(150);
		}
		if (floor[0] & 0x04)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x04);
			delay_ms(150);
		}
		if (floor[0] & 0x08)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x08);
			delay_ms(150);
		}
		if (floor[0] & 0x10)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x11);
			delay_ms(150);
		}
		if (floor[0] & 0x20)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x12);
			delay_ms(150);
		}
		if (floor[0] & 0x40)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x14);
			delay_ms(150);
		}
		if (floor[0] & 0x80)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x18);
			delay_ms(150);
		}
		
		if (floor[1] & 0x01) // floor[1]
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x21);
			delay_ms(150);
		}
		if (floor[1] & 0x02)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x22);
			delay_ms(150);
		}
		if (floor[1] & 0x04)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x24);
			delay_ms(150);
		}
		if (floor[1] & 0x08)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x28);
			delay_ms(150);
		}
		if (floor[1] & 0x10)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x31);
			delay_ms(150);
		}
		if (floor[1] & 0x20)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x32);
			delay_ms(150);
		}
		if (floor[1] & 0x40)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x34);
			delay_ms(150);
		}
		if (floor[1] & 0x80)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x38);
			delay_ms(150);
		}
		
		if (floor[2] & 0x01) // floor[2]
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x41);
			delay_ms(150);
		}
		if (floor[2] & 0x02)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x42);
			delay_ms(150);
		}
		if (floor[2] & 0x04)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x44);
			delay_ms(150);
		}
		if (floor[2] & 0x08)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x48);
			delay_ms(150);
		}
		if (floor[2] & 0x10)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x51);
			delay_ms(150);
		}
		if (floor[2] & 0x20)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x52);
			delay_ms(150);
		}
		if (floor[2] & 0x40)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x54);
			delay_ms(150);
		}
		if (floor[2] & 0x80)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x58);
			delay_ms(150);
		}
		
		if (floor[3] & 0x01) // floor[3]
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x61);
			delay_ms(150);
		}
		if (floor[3] & 0x02)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x62);
			delay_ms(150);
		}
		if (floor[3] & 0x04)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x64);
			delay_ms(150);
		}
		if (floor[3] & 0x08)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x68);
			delay_ms(150);
		}
		if (floor[3] & 0x10)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x71);
			delay_ms(150);
		}
		if (floor[3] & 0x20)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x72);
			delay_ms(150);
		}
		if (floor[3] & 0x40)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x74);
			delay_ms(150);
		}
		if (floor[3] & 0x80)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x78);
			delay_ms(150);
		}
		
		if (floor[4] & 0x01) // floor[4]
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x81);
			delay_ms(150);
		}
		if (floor[4] & 0x02)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x82);
			delay_ms(150);
		}
		if (floor[4] & 0x04)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x84);
			delay_ms(150);
		}
		if (floor[4] & 0x08)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x88);
			delay_ms(150);
		}
		if (floor[4] & 0x10)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x91);
			delay_ms(150);
		}
		if (floor[4] & 0x20)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x92);
			delay_ms(150);
		}
		if (floor[4] & 0x40)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x94);
			delay_ms(150);
		}
		if (floor[4] & 0x80)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0x98);
			delay_ms(150);
		}
		
		if (floor[5] & 0x01) // floor[5]
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xA1);
			delay_ms(150);
		}
		if (floor[5] & 0x02)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xA2);
			delay_ms(150);
		}
		if (floor[5] & 0x04)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xA4);
			delay_ms(150);
		}
		if (floor[5] & 0x08)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xA8);
			delay_ms(150);
		}
		if (floor[5] & 0x10)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xB1);
			delay_ms(150);
		}
		if (floor[5] & 0x20)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xB2);
			delay_ms(150);
		}
		if (floor[5] & 0x40)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xB4);
			delay_ms(150);
		}
		if (floor[5] & 0x80)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xB8);
			delay_ms(150);
		}
		
		if (floor[6] & 0x01) // floor[6]
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xC1);
			delay_ms(150);
		}
		if (floor[6] & 0x02)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xC2);
			delay_ms(150);
		}
		if (floor[6] & 0x04)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xC4);
			delay_ms(150);
		}
		if (floor[6] & 0x08)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xC8);
			delay_ms(150);
		}
		if (floor[6] & 0x10)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xD1);
			delay_ms(150);
		}
		if (floor[6] & 0x20)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xD2);
			delay_ms(150);
		}
		if (floor[6] & 0x40)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xD4);
			delay_ms(150);
		}
		if (floor[6] & 0x80)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xD8);
			delay_ms(150);
		}
		
		if (floor[7] & 0x01) // floor[7]
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xE1);
			delay_ms(150);
		}
		if (floor[7] & 0x02)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xE2);
			delay_ms(150);
		}
		if (floor[7] & 0x04)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xE4);
			delay_ms(150);
		}
		if (floor[7] & 0x08)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xE8);
			delay_ms(150);
		}
		if (floor[7] & 0x10)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xF1);
			delay_ms(150);
		}
		if (floor[7] & 0x20)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xF2);
			delay_ms(150);
		}
		if (floor[7] & 0x40)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xF4);
			delay_ms(150);
		}
		if (floor[7] & 0x80)
		{
			uart1_send_byte(0xF0);
			uart1_send_byte(0xF1);
			uart1_send_byte(0xF8);
			delay_ms(150);
		}
	}
}	
/*
void
deal_floor(
	BYTE *data
	)
{
	BYTE i, floor[8], ttl_send_buffer[8];
	
	for (i = 0; i < 0x08; i++)
	{
		ttl_send_buffer[i] = 0x00;
	}
	
	for (i = 0; i < 0x08; i++)
	{
		floor[i] = data[i + 6];
		//uart1_send_byte(floor[i]);
	}
	
	// ˢ������
	if ((floor[0] == 0x01 || floor[0] == 0x02 || floor[0] == 0x04 || floor[0] == 0x08 ||
	     floor[0] == 0x10 || floor[0] == 0x20 || floor[0] == 0x40 || floor[0] == 0x80) && 
	     floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && 
	     floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	{
		switch (floor[0])
		{
			case 0x01: 
				ttl_send_buffer[0] = 0x01;
				break;
			case 0x02: 
				ttl_send_buffer[0] = 0x02;
				break;
			case 0x04: 
				ttl_send_buffer[0] = 0x04;
				break;
			case 0x08: 
				ttl_send_buffer[0] = 0x08;
				break;
			case 0x10: 
				ttl_send_buffer[0] = 0x11;
				break;
			case 0x20: 
				ttl_send_buffer[0] = 0x12;
				break;
			case 0x40: 
				ttl_send_buffer[0] = 0x14;
				break;
			case 0x80: 
				ttl_send_buffer[0] = 0x18;
				break;
			default : break;
		}
		handle_ttl_protocol(0xA0, ttl_send_buffer);
	}
	else if (floor[0] == 0x00 && 
			(floor[1] == 0x01 || floor[1] == 0x02 || floor[1] == 0x04 || floor[1] == 0x08 || 
			 floor[1] == 0x10 || floor[1] == 0x20 || floor[1] == 0x40 || floor[1] == 0x80) && 
			 floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	{
		switch (floor[1])
		{
			case 0x01:
				ttl_send_buffer[0] = 0x01 + 0x20;
				break;
			case 0x02:
				ttl_send_buffer[0] = 0x02 + 0x20;
				break;
			case 0x04:
				ttl_send_buffer[0] = 0x04 + 0x20;
				break;
			case 0x08: 
				ttl_send_buffer[0] = 0x08 + 0x20;
				break;
			case 0x10: 
				ttl_send_buffer[0] = 0x11 + 0x20;
				break;
			case 0x20: 
				ttl_send_buffer[0] = 0x12 + 0x20;
				break;
			case 0x40: 
				ttl_send_buffer[0] = 0x14 + 0x20;
				break;
			case 0x80: 
				ttl_send_buffer[0] = 0x18 + 0x20;
				break;
			default : break;
		}
		handle_ttl_protocol(0xA0, ttl_send_buffer);
	}
	else if (floor[0] == 0x00 && floor[1] == 0x00 && 
	        (floor[2] == 0x01 || floor[2] == 0x02 || floor[2] == 0x04 || floor[2] == 0x08 || 
	         floor[2] == 0x10 || floor[2] == 0x20 || floor[2] == 0x40 || floor[2] == 0x80) && 
	         floor[3] == 0x00 && floor[4] == 0x00 && floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	{
		switch (floor[2])
		{
			case 0x01: 
				ttl_send_buffer[0] = 0x01 + 0x40;
				break;
			case 0x02: 
				ttl_send_buffer[0] = 0x02 + 0x40;
				break;
			case 0x04:
				ttl_send_buffer[0] = 0x04 + 0x40;
				break;
			case 0x08:
				ttl_send_buffer[0] = 0x08 + 0x40;
				break;
			case 0x10: 
				ttl_send_buffer[0] = 0x11 + 0x40;
				break;
			case 0x20:
				ttl_send_buffer[0] = 0x12 + 0x40;
				break;
			case 0x40:
				ttl_send_buffer[0] = 0x14 + 0x40;
				break;
			case 0x80:
				ttl_send_buffer[0] = 0x18 + 0x40;
				break;
			default : break;
		}
		handle_ttl_protocol(0xA0, ttl_send_buffer);
	}
	else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && 
	        (floor[3] == 0x01 || floor[3] == 0x02 || floor[3] == 0x04 || floor[3] == 0x08 ||
	         floor[3] == 0x10 || floor[3] == 0x20 || floor[3] == 0x40 || floor[3] == 0x80) 
	        && floor[4] == 0x00 && floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	{
		switch (floor[3])
		{
			case 0x01: 
				ttl_send_buffer[0] = 0x01 + 0x60;
				break;
			case 0x02:
				ttl_send_buffer[0] = 0x02 + 0x60;
				break;
			case 0x04:
				ttl_send_buffer[0] = 0x04 + 0x60;
				break;
			case 0x08:
				ttl_send_buffer[0] = 0x08 + 0x60;
				break;
			case 0x10:
				ttl_send_buffer[0] = 0x11 + 0x60;
				break;
			case 0x20:
				ttl_send_buffer[0] = 0x12 + 0x60;
				break;
			case 0x40:
				ttl_send_buffer[0] = 0x14 + 0x60;
				break;
			case 0x80:
				ttl_send_buffer[0] = 0x18 + 0x60;
				break;
			default : break;
		}
		handle_ttl_protocol(0xA0, ttl_send_buffer);
	}
	else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && 
	        (floor[4] == 0x01 || floor[4] == 0x02 || floor[4] == 0x04 || floor[4] == 0x08 ||
	         floor[4] == 0x10 || floor[4] == 0x20 || floor[4] == 0x40 || floor[4] == 0x80)
	        && floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	{
		switch (floor[4])
		{
			case 0x01: 
				ttl_send_buffer[0] = 0x01 + 0x80;
				break;
			case 0x02:
				ttl_send_buffer[0] = 0x02 + 0x80;
				break;
			case 0x04:
				ttl_send_buffer[0] = 0x04 + 0x80;
				break;
			case 0x08:
				ttl_send_buffer[0] = 0x08 + 0x80;
				break;
			case 0x10:
				ttl_send_buffer[0] = 0x11 + 0x80;
				break;
			case 0x20:
				ttl_send_buffer[0] = 0x12 + 0x80;
				break;
			case 0x40:
				ttl_send_buffer[0] = 0x14 + 0x80;
				break;
			case 0x80:
				ttl_send_buffer[0] = 0x18 + 0x80;
				break;
			default : break;
		}
		handle_ttl_protocol(0xA0, ttl_send_buffer);
	}
	else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && 
	 		(floor[5] == 0x01 || floor[5] == 0x02 || floor[5] == 0x04 || floor[5] == 0x08 ||
	 		 floor[5] == 0x10 || floor[5] == 0x20 || floor[5] == 0x40 || floor[5] == 0x80) && 
	 		 floor[6] == 0x00 && floor[7] == 0x00)
	{
		switch (floor[5])
		{
			case 0x01: 
				ttl_send_buffer[0] = 0x01 + 0xA0;
				break;
			case 0x02: 
				ttl_send_buffer[0] = 0x02 + 0xA0;
				break;
			case 0x04:
				ttl_send_buffer[0] = 0x04 + 0xA0;
				break;
			case 0x08:
				ttl_send_buffer[0] = 0x08 + 0xA0;
				break;
			case 0x10:
				ttl_send_buffer[0] = 0x11 + 0xA0;
				break;
			case 0x20:
				ttl_send_buffer[0] = 0x12 + 0xA0;
				break;
			case 0x40:
				ttl_send_buffer[0] = 0x14 + 0xA0;
				break;
			case 0x80:
				ttl_send_buffer[0] = 0x18 + 0xA0;
				break;
			default : break;
		}
		handle_ttl_protocol(0xA0, ttl_send_buffer);
	}
	else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && floor[5] == 0x00 && 
	 		(floor[6] == 0x01 || floor[6] == 0x02 || floor[6] == 0x04 || floor[6] == 0x08 ||
	 		 floor[6] == 0x10 || floor[6] == 0x20 || floor[6] == 0x40 || floor[6] == 0x80) && 
	 		 floor[7] == 0x00)
	{
		switch (floor[6])
		{
			case 0x01: 
				ttl_send_buffer[0] = 0x01 + 0xC0;
				break;
			case 0x02: 
				ttl_send_buffer[0] = 0x02 + 0xC0;
				break;
			case 0x04:
				ttl_send_buffer[0] = 0x04 + 0xC0;
				break;
			case 0x08:
				ttl_send_buffer[0] = 0x08 + 0xC0;
				break;
			case 0x10:
				ttl_send_buffer[0] = 0x11 + 0xC0;
				break;
			case 0x20:
				ttl_send_buffer[0] = 0x12 + 0xC0;
				break;
			case 0x40:
				ttl_send_buffer[0] = 0x14 + 0xC0;
				break;
			case 0x80:
				ttl_send_buffer[0] = 0x18 + 0xC0;
				break;
			default : break;
		}
		handle_ttl_protocol(0xA0, ttl_send_buffer);
	}
	else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && floor[5] == 0x00 && floor[6] == 0x00 && 
	        (floor[7] == 0x01 || floor[7] == 0x02 || floor[7] == 0x04 || floor[7] == 0x08 ||
	         floor[7] == 0x10 || floor[7] == 0x20 || floor[7] == 0x40 || floor[7] == 0x80))
	{
		switch (floor[7])
		{
			case 0x01: 
				ttl_send_buffer[0] = 0x01 + 0xE0;
				break;
			case 0x02: 
				ttl_send_buffer[0] = 0x02 + 0xE0;
				break;
			case 0x04:
				ttl_send_buffer[0] = 0x04 + 0xE0;
				break;
			case 0x08:
				ttl_send_buffer[0] = 0x08 + 0xE0;
				break;
			case 0x10:
				ttl_send_buffer[0] = 0x11 + 0xE0;
				break;
			case 0x20:
				ttl_send_buffer[0] = 0x12 + 0xE0;
				break;
			case 0x40:
				ttl_send_buffer[0] = 0x14 + 0xE0;
				break;
			case 0x80:
				ttl_send_buffer[0] = 0x18 + 0xE0;
				break;
			default : break;
		}
		handle_ttl_protocol(0xA0, ttl_send_buffer);
	}
	else // ˢ���ɰ�
	{
		if (floor[0] & 0x01) // floor[0]
		{
			ttl_send_buffer[0] |= 0x01;
		}
		if (floor[0] & 0x02)
		{
			ttl_send_buffer[0] |= 0x02;
		}
		if (floor[0] & 0x04)
		{
			ttl_send_buffer[0] |= 0x04;
		}
		if (floor[0] & 0x08)
		{
			ttl_send_buffer[0] |= 0x08;
		}
		if (floor[0] & 0x10)
		{
			ttl_send_buffer[0] |= 0x10;
		}
		if (floor[0] & 0x20)
		{
			ttl_send_buffer[0] |= 0x20;
		}
		if (floor[0] & 0x40)
		{
			ttl_send_buffer[0] |= 0x40;
		}
		if (floor[0] & 0x80)
		{
			ttl_send_buffer[0] |= 0x80;
		}
		
		if (floor[1] & 0x01) // floor[1]
		{
			ttl_send_buffer[1] |= 0x01;
		}
		if (floor[1] & 0x02)
		{
			ttl_send_buffer[1] |= 0x02;
		}
		if (floor[1] & 0x04)
		{
			ttl_send_buffer[1] |= 0x04;
		}
		if (floor[1] & 0x08)
		{
			ttl_send_buffer[1] |= 0x08;
		}
		if (floor[1] & 0x10)
		{
			ttl_send_buffer[1] |= 0x10;
		}
		if (floor[1] & 0x20)
		{
			ttl_send_buffer[1] |= 0x20;
		}
		if (floor[1] & 0x40)
		{
			ttl_send_buffer[1] |= 0x40;
		}
		if (floor[1] & 0x80)
		{
			ttl_send_buffer[1] |= 0x80;
		}
		
		if (floor[2] & 0x01) // floor[2]
		{
			ttl_send_buffer[2] |= 0x01;
		}
		if (floor[2] & 0x02)
		{
			ttl_send_buffer[2] |= 0x02;
		}
		if (floor[2] & 0x04)
		{
			ttl_send_buffer[2] |= 0x04;
		}
		if (floor[2] & 0x08)
		{
			ttl_send_buffer[2] |= 0x08;
		}
		if (floor[2] & 0x10)
		{
			ttl_send_buffer[2] |= 0x10;
		}
		if (floor[2] & 0x20)
		{
			ttl_send_buffer[2] |= 0x20;
		}
		if (floor[2] & 0x40)
		{
			ttl_send_buffer[2] |= 0x40;
		}
		if (floor[2] & 0x80)
		{
			ttl_send_buffer[2] |= 0x80;
		}
		
		if (floor[3] & 0x01) // floor[3]
		{
			ttl_send_buffer[3] |= 0x01;
		}
		if (floor[3] & 0x02)
		{
			ttl_send_buffer[3] |= 0x02;
		}
		if (floor[3] & 0x04)
		{
			ttl_send_buffer[3] |= 0x04;
		}
		if (floor[3] & 0x08)
		{
			ttl_send_buffer[3] |= 0x08;
		}
		if (floor[3] & 0x10)
		{
			ttl_send_buffer[3] |= 0x10;
		}
		if (floor[3] & 0x20)
		{
			ttl_send_buffer[3] |= 0x20;
		}
		if (floor[3] & 0x40)
		{
			ttl_send_buffer[3] |= 0x40;
		}
		if (floor[3] & 0x80)
		{
			ttl_send_buffer[3] |= 0x80;
		}
		
		if (floor[4] & 0x01) // floor[4]
		{
			ttl_send_buffer[4] |= 0x01;
		}
		if (floor[4] & 0x02)
		{
			ttl_send_buffer[4] |= 0x02;
		}
		if (floor[4] & 0x04)
		{
			ttl_send_buffer[4] |= 0x04;
		}
		if (floor[4] & 0x08)
		{
			ttl_send_buffer[4] |= 0x08;
		}
		if (floor[4] & 0x10)
		{
			ttl_send_buffer[4] |= 0x10;
		}
		if (floor[4] & 0x20)
		{
			ttl_send_buffer[4] |= 0x20;
		}
		if (floor[4] & 0x40)
		{
			ttl_send_buffer[4] |= 0x40;
		}
		if (floor[4] & 0x80)
		{
			ttl_send_buffer[4] |= 0x80;
		}
		
		if (floor[5] & 0x01) // floor[5]
		{
			ttl_send_buffer[5] |= 0x01;
		}
		if (floor[5] & 0x02)
		{
			ttl_send_buffer[5] |= 0x02;
		}
		if (floor[5] & 0x04)
		{
			ttl_send_buffer[5] |= 0x04;
		}
		if (floor[5] & 0x08)
		{
			ttl_send_buffer[5] |= 0x08;
		}
		if (floor[5] & 0x10)
		{
			ttl_send_buffer[5] |= 0x10;
		}
		if (floor[5] & 0x20)
		{
			ttl_send_buffer[5] |= 0x20;
		}
		if (floor[5] & 0x40)
		{
			ttl_send_buffer[5] |= 0x40;
		}
		if (floor[5] & 0x80)
		{
			ttl_send_buffer[5] |= 0x80;
		}
		
		if (floor[6] & 0x01) // floor[6]
		{
			ttl_send_buffer[6] |= 0x01;
		}
		if (floor[6] & 0x02)
		{
			ttl_send_buffer[6] |= 0x02;
		}
		if (floor[6] & 0x04)
		{
			ttl_send_buffer[6] |= 0x04;
		}
		if (floor[6] & 0x08)
		{
			ttl_send_buffer[6] |= 0x08;
		}
		if (floor[6] & 0x10)
		{
			ttl_send_buffer[6] |= 0x10;
		}
		if (floor[6] & 0x20)
		{
			ttl_send_buffer[6] |= 0x20;
		}
		if (floor[6] & 0x40)
		{
			ttl_send_buffer[6] |= 0x40;
		}
		if (floor[6] & 0x80)
		{
			ttl_send_buffer[6] |= 0x80;
		}
		
		if (floor[7] & 0x01) // floor[7]
		{
			ttl_send_buffer[7] |= 0x01;
		}
		if (floor[7] & 0x02)
		{
			ttl_send_buffer[7] |= 0x02;
		}
		if (floor[7] & 0x04)
		{
			ttl_send_buffer[7] |= 0x04;
		}
		if (floor[7] & 0x08)
		{
			ttl_send_buffer[7] |= 0x08;
		}
		if (floor[7] & 0x10)
		{
			ttl_send_buffer[7] |= 0x10;
		}
		if (floor[7] & 0x20)
		{
			ttl_send_buffer[7] |= 0x20;
		}
		if (floor[7] & 0x40)
		{
			ttl_send_buffer[7] |= 0x40;
		}
		if (floor[7] & 0x80)
		{
			ttl_send_buffer[7] |= 0x80;
		}
		handle_ttl_protocol(0xA1, ttl_send_buffer);
	}
}
*/


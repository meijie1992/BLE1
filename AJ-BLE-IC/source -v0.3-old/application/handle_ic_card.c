/******************************************************************************
**                           �Ͼ�������Ϣ�Ƽ����޹�˾
**
**                           http://www.njanjar.com
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��: handle_ic_card.c
** ��   ��   ��: ��־��
** ��        ��: V0.1
** ����޸�����: 2016��01��21��
** ��        ��: �����дIC��
** ��        ��: xc8
** Ӳ        ��: AJ-B-DK-G
**
**--------------��ʷ�汾��Ϣ---------------------------------------------------
** ��   ��   ��: ��־��
** ��  	     ��: V0.1
** �ա�      ��: 2016��01��21��
** �衡      ��: AJ-B-DK-G
**-----------------------------------------------------------------------------
*******************************************************************************/

//**--------------ͷ�ļ�-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include "led.h"
#include "beep.h"
#include "ds1302.h"
#include "24c02.h"
#include "uart.h"
#include "mfrc500.h"
#include "other.h"

#include "handle_ic_card.h"
#include "handle_floor.h"

//**--------------ȫ�ֱ���-----------------------------------------------------
BYTE tt1[2];
BYTE snr_rc500[4]; // MFRC500���к�
//BYTE *sak1;

BYTE keys[6]; // ��������
BYTE keys_super[6] = {0xA1, 0xA2, 0xA3, 0xB0, 0xB1, 0x00}; // ���泬��������2016-08-09

BYTE card_id[4];
BYTE user_card[14]; // user_card[0] = Ⱥ���
                    // user_card[1] = ����
                    // user_card[2] --- user_card[5] = ���ݣ����Ͳ�ͬ���������Ҳ��ͬ
                    // user_card[6] --- user_card[13] = �û�Ҫ����¥���            
BYTE flag_user_card = 0x00; // ˢ�û�����־
BYTE user_card_count = 0x00;

//BYTE guashi_card_address = 0x00; // 2014-10-31 szk add Ҫ��ʧ���ĵ�ַ
//BYTE guashi_count = 0x00; // 2014-10-31 ˢ��ʧ������
//BYTE guashi_card_number[4]; // 2014-10-31 ����Ҫ��ʧ�Ŀ���

BYTE card_type = 0x00; 	/* 	0x00 = δ����
							0x01 = �û���  				��������һ�� 1�� 
							0x02 = Ⱥ�鿨  				����������� 2��
							0x03 = ���ؿ�				������������ 3��
							0x04 = ��ʱ�� ������ʱ��	��������һ�� 1��
							0x05 = ��ʧ��				����������� 2��
							0x06 = Уʱ�� 				������������ 3��
							0x07 = ���ܿ� 				������������ 4��
							0x08 = ������               ������������ 4��
						*/
BYTE sector_number = 0x00; // ������������
BYTE group; // ������Ⱥ���
BYTE is_enable = 0x00; // �������ر��ݿر�־
BYTE count = 0x00;


BYTE flag_record = 0x00; // ˢ����־
BYTE ic_card[4];


const BYTE PWD_TABLE[] = { // �����
	0xFF, 0xFD, 0xF9, 0xF3, 0xEB, 0xE1, 0xD5, 0xC7, 0xB7, 0xA5, 0x91, 0x7B, 0x63, 0x49, 0x2D, 0x0F,
	0xFC, 0xF8, 0xF2, 0xEA, 0xE0, 0xD4, 0xC6, 0xB6, 0xA4, 0x90, 0x7A, 0x62, 0x48, 0x2C, 0x0E, 0x10,
    0xF7, 0xF1, 0xE9, 0xDF, 0xD3, 0xC5, 0xB5, 0xA3, 0x8F, 0x79, 0x61, 0x47, 0x2B, 0x0D, 0x11, 0x2E,
    0xF0, 0xE8, 0xDE, 0xD2, 0xC4, 0xB4, 0xA2, 0x8E, 0x78, 0x60, 0x46, 0x2A, 0x0C, 0x12, 0x2F, 0x4A,
    0xE7, 0xDD, 0xD1, 0xC3, 0xB3, 0xA1, 0x8D, 0x77, 0x5F, 0x45, 0x29, 0x0B, 0x13, 0x30, 0x4B, 0x64,
	0xDC, 0xD0, 0xC2, 0xB2, 0xA0, 0x8C, 0x76, 0x5E, 0x44, 0x28, 0x0A, 0x14, 0x31, 0x4C, 0x65, 0x7C,
    0xCF, 0xC1, 0xB1, 0x9F, 0x8B, 0x75, 0x5D, 0x43, 0x27, 0x09, 0x15, 0x32, 0x4D, 0x66, 0x7D, 0x92,
    0xC0, 0xB0, 0x9E, 0x8A, 0x74, 0x5C, 0x42, 0x26, 0x08, 0x16, 0x33, 0x4E, 0x67, 0x7E, 0x93, 0xA6,
    0xAF, 0x9D, 0x89, 0x73, 0x5B, 0x41, 0x25, 0x07, 0x17, 0x34, 0x4F, 0x68, 0x7F, 0x94, 0xA7, 0xB8,
    0x9C, 0x88, 0x72, 0x5A, 0x40, 0x24, 0x06, 0x18, 0x35, 0x50, 0x69, 0x80, 0x95, 0xA8, 0xB9, 0xC8,
	0x87, 0x71, 0x59, 0x3F, 0x23, 0x05, 0x19, 0x36, 0x51, 0x6A, 0x81, 0x96, 0xA9, 0xBA, 0xC9, 0xD6,
    0x70, 0x58, 0x3E, 0x22, 0x04, 0x1A, 0x37, 0x52, 0x6B, 0x82, 0x97, 0xAA, 0xBB, 0xCA, 0xD7, 0xE2,
    0x57, 0x3D, 0x21, 0x03, 0x1B, 0x38, 0x53, 0x6C, 0x83, 0x98, 0xAB, 0xBC, 0xCB, 0xD8, 0xE3, 0xEC,
    0x3C, 0x20, 0x02, 0x1C, 0x39, 0x54, 0x6D, 0x84, 0x99, 0xAC, 0xBD, 0xCC, 0xD9, 0xE4, 0xED, 0xF4,
    0x1F, 0x01, 0x1D, 0x3A, 0x55, 0x6E, 0x85, 0x9A, 0xAD, 0xBE, 0xCD, 0xDA, 0xE5, 0xEE, 0xF5, 0xFA,
	0x00, 0x1E, 0x3B, 0x56, 0x6F, 0x86, 0x9B, 0xAE, 0xBF, 0xCE, 0xDB, 0xE6, 0xEF, 0xF6, 0xFB, 0xFE
};

//**--------------��������-----------------------------------------------------

//**--------------��������-----------------------------------------------------
/*
BYTE
find_card(
	BYTE *buffer
	)
{
	BYTE i;
	
	for (i = 0x00; i < REPORT_THE_LOSS_COUNT; i++)
	{
		if ((buffer[0] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x00)) && 
			(buffer[1] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x01)) &&
			(buffer[2] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x02)) &&
			(buffer[3] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x03)))
		{
			return (i + 0x01);
		}
	}
	
	return 0x00;
}
*/
BYTE
check_user_card(
	void
	)
{
	BYTE i;
	
	for (i = 0x00; i < REPORT_THE_LOSS_COUNT; i++)
	{
		if ((card_id[3] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x00)) &&
			(card_id[2] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x01)) &&
			(card_id[1] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x02)) &&
			(card_id[0] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x03))) // ���û����Ѿ���ʧ ������ 2014-10-31
		{
			return 0x01;
		}
	}
	
	return 0x00;
}

BYTE
read_card_content(
	void
	) // ����������
{
	BYTE i = 0x00;
	BYTE ret = 0x00;
	BYTE data[16] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
	
	/*
	BYTE ttl_send_buffer[8];
	
	for (i = 0x00; i < 0x08; i++)
	{
		ttl_send_buffer[i] = 0x00;	
	}
	
	ret1 = Mf500PiccRead(0x04 * sector_number + 0x01, data); // // 2015-05-15 szk add for ic reader config support
	if (ret1 == MI_OK) // ����������
	{
		for (i = 0x00; i < 0x10; i++) // for debug���һ�ſ����ǹ��ܿ�Ҳ�Ǽ��ܿ��Ļ�ˢ�������������ˢ����Ϊ���ܿ��������޸���
		                              // 2014-06-30
		{
			uart_send_byte(data[i]);
		}
		
		for (i = 0x00; i < 0x06; i++) // �������뵽crc16_array���飬����crc16У��
		{
			crc16_array[i] = data[2 + i];
		}
		crc16 = crc_16(crc16_array, 0x06); // ����crc16
		if ((data[0x00] == 0xF0) && (data[0x01] == 0xA1) &&
            (data[0x0A] == 0xFB) && (data[0x0B] == 0xFE) &&
            (crc16 ==(data[0x08] * 256 + data[0x09]))) // У������ͨ��
		{
			// �����������ݼ��ܣ�ͨ�������
			keys[0] = PWD_TABLE[data[2]];
			keys[1] = PWD_TABLE[data[3]];
			keys[2] = PWD_TABLE[data[4]];
			keys[3] = PWD_TABLE[data[5]];
			keys[4] = PWD_TABLE[data[6]];
			keys[5] = PWD_TABLE[data[7]];
			write_24c02(0x02, 0xEF); // ��־Ҫ�޸�����
			
			write_24c02(0x03, keys[0]); // д�ӹ��ܵ��������ݵ�ָ��EEPROM��ַ
			write_24c02(0x04, keys[1]);
			write_24c02(0x05, keys[2]);
			write_24c02(0x06, keys[3]);
			write_24c02(0x07, keys[4]);
			write_24c02(0x08, keys[5]);
	
			card_type = 0x07; // ���ܿ� 2015-03-10
			ret1 = 0x01; // ���سɹ�
		}
		else // ����У�鲻ͨ��
		{
			// do nothing
			ret1 = 0x00; // error
		}
		
		for (i = 0x00; i < 0x06; i++) // ��crc16_array����
		{
			crc16_array[i] = 0x00;
		}
	}
	else
	{
		ret1 = 0x00; // error
	}
	
	for (i = 0x00; i < 0x10; i++) // ��data����
	{
		data[i] = 0x00;
	}
	*/

	
	ret = Mf500PiccRead(0x04 * sector_number + 0x00, data);
	if (ret == MI_OK) // ����������
	{
		/*
		uart_send_byte(data[0]); // for debug
		uart_send_byte(data[1]);
		uart_send_byte(data[2]);
		uart_send_byte(data[3]);
		uart_send_byte(data[4]);
		uart_send_byte(data[5]);
		uart_send_byte(data[6]);
		uart_send_byte(data[7]);
		uart_send_byte(data[8]);
		uart_send_byte(data[9]);
		uart_send_byte(data[10]);
		uart_send_byte(data[11]);
		uart_send_byte(data[12]);
		uart_send_byte(data[13]);
		uart_send_byte(data[14]);
		uart_send_byte(data[15]);
		*/
		if (data[15] == checksum(data, 15)) // ���һ���ֽ���У���
		{
			if (data[0] == 0xA0) // ���ؿ�
			{
				card_type = 0x03; // ���ؿ� 2015-03-06
				if (is_enable) // ���ˢ�����ܴ�
				{
					if (!check_user_card()) // �����û����Ƿ��Ѿ�����ʧ���������ʧ�������� 2014-10-31
					{
						write_24c02(0x00, 0x55); // �ر�ˢ������
						is_enable = 0x00;
						uart1_send_byte(0xF0); // ����ָ�������ݸ�¥��壬��¥�����ƹر�ˢ������
						uart1_send_byte(0xF1);
						uart1_send_byte(0xFE);
						LED1_OFF; // Ϩ���
						RB4 = 0x00; // 414 ��7����8��ͨ�����а����ɰ� 2014-02-12
						RB5 = 0x00; // 414 ��5����6��ͨ�����а����ɰ� 2014-02-12
						ret = 0x01;
					}
					else // �ÿ��Ѿ�����ʧ��������
					{
						ret = 0x00; // ����ʧ��
					}
				}
				else // ���ˢ�����ܹر�
				{
					if (!check_user_card()) // �����û����Ƿ��Ѿ�����ʧ���������ʧ�������� 2014-10-31
					{
						write_24c02(0x00, 0xAA); // ����ˢ������
						is_enable = 0x01;
						uart1_send_byte(0xF0); // ����ָ�������ݸ�¥��壬��¥����������ˢ������
						uart1_send_byte(0xF1);
						uart1_send_byte(0xFF);
						RB4 = 0x01; // 414 ��7����8�ŶϿ������а������ɰ� 2014-02-12
						RB5 = 0x01; // 414 ��5����6�ŶϿ������а������ɰ� 2014-02-12
						ret = 0x01;
					}
					else // �ÿ��Ѿ�����ʧ��������
					{
						ret = 0x00; // ����ʧ��
					}
				}
			}
			else if (data[0] == 0xA1) // Ⱥ�鿨
			{
				card_type = 0x02; // Ⱥ�鿨 2015-03-06
				if (is_enable) // ֻ��ˢ�����ܿ��������ˢȺ�鿨
				{
					if (!check_user_card()) // �����û����Ƿ��Ѿ�����ʧ���������ʧ�������� 2014-10-31
					{
						group = data[1];
						write_24c02(0x01, group); // ��Ⱥ���д���ڲ�EEPROM�ĵ�ַ0x01
						ret = 0x01; // ���سɹ�
					}
					else // �ÿ��Ѿ�����ʧ��������
					{
						ret = 0x00; // ����ʧ��
					}
				}
				else
				{
					ret = 0x00; // ����ʧ�ܣ�ˢ���Ѿ��ر�
				}
			}
			else if (data[0] == 0xA2) // Уʱ��
			{
				card_type = 0x06; // Уʱ��
				if (is_enable) // ֻ��ˢ�����ܿ��������ˢУʱ��
				{
					if (!check_user_card()) // �����û����Ƿ��Ѿ�����ʧ���������ʧ�������� 2014-10-31
					{
						year = data[1]; // ��
						month = data[2]; // ��
						day = data[3]; // ��
						hour = data[4]; // ʱ
						minute = data[5]; // ��
						second = data[6]; // ��
						week = data[7]; // ���� 2016-01-20 szk add
						ds1302_set_time();
						ret = 0x01; // ���سɹ�
					}
					else // �ÿ��Ѿ�����ʧ��������
					{
						ret = 0x00; // ����ʧ��
					}
				}
				else
				{
					ret = 0x00; // ����ʧ�ܣ�ˢ���Ѿ��ر�
				}
			}
			else if (data[0] == 0xA3) // ��ʱ�������ǹ���Ա����ˢ���Ժ�����¥��ɰ�(��10������)
			{
				card_type = 0x04; // ��ʱ�� 2015-03-06
				if (is_enable) // ֻ��ˢ�����ܿ��������ˢ��ʱ��
				{
					if (!check_user_card()) // �����û����Ƿ��Ѿ�����ʧ���������ʧ�������� 2014-10-31
					{
						uart1_send_byte(0xF0); // ����ָ�������ݸ�¥��壬��¥����������¥��ɵ���
						uart1_send_byte(0xF1);
						uart1_send_byte(0xFC);
						flag_user_card = 0x01; // 2014-12-29 ˢ��ѡ�� ����414����
						RB4 = 0x00; // ���а����ɰ�
						RB5 = 0x00; // ���а����ɰ�
						ret = 0x01; // ���سɹ�
					}
					else // �ÿ��Ѿ�����ʧ��������
					{
						ret = 0x00; // ����ʧ��
					}
				}
				else
				{
					ret = 0x00; // ����ʧ�ܣ�ˢ���Ѿ��ر�
				}
			}
			else if (data[0] == 0xA4) // �û���
			{
				card_type = 0x01; // �û��� 2015-03-06
				if (is_enable) // ֻ��ˢ�����ܿ��������ˢ�û���
				{
					if (!check_user_card()) // �����û����Ƿ��Ѿ�����ʧ���������ʧ��������
					{
						user_card[0] = data[1];
						if (user_card[0] == read_24c02(ADDRESS_GROUP)) // ��Ⱥ���
						{
							user_card[1] = data[2]; // ����
							if (user_card[1] == 0x01) // �ƴ� 2016-07-19 szk
							{
								WORD user_count = 0x00;
								user_count = data[3] << 0x08 | data[4];
								if (user_count == 0x00)
								{
									return 0x00; // ���ƴ��Ѿ�����
								}
								else // д���ݵ��û���
								{
									user_count--;
									data[3] = user_count / 256;
									data[4] = user_count % 256;
									data[15] = checksum(data, 15); // ���¼���У���
									Mf500PiccWrite(0x04 * sector_number + 0x00, data); // д����
								}
							}
							else if (user_card[1] == 0x02) // ����
							{
								user_card[2] = data[3];
								user_card[3] = data[4];
								user_card[4] = data[5];
								user_card[5] = data[6];
								ds1302_get_time();
								if ((year > user_card[2]) ||
							   	   ((year == user_card[2]) && (month > user_card[3])) ||
							   	   ((year == user_card[2]) && (month == user_card[3]) && (day > user_card[4])) ||
							   	   ((year == user_card[2]) && (month == user_card[3]) && (day == user_card[4]) && (hour >= user_card[5])))
								{
									return 0x00; // ���Ѿ����ڣ�ֱ�ӷ���ʧ��
								}
								else
								{
								
								}
							}
							else // ������
							{
								user_card[2] = 0x00;
								user_card[3] = 0x00;
								user_card[4] = 0x00;
								user_card[5] = 0x00;
							}
							user_card[6] = data[14];
							user_card[7] = data[13];
							user_card[8] = data[12];
							user_card[9] = data[11];
							user_card[10] = data[10];
							user_card[11] = data[9];
							user_card[12] = data[8];
							user_card[13] = data[7];
							deal_floor(user_card); // ˢ�����㴦�� �����ݷ��͸�¥��崦��
							flag_user_card = 0x01; // 2014-02-12 ˢ��ѡ�� ����414����
							RB4 = 0x00; // ���а����ɰ�
							RB5 = 0x00; // ���а����ɰ�
							ret = 0x01;
						}
						else
						{
							return 0x00;
						}
					}
					else // �ÿ��Ѿ���ʧ��������
					{
						ret = 0x00; // ����ʧ��
					}
				}
				else
				{
					ret = 0x00; // ����ʧ�ܣ�ˢ���Ѿ��ر�
				}
				for (i = 0x00; i < 14; i++) // ������
				{
					user_card[i] = 0x00; 
				}
			}
			else if (data[0] == 0xA8) // ������
			{
				card_type = 0x08;
				if (is_enable) // ֻ��ˢ�����ܿ��������ˢ������
				{
					if (!check_user_card()) // �����û����Ƿ��Ѿ�����ʧ���������ʧ�������� 2014-10-31
					{
						sector_number = data[1];
						write_24c02(ADDRESS_SECTOR, sector_number); // ��������д���ڲ�EEPROM�ĵ�ַ0x09
						ret = 0x01; // ���سɹ�
					}
					else // �ÿ��Ѿ���ʧ�������� 2014-10-31
					{
						ret = 0x00; // ����ʧ��
					}
				}
				else
				{
					ret = 0x00; // ����ʧ�ܣ�ˢ���Ѿ��ر�
				}
			}
			else // ���������ͣ�ռʱ��֧��
			{
				ret = 0x00; // �����Ͳ���
			}
		}
		else // У��ͳ���
		{
			ret = 0x00;
		}
	}
	else // ����ʧ��
	{
		ret = 0x00;
	}

	return ret;
}

BYTE
rfcard(
	void
	) // ����Ƿ��п���������
{
	BYTE ret = 0x00;
    
    ret = Mf500PiccRequest(PICC_REQSTD, tt1); // ��������
   	ret = Mf500PiccAnticoll(0, snr_rc500); // ����ײ
    if (ret != MI_OK)
    {
    	return 0x01;
    }
    else
    {
}

    	return 0x00;
    }
BYTE
read_id(
	void
	) // ���������кţ�������snr_rc500����
{
	//if (Mf500PiccSelect(snr_rc500, sak1) == MI_OK)
	if (Mf500PiccSelect(snr_rc500) == MI_OK)
	{
		return 0x01;
	}
	else
	{
		return 0x00;
	}
}

BYTE
same_id(
	void
	)
{
	if ((card_id[0] == snr_rc500[0]) && 
        (card_id[1] == snr_rc500[1]) &&
        (card_id[2] == snr_rc500[2]) &&
        (card_id[3] == snr_rc500[3]))
	{
		return 0x01;
	}
	else
	{
		return 0x00;
	}
}

BYTE
checkpsw_super(
	void
	) // ��������
{
	if (!rfcard()) // �ٴμ������������Ƿ���IC��
	{
		if (read_id()) // ���������к�
		{
			if (Mf500PiccLoadKey(keys_super) == MI_OK) // ��������ɹ�
			{
				if (Mf500PiccAuthState(PICC_AUTHENT1A, snr_rc500, 4 * sector_number) == MI_OK)
				{
					return 0x01;
				}
				else
				{
					return 0x00;
				}
			}
			else
			{
				return 0x00;
			}
		}
		else
		{
			return 0x00;
		}
	}
	else
	{
		return 0x00;
	}	
}

BYTE
checkpsw(
	void
	) // �������
{
	if (Mf500PiccLoadKey(keys) == MI_OK) // ��������ɹ�
	{
		if (Mf500PiccAuthState(PICC_AUTHENT1A, snr_rc500, 4 * sector_number) == MI_OK)
		{
			return 0x01; // �ɹ�
		}
		else
		{
			return 0x00;
		}
	}
	else // �������벻�ɹ�
	{	
		return 0x00;
	}
}

void
handle_ic_card(
	void
	)
{
	if (!rfcard()) // �������������Ƿ���IC��
	{
		count = 0x05;
		if (read_id()) // ���������к�
		{
			if (!same_id()) // ��ֹ�����뿪һֱˢ��
			{
				CLRWDT(); // ι������ι��ϵͳһֱ��������
				card_id[0] = snr_rc500[0];
				card_id[1] = snr_rc500[1];
				card_id[2] = snr_rc500[2];
				card_id[3] = snr_rc500[3];
				ic_card[0] = card_id[3];
				ic_card[1] = card_id[2];
				ic_card[2] = card_id[1];
				ic_card[3] = card_id[0];
				//uart_send_byte(card_id[0]); // ��ӡ����
				//uart_send_byte(card_id[1]);
				//uart_send_byte(card_id[2]);
				//uart_send_byte(card_id[3]);
				if (checkpsw()) // ��鿨��Ӧ����������
				{
					CLRWDT(); // ι������ι��ϵͳһֱ��������
					if (read_card_content()) // ����Ƭ����
					{
						flag_record = 0x01; // ����ˢ����־ 2016-08-30 szk add
						handle_beep();
						count = 0x05;	 // 2015-08-31 szk modify
					}
					else
					{
						// do nothing
					}
					card_type = 0x00; // 2015-03-06 szk add
				}
				else // ���벻��,����ǲ��ǳ�����
				{
					CLRWDT(); // ι������ι��ϵͳһֱ��������
					if (checkpsw_super())
					{
						if (read_card_content()) // ����Ƭ����
						{
							handle_beep();
							count = 0x05;	 // 2015-08-31 szk modify
						}
						else
						{
							// do nothing
						}
						card_type = 0x00; // 2015-03-06 szk add
					}
					else
					{

					}
				}
			}
			else // ��ͬ�Ŀ�
			{
				// do nothing
			}
		}
		else // �������к�ʧ��
		{
			// do nothing
		}
	}
	else // û��IC���ڶ���������
	{
		if (count > 0x0A)
		{
			card_id[0] = 0x00;
			card_id[1] = 0x00;
			card_id[2] = 0x00;
			card_id[3] = 0x00;
			count = 0x05;
		}
		else
		{
			count++;
		}
	}	
}


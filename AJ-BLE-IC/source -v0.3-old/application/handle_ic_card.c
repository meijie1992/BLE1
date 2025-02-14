/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: handle_ic_card.c
** 创   建   人: 宋志康
** 版        本: V0.1
** 最后修改日期: 2016年01月21日
** 描        述: 处理读写IC卡
** 编        译: xc8
** 硬        件: AJ-B-DK-G
**
**--------------历史版本信息---------------------------------------------------
** 创   建   人: 宋志康
** 版  	     本: V0.1
** 日　      期: 2016年01月21日
** 描　      述: AJ-B-DK-G
**-----------------------------------------------------------------------------
*******************************************************************************/

//**--------------头文件-------------------------------------------------------
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

//**--------------全局变量-----------------------------------------------------
BYTE tt1[2];
BYTE snr_rc500[4]; // MFRC500序列号
//BYTE *sak1;

BYTE keys[6]; // 密码数组
BYTE keys_super[6] = {0xA1, 0xA2, 0xA3, 0xB0, 0xB1, 0x00}; // 保存超级卡密码2016-08-09

BYTE card_id[4];
BYTE user_card[14]; // user_card[0] = 群组号
                    // user_card[1] = 类型
                    // user_card[2] --- user_card[5] = 数据，类型不同代表的数据也不同
                    // user_card[6] --- user_card[13] = 用户要到的楼层号            
BYTE flag_user_card = 0x00; // 刷用户卡标志
BYTE user_card_count = 0x00;

//BYTE guashi_card_address = 0x00; // 2014-10-31 szk add 要挂失卡的地址
//BYTE guashi_count = 0x00; // 2014-10-31 刷挂失卡次数
//BYTE guashi_card_number[4]; // 2014-10-31 保存要挂失的卡号

BYTE card_type = 0x00; 	/* 	0x00 = 未定义
							0x01 = 用户卡  				蜂鸣器响一声 1短 
							0x02 = 群组卡  				蜂鸣器响二声 2短
							0x03 = 开关卡				蜂鸣器响三声 3短
							0x04 = 延时卡 期限延时卡	蜂鸣器响一声 1长
							0x05 = 挂失卡				蜂鸣器响二声 2长
							0x06 = 校时卡 				蜂鸣器响三声 3长
							0x07 = 加密卡 				蜂鸣器响四声 4短
							0x08 = 扇区卡               蜂鸣器响四声 4长
						*/
BYTE sector_number = 0x00; // 读卡器扇区号
BYTE group; // 读卡器群组号
BYTE is_enable = 0x00; // 启动，关闭梯控标志
BYTE count = 0x00;


BYTE flag_record = 0x00; // 刷卡标志
BYTE ic_card[4];


const BYTE PWD_TABLE[] = { // 密码表
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

//**--------------函数申明-----------------------------------------------------

//**--------------函数定义-----------------------------------------------------
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
			(card_id[0] == read_24c02(ADDRESS_REPORT_THE_LOSS + (i * 0x04) + 0x03))) // 该用户卡已经挂失 不可用 2014-10-31
		{
			return 0x01;
		}
	}
	
	return 0x00;
}

BYTE
read_card_content(
	void
	) // 读卡的内容
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
	if (ret1 == MI_OK) // 读到卡内容
	{
		for (i = 0x00; i < 0x10; i++) // for debug如果一张卡即是功能卡也是加密卡的话刷完后，其他卡不可刷，因为加密卡把密码修改了
		                              // 2014-06-30
		{
			uart_send_byte(data[i]);
		}
		
		for (i = 0x00; i < 0x06; i++) // 保存密码到crc16_array数组，进行crc16校验
		{
			crc16_array[i] = data[2 + i];
		}
		crc16 = crc_16(crc16_array, 0x06); // 计算crc16
		if ((data[0x00] == 0xF0) && (data[0x01] == 0xA1) &&
            (data[0x0A] == 0xFB) && (data[0x0B] == 0xFE) &&
            (crc16 ==(data[0x08] * 256 + data[0x09]))) // 校验数据通过
		{
			// 进行密码数据加密，通过查表处理
			keys[0] = PWD_TABLE[data[2]];
			keys[1] = PWD_TABLE[data[3]];
			keys[2] = PWD_TABLE[data[4]];
			keys[3] = PWD_TABLE[data[5]];
			keys[4] = PWD_TABLE[data[6]];
			keys[5] = PWD_TABLE[data[7]];
			write_24c02(0x02, 0xEF); // 标志要修改密码
			
			write_24c02(0x03, keys[0]); // 写加过密的密码数据到指定EEPROM地址
			write_24c02(0x04, keys[1]);
			write_24c02(0x05, keys[2]);
			write_24c02(0x06, keys[3]);
			write_24c02(0x07, keys[4]);
			write_24c02(0x08, keys[5]);
	
			card_type = 0x07; // 加密卡 2015-03-10
			ret1 = 0x01; // 返回成功
		}
		else // 数据校验不通过
		{
			// do nothing
			ret1 = 0x00; // error
		}
		
		for (i = 0x00; i < 0x06; i++) // 清crc16_array数组
		{
			crc16_array[i] = 0x00;
		}
	}
	else
	{
		ret1 = 0x00; // error
	}
	
	for (i = 0x00; i < 0x10; i++) // 清data数组
	{
		data[i] = 0x00;
	}
	*/

	
	ret = Mf500PiccRead(0x04 * sector_number + 0x00, data);
	if (ret == MI_OK) // 读到卡内容
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
		if (data[15] == checksum(data, 15)) // 最后一个字节是校验和
		{
			if (data[0] == 0xA0) // 开关卡
			{
				card_type = 0x03; // 开关卡 2015-03-06
				if (is_enable) // 如果刷卡功能打开
				{
					if (!check_user_card()) // 检查该用户卡是否已经被挂失，如果被挂失，不可用 2014-10-31
					{
						write_24c02(0x00, 0x55); // 关闭刷卡功能
						is_enable = 0x00;
						uart1_send_byte(0xF0); // 发送指定的数据给楼层板，由楼层板控制关闭刷卡功能
						uart1_send_byte(0xF1);
						uart1_send_byte(0xFE);
						LED1_OFF; // 熄灭灯
						RB4 = 0x00; // 414 的7脚与8脚通，所有按键可按 2014-02-12
						RB5 = 0x00; // 414 的5脚与6脚通，所有按键可按 2014-02-12
						ret = 0x01;
					}
					else // 该卡已经被挂失，不可用
					{
						ret = 0x00; // 返回失败
					}
				}
				else // 如果刷卡功能关闭
				{
					if (!check_user_card()) // 检查该用户卡是否已经被挂失，如果被挂失，不可用 2014-10-31
					{
						write_24c02(0x00, 0xAA); // 启动刷卡功能
						is_enable = 0x01;
						uart1_send_byte(0xF0); // 发送指定的数据给楼层板，由楼层板控制启动刷卡功能
						uart1_send_byte(0xF1);
						uart1_send_byte(0xFF);
						RB4 = 0x01; // 414 的7脚与8脚断开，所有按键不可按 2014-02-12
						RB5 = 0x01; // 414 的5脚与6脚断开，所有按键不可按 2014-02-12
						ret = 0x01;
					}
					else // 该卡已经被挂失，不可用
					{
						ret = 0x00; // 返回失败
					}
				}
			}
			else if (data[0] == 0xA1) // 群组卡
			{
				card_type = 0x02; // 群组卡 2015-03-06
				if (is_enable) // 只有刷卡功能开启后才能刷群组卡
				{
					if (!check_user_card()) // 检查该用户卡是否已经被挂失，如果被挂失，不可用 2014-10-31
					{
						group = data[1];
						write_24c02(0x01, group); // 把群组号写到内部EEPROM的地址0x01
						ret = 0x01; // 返回成功
					}
					else // 该卡已经被挂失，不可用
					{
						ret = 0x00; // 返回失败
					}
				}
				else
				{
					ret = 0x00; // 返回失败，刷卡已经关闭
				}
			}
			else if (data[0] == 0xA2) // 校时卡
			{
				card_type = 0x06; // 校时卡
				if (is_enable) // 只有刷卡功能开启后才能刷校时卡
				{
					if (!check_user_card()) // 检查该用户卡是否已经被挂失，如果被挂失，不可用 2014-10-31
					{
						year = data[1]; // 年
						month = data[2]; // 月
						day = data[3]; // 日
						hour = data[4]; // 时
						minute = data[5]; // 分
						second = data[6]; // 秒
						week = data[7]; // 星期 2016-01-20 szk add
						ds1302_set_time();
						ret = 0x01; // 返回成功
					}
					else // 该卡已经被挂失，不可用
					{
						ret = 0x00; // 返回失败
					}
				}
				else
				{
					ret = 0x00; // 返回失败，刷卡已经关闭
				}
			}
			else if (data[0] == 0xA3) // 延时卡，就是管理员卡，刷了以后所有楼层可按(在10秒以内)
			{
				card_type = 0x04; // 延时卡 2015-03-06
				if (is_enable) // 只有刷卡功能开启后才能刷延时卡
				{
					if (!check_user_card()) // 检查该用户卡是否已经被挂失，如果被挂失，不可用 2014-10-31
					{
						uart1_send_byte(0xF0); // 发送指定的数据给楼层板，由楼层板控制所有楼层可到达
						uart1_send_byte(0xF1);
						uart1_send_byte(0xFC);
						flag_user_card = 0x01; // 2014-12-29 刷卡选层 控制414处理
						RB4 = 0x00; // 所有按键可按
						RB5 = 0x00; // 所有按键可按
						ret = 0x01; // 返回成功
					}
					else // 该卡已经被挂失，不可用
					{
						ret = 0x00; // 返回失败
					}
				}
				else
				{
					ret = 0x00; // 返回失败，刷卡已经关闭
				}
			}
			else if (data[0] == 0xA4) // 用户卡
			{
				card_type = 0x01; // 用户卡 2015-03-06
				if (is_enable) // 只有刷卡功能开启后才能刷用户卡
				{
					if (!check_user_card()) // 检查该用户卡是否已经被挂失，如果被挂失，不可用
					{
						user_card[0] = data[1];
						if (user_card[0] == read_24c02(ADDRESS_GROUP)) // 读群组号
						{
							user_card[1] = data[2]; // 类型
							if (user_card[1] == 0x01) // 计次 2016-07-19 szk
							{
								WORD user_count = 0x00;
								user_count = data[3] << 0x08 | data[4];
								if (user_count == 0x00)
								{
									return 0x00; // 卡计次已经用完
								}
								else // 写数据到用户卡
								{
									user_count--;
									data[3] = user_count / 256;
									data[4] = user_count % 256;
									data[15] = checksum(data, 15); // 重新计算校验和
									Mf500PiccWrite(0x04 * sector_number + 0x00, data); // 写数据
								}
							}
							else if (user_card[1] == 0x02) // 限期
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
									return 0x00; // 卡已经过期，直接返回失败
								}
								else
								{
								
								}
							}
							else // 无意义
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
							deal_floor(user_card); // 刷卡到层处理 把数据发送给楼层板处理
							flag_user_card = 0x01; // 2014-02-12 刷卡选层 控制414处理
							RB4 = 0x00; // 所有按键可按
							RB5 = 0x00; // 所有按键可按
							ret = 0x01;
						}
						else
						{
							return 0x00;
						}
					}
					else // 该卡已经挂失，不可用
					{
						ret = 0x00; // 返回失败
					}
				}
				else
				{
					ret = 0x00; // 返回失败，刷卡已经关闭
				}
				for (i = 0x00; i < 14; i++) // 清数据
				{
					user_card[i] = 0x00; 
				}
			}
			else if (data[0] == 0xA8) // 扇区卡
			{
				card_type = 0x08;
				if (is_enable) // 只有刷卡功能开启后才能刷扇区卡
				{
					if (!check_user_card()) // 检查该用户卡是否已经被挂失，如果被挂失，不可用 2014-10-31
					{
						sector_number = data[1];
						write_24c02(ADDRESS_SECTOR, sector_number); // 把扇区号写到内部EEPROM的地址0x09
						ret = 0x01; // 返回成功
					}
					else // 该卡已经挂失，不可用 2014-10-31
					{
						ret = 0x00; // 返回失败
					}
				}
				else
				{
					ret = 0x00; // 返回失败，刷卡已经关闭
				}
			}
			else // 其他卡类型，占时不支持
			{
				ret = 0x00; // 卡类型不对
			}
		}
		else // 校验和出错
		{
			ret = 0x00;
		}
	}
	else // 读卡失败
	{
		ret = 0x00;
	}

	return ret;
}

BYTE
rfcard(
	void
	) // 检查是否有卡在区域内
{
	BYTE ret = 0x00;
    
    ret = Mf500PiccRequest(PICC_REQSTD, tt1); // 发送请求
   	ret = Mf500PiccAnticoll(0, snr_rc500); // 防碰撞
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
	) // 读卡的序列号，保存在snr_rc500数组
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
	) // 超级密码
{
	if (!rfcard()) // 再次检查读卡器附近是否有IC卡
	{
		if (read_id()) // 读卡的序列号
		{
			if (Mf500PiccLoadKey(keys_super) == MI_OK) // 下载密码成功
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
	) // 检查密码
{
	if (Mf500PiccLoadKey(keys) == MI_OK) // 下载密码成功
	{
		if (Mf500PiccAuthState(PICC_AUTHENT1A, snr_rc500, 4 * sector_number) == MI_OK)
		{
			return 0x01; // 成功
		}
		else
		{
			return 0x00;
		}
	}
	else // 下载密码不成功
	{	
		return 0x00;
	}
}

void
handle_ic_card(
	void
	)
{
	if (!rfcard()) // 检查读卡器附近是否有IC卡
	{
		count = 0x05;
		if (read_id()) // 读卡的序列号
		{
			if (!same_id()) // 防止卡不离开一直刷卡
			{
				CLRWDT(); // 喂狗，不喂狗系统一直重新启动
				card_id[0] = snr_rc500[0];
				card_id[1] = snr_rc500[1];
				card_id[2] = snr_rc500[2];
				card_id[3] = snr_rc500[3];
				ic_card[0] = card_id[3];
				ic_card[1] = card_id[2];
				ic_card[2] = card_id[1];
				ic_card[3] = card_id[0];
				//uart_send_byte(card_id[0]); // 打印卡号
				//uart_send_byte(card_id[1]);
				//uart_send_byte(card_id[2]);
				//uart_send_byte(card_id[3]);
				if (checkpsw()) // 检查卡对应扇区的密码
				{
					CLRWDT(); // 喂狗，不喂狗系统一直重新启动
					if (read_card_content()) // 读卡片内容
					{
						flag_record = 0x01; // 设置刷卡标志 2016-08-30 szk add
						handle_beep();
						count = 0x05;	 // 2015-08-31 szk modify
					}
					else
					{
						// do nothing
					}
					card_type = 0x00; // 2015-03-06 szk add
				}
				else // 密码不对,检查是不是超级卡
				{
					CLRWDT(); // 喂狗，不喂狗系统一直重新启动
					if (checkpsw_super())
					{
						if (read_card_content()) // 读卡片内容
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
			else // 相同的卡
			{
				// do nothing
			}
		}
		else // 读卡序列号失败
		{
			// do nothing
		}
	}
	else // 没有IC卡在读卡器附近
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


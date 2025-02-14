/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: handle_ic_card.h
** 创   建   人: 宋志康
** 版        本: V0.1
** 最后修改日期: 2016年01月21日
** 描        述: 读写IC卡
**
**--------------历史版本信息---------------------------------------------------
** 创   建   人: 宋志康
** 版  	     本: V0.1
** 日　      期: 2016年01月21日
** 描　      述: 读写IC卡
**-----------------------------------------------------------------------------
*******************************************************************************/
#ifndef _HANDLE_IC_CARD_H
#define _HANDLE_IC_CARD_H

//**--------------包含文件-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------
#define CARD_TYPE_USER		0x01	// 用户卡
#define CARD_TYPE_GROUP		0x02 	// 群组卡
#define CARD_TYPE_SWITCH	0x03	// 开关卡
#define CARD_TYPE_ALL		0x04	// 通卡
#define CARD_TYPE_LOSS		0x05	// 挂失卡
#define CARD_TYPE_TIMING	0x06	// 校时卡
#define CARD_TYPE_PASSWORD	0x07	// 加密卡
#define CARD_TYPE_SECTOR	0x08	// 扇区卡

//**--------------数据结构-----------------------------------------------------

//**--------------函数申明-----------------------------------------------------
void
handle_ic_card(
	void
	);
		
//**--------------全局变量-----------------------------------------------------
extern BYTE card_id[4];
extern BYTE flag_user_card; // 刷用户卡标志
extern BYTE user_card_count;
extern BYTE card_type;
extern BYTE sector_number; // 读卡器扇区号
extern BYTE group; // 读卡器群组号
extern BYTE is_enable; // 启动，关闭梯控标志
extern BYTE guashi_count;
extern const BYTE PWD_TABLE[];

extern BYTE flag_record;

extern BYTE keys[6];

//extern BYTE count;
extern BYTE ic_card[4]; // MFRC500序列号
extern BYTE keys_super[6];

#endif // _HANDLE_IC_CARD_H

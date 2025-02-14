/******************************************************************************
**                           �Ͼ�������Ϣ�Ƽ����޹�˾
**
**                           http://www.njanjar.com
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��: handle_ic_card.h
** ��   ��   ��: ��־��
** ��        ��: V0.1
** ����޸�����: 2016��01��21��
** ��        ��: ��дIC��
**
**--------------��ʷ�汾��Ϣ---------------------------------------------------
** ��   ��   ��: ��־��
** ��  	     ��: V0.1
** �ա�      ��: 2016��01��21��
** �衡      ��: ��дIC��
**-----------------------------------------------------------------------------
*******************************************************************************/
#ifndef _HANDLE_IC_CARD_H
#define _HANDLE_IC_CARD_H

//**--------------�����ļ�-----------------------------------------------------

//**--------------�궨��-------------------------------------------------------
#define CARD_TYPE_USER		0x01	// �û���
#define CARD_TYPE_GROUP		0x02 	// Ⱥ�鿨
#define CARD_TYPE_SWITCH	0x03	// ���ؿ�
#define CARD_TYPE_ALL		0x04	// ͨ��
#define CARD_TYPE_LOSS		0x05	// ��ʧ��
#define CARD_TYPE_TIMING	0x06	// Уʱ��
#define CARD_TYPE_PASSWORD	0x07	// ���ܿ�
#define CARD_TYPE_SECTOR	0x08	// ������

//**--------------���ݽṹ-----------------------------------------------------

//**--------------��������-----------------------------------------------------
void
handle_ic_card(
	void
	);
		
//**--------------ȫ�ֱ���-----------------------------------------------------
extern BYTE card_id[4];
extern BYTE flag_user_card; // ˢ�û�����־
extern BYTE user_card_count;
extern BYTE card_type;
extern BYTE sector_number; // ������������
extern BYTE group; // ������Ⱥ���
extern BYTE is_enable; // �������ر��ݿر�־
extern BYTE guashi_count;
extern const BYTE PWD_TABLE[];

extern BYTE flag_record;

extern BYTE keys[6];

//extern BYTE count;
extern BYTE ic_card[4]; // MFRC500���к�
extern BYTE keys_super[6];

#endif // _HANDLE_IC_CARD_H

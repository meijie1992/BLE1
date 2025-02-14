/******************************************************************************
**                           �Ͼ�������Ϣ�Ƽ����޹�˾
**
**                           http://www.njanjar.com
**
**--------------�����ļ���Ϣ---------------------------------------------------
** ��   ��   ��: ds1302.h
** ��   ��   ��: ��־��
** ��        ��: V0.2
** ����޸�����: 2016-05-31
** ��        ��: ʵʱʱ��оƬds1302����
**
**--------------��ʷ�汾��Ϣ---------------------------------------------------
** ��   ��   ��: ��־��
** ��  	     ��: V0.2
** �ա�      ��: 2016-05-31
** �衡      ��: ʵʱʱ��оƬds1302����

** ��   ��   �� : 
** ��  	     �� : 
** �޶�    ���� : 
** �衡      �� : 
**-----------------------------------------------------------------------------
*******************************************************************************/
#ifndef _AJ_DS1302_H
#define _AJ_DS1302_H

//**--------------�����ļ�-----------------------------------------------------

//**--------------�궨��-------------------------------------------------------
#define RTC_RST_TRIS		(TRISCbits.TRISC0)
#define RTC_RST_IO			(RC0)

#define RTC_SCL_TRIS		(TRISCbits.TRISC2)
#define RTC_SCL_IO			(RC2)

#define RTC_SDA_TRIS		(TRISCbits.TRISC1)
#define RTC_SDA_IN			(RC1)
#define RTC_SDA_OUT			(RC1)

//**---DS1302ʱ�ӼĴ������������붨��
#define	DS1302_SEC_REG_WR			0x80 // DS1302����Ĵ���д����
#define	DS1302_SEC_REG_RD			0x81 // DS1302����Ĵ���������
#define	DS1302_MIN_REG_WR			0x82 // DS1302�ķּĴ���д����
#define	DS1302_MIN_REG_RD			0x83 // DS1302�ķּĴ���������
#define	DS1302_HOUR_REG_WR			0x84 // DS1302��ʱ�Ĵ���д����
#define	DS1302_HOUR_REG_RD			0x85 // DS1302��ʱ�Ĵ���������
#define	DS1302_DATA_REG_WR			0x86 // DS1302���ռĴ���д����
#define	DS1302_DATA_REG_RD			0x87 // DS1302���ռĴ���������
#define	DS1302_MONTH_REG_WR			0x88 // DS1302���¼Ĵ���д����
#define	DS1302_MONTH_REG_RD			0x89 // DS1302���¼Ĵ���������
#define	DS1302_WEEK_REG_WR			0x8A // DS1302���ܼĴ���д����
#define	DS1302_WEEK_REG_RD			0x8B // DS1302���ܼĴ���������
#define	DS1302_YEAR_REG_WR			0x8C // DS1302����Ĵ���д����
#define	DS1302_YEAR_REG_RD			0x8D // DS1302����Ĵ���������

#define	DS1302_CONTROL_REG_WR		0x8E // DS1302�Ŀ��ƼĴ���д����
#define	DS1302_CONTROL_REG_RD		0x8F // DS1302�Ŀ��ƼĴ���������


#define DEFAULT_RTC_YEAR 	0x08
#define DEFAULT_RTC_MONTH 	0x08
#define DEFAULT_RTC_DAY 	0x08
#define DEFAULT_RTC_HOUR 	0x08
#define DEFAULT_RTC_MINUTE 	0x08
#define DEFAULT_RTC_SECOND  0x08
#define DEFAULT_RTC_WEEK	0x01


//**--------------���ݽṹ-----------------------------------------------------

//**--------------��������-----------------------------------------------------
void
init_ds1302(
	void
	); // ds1302��ʼ��
	
void
ds1302_get_time(
	void
	); // ��ȡ��ǰDS1302�ڲ�ʱ��,��ȡ���ʱ����Ϣ�����time�ṹ����
	
void
ds1302_set_time(
	void
	); // Ҫ���õ�ʱ��ֵ�Ѵ洢��time��
	
BYTE
ds1302_read(
	BYTE address
	);

void
ds1302_write(
	BYTE address,
	BYTE data
	);
		
//**--------------ȫ�ֱ���-----------------------------------------------------
extern BYTE day, month, year, hour, minute, second, week;

#endif // _AJ_DS1302_H

hello meijie
/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: main.c
** 创   建   人: 宋志康
** 版        本: V0.3
** 最后修改日期: 2016-08-30
** 描        述: 网络版电梯刷卡系统方案的读卡器主程序
** 编        译: xc8
** 硬        件: aj-b-dk-g-v3 2016-6-23 PIC16F1947
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

/******************************************************************************
                           固件代码设计
1-驱动层
	24c02.c 			通过i/o模拟i2c时序操作24c02 提供字节读，字节写接口函数
	input.c 			拨码开关
	beep.c   			蜂鸣器驱动接口
	aqw414.c 			光耦继电器驱动接口
	delay.c  			延时函数接口
	ds1302.c 			RTC驱动接口
	led.c 				用户指示灯驱动接口
	timer.c 			定时器驱动接口
	mfrc500.c 			ic卡驱动接口
	uart.c 				串口通讯接口
	interrupt.c 		中断服务程序处理
2-应用层
	other.c 			数据校验处理
	test.c 				测试硬件处理
	handle_floor.c 		读卡器与楼层控制器通讯处理
	handle_ic_card.c	与ic卡通讯处理
	handle_config.c 	配置读卡器处理
	handle_rs485.c 		读卡器与服务器通讯处理
	handle_timer.c 		处理定时器
3-中间层
4-主程序
	main.c 主程序处理
5-代码流程
	驱动层初始化
	应用层初始化
	中间层初始化
	超级循环处理
	中断服务程序处理
6-超级循环处理
	A-喂狗
	B-检测消防信号输入
	C-检测与计算机通讯
	D-检测定时器
	E-检测用户刷卡
7-中断服务程序处理
	A-UART1接收数据中断处理
	B-UART2接收数据中断处理
    C-定时器溢出中断处理
**-----------------------------------------------------------------------------
*******************************************************************************/

//**--------------头文件-------------------------------------------------------
#include <xc.h>
#include <GenericTypeDefs.h>

#include <stdio.h>
#include <string.h>

#include "delay.h"
#include "uart.h"
#include "led.h"
#include "timer.h"
#include "interrupt.h"
#include "beep.h"
#include "ds1302.h"
#include "24c02.h"
#include "mfrc500.h"
#include "other.h"
#include "input.h"

#include "handle_rs485.h"
#include "handle_floor.h"
#include "handle_config.h"
#include "handle_ic_card.h"
#include "handle_timer.h"
#include "test.h"


//**--------------配置位(只针对PIC系列单片机)----------------------------------
#pragma config FOSC = 0x04 		// bit2-0 振荡器选择位
                           		// 111 = ECH：外部时钟，高功耗模式：RA7/OSC1/CLKIN引脚为CLKIN功能    	芯片出厂默认值
                           		// 110 = ECM：外部时钟，中等功耗模式：RA7/OSC1/CLKIN引脚为CLKIN功能
                           		// 101 = ECL：外部时钟，低功耗模式：RA7/OSC1/CLKIN引脚为CLKIN功能
                           		// 100 = INTOSC振荡器：RA7/OSC1/CLKIN引脚为I/O功能	使用内部振荡器
                           		// 011 = EXTRC振荡器：RA7/OSC1/CLKIN引脚为RC功能
                           		// 010 = HS振荡器：高速晶振/谐振器连接到RA6/OSC2/CLKOUT和RA7/OSC1/CLKIN引脚
                           		// 001 = XT振荡器：晶振/谐振器连接到RA6/OSC2/CLKOUT和RA7/OSC1/CLKIN引脚
                           		// 000 = LP振荡器：低功耗晶振连接到RA6/OSC2/CLKOUT和RA7/OSC1/CLKIN引脚
                           		
#pragma config WDTE = 0x03 		// bit4-3 看门狗定时器使能位
                           		// 11 = 使能WDT   														芯片出厂默认值
								// 10 = WDT在运行时使能，休眠时禁止
								// 01 = WDT由WDTCON寄存器中的SWDTEN位控制
								// 00 = 禁止WDT
								
//#pragma config PWRTE = 0x01 	// bit5 上电延时定时器使能位 注意 使能欠压复位并不能自动使能上电延时定时器
                            	// 1 = 禁止PWRT															芯片出厂默认值
								// 0 = 使能PWRT
								
//#pragma config MCLRE = 0x01	// bit6 RE3/MCLR/VPP引脚功能选择位
								// 如果LVP位 = 1：忽略此位
								// 如果LVP位 = 0：1 = RE3/MCLR/VPP引脚功能为MCLR；使能弱上拉功能		芯片出厂默认值
								//                0 = RE3/MCLR/VPP引脚功能为数字输入；内部禁止MCLR；弱上拉功能由WPUE3位控制
								
//#pragma config CP = 0x01		// bit7 代码保护位 注意 当关闭代码保护时，将擦除整个程序存储器的内容
                                // 1 = 禁止程序存储器代码保护											芯片出厂默认值
								// 0 = 使能程序存储器代码保护
								
//#pragma config CPD = 0x01 	// bit8 数据代码保护位 注意 擦除操作期间关闭代码保护时，将擦除整个数据EEPROM的内容
 								// 1 = 禁止数据存储器代码保护											芯片出厂默认值
								// 0 = 使能数据存储器代码保护
								
//#pragma config BOREN = 0x03		// bit10-9 欠压复位使能位 注意 使能欠压复位并不能自动使能上电延时定时器
								// 11 = 使能BOR															芯片出厂默认值
								// 10 = BOR在工作时使能，在休眠时禁止
								// 01 = BOR由BORCON寄存器的SBOREN位控制
								// 00 = 禁止BOR
								
//#pragma config CLKOUTEN = 0x01	// bit11 时钟输出使能位
								// 1 = 禁止CLKOUT功能，即禁止RA6/CLKOUT引脚上的I/O或振荡器功能			芯片出厂默认值
								// 0 = 使能RA6/CLKOUT引脚上的CLKOUT功能
								
//#pragma config IESO = 0x01		// bit12 内部/外部时钟切换位
                                // 1 = 使能内部/外部时钟切换模式										芯片出厂默认值
								// 0 = 禁止内部/外部时钟切换模式

#pragma config FCMEN = 0x00		// bit13 故障保护时钟监视器使能位
                                // 1 = 使能故障保护时钟监视器											芯片出厂默认值
								// 0 = 禁止故障保护时钟监视器


//#pragma config WRT = 0x03		// bit1-0 闪存自写保护位
                                // 8 KW闪存 （仅PIC16F/LF1946）：
								// 11 = 写保护关闭														芯片出厂默认值
								// 10 = 000h至1FFh受写保护，200h至1FFFh可以由EECON控制寄存器修改
								// 01 = 000h至FFFh受写保护，2000h至1FFFh可以由EECON控制寄存器修改
								// 00 = 000h至1FFFh受写保护，无可由EECON控制寄存器修改的地址
								
								// 16 KW闪存 （仅PIC16F/LF1947）：
								// 11 = 写保护关闭
								// 10 = 000h至1FFh受写保护，200h至3FFFh可以由EECON控制寄存器修改
								// 01 = 000h至1FFFh受写保护，2000h至3FFFh可以由EECON控制寄存器修改
								// 00 = 000h至3FFFh受写保护，无可由EECON控制寄存器修改的地址
								
//#pragma config VCAPEN = 0x01	// bit4 稳压器电容使能位
                                // 0 = 在RF0引脚上使能VCAP功能											芯片出厂默认值
								// 1 = VCAP引脚上无电容

#pragma config PLLEN = 0x00		// bit8 PLL使能位
                                // 1 = 使能4xPLL														芯片出厂默认值
								// 0 = 禁止4xPLL

//#pragma config STVREN = 0x01	// bit9 堆栈上溢/下溢复位使能位
                                // 1 = 堆栈上溢或下溢将导致复位											芯片出厂默认值								
								// 0 = 堆栈上溢或下溢不会导致复位

//#pragma config BORV = 0x01		// bit10 欠压复位电压选择位
 								// 1 = 欠压复位电压设置为1.9V											芯片出厂默认值
								// 0 = 欠压复位电压设置为2.5V
								
//#pragma config LVP = 0x01		// bit13 低压编程使能位
								// 1 = 使能低压编程														芯片出厂默认值
								// 0 = 必须使用MCLR/VPP引脚上的高压进行编程

//**--------------全局变量-----------------------------------------------------


  		                 
//**--------------宏定义-------------------------------------------------------

//**--------------函数申明-----------------------------------------------------

//**--------------函数定义-----------------------------------------------------
/******************************************************************************
** 函数名称 : init_osc
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 配置系统时钟 8MHZ
** 全局变量 : 无
** 作    者 : 宋志康
** 日    期 : 2016-08-30
** 修    改 : 无
** 版    本 : V0.3
*******************************************************************************/
void
init_osc(
	void
	)
{
	OSCCON = 0x70; // 0b0111 0000 振荡器控制寄存器
}

/******************************************************************************
** 函数名称 : init_port
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 初始化端口
** 全局变量 : 无
** 作    者 : 宋志康
** 日    期 : 2016-08-30
** 修    改 : 无
** 版    本 : V0.3
*******************************************************************************/
void
init_port(
	void
	)
{
	ANSELA = 0x00; // 将 RA5 RA<3:0> 引脚选择为数字功能
	ANSELE = 0x00; // 将 RE<7:0> 引脚选择为数字功能
	ANSELF = 0x00; // 将 RF<7:0> 引脚选择为数字功能
	ANSELG = 0x00; // 将 RG<4:0> 引脚选择为数字功能
}

/******************************************************************************
** 函数名称 : init_hardware
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 初始化读卡器硬件
** 全局变量 : 无
** 作    者 : 宋志康
** 日    期 : 2016-08-30
** 修    改 : 无
** 版    本 : V0.3
*******************************************************************************/
void
init_hardware(
	void
	) // 初始化硬件
{
	init_osc(); // 配置单片机系统时钟
    init_port(); // 配置单片机端口
	init_led(); // 初始化用户led
	init_timer1(); //初始化定时器1
	init_beep(); // 初始化蜂鸣器
	init_uart1(); // 初始化uart1
	init_uart2(); // 初始化uart2
	init_ds1302(); // 初始化ds1302
	init_i2c(); // 初始化i2c,用来操作24c256
	init_interrupt(); // 初始化中断
	init_mfrc500(); // 初始化mfrc500
	RC500Config();
	RC500OutSelect(0x02);
	CLRWDT();
    RB4 = 0x01; // 414 的7脚与8脚断开，所有按键不可按 2014-02-12
	RB5 = 0x01; // 414 的5脚与6脚断开，所有按键不可按 2014-02-12
}

/******************************************************************************
** 函数名称 : main
** 输入参数 : 无
** 输出参数 : 无
** 功能描述 : 主函数
** 全局变量 : 无
** 作    者 : 宋志康
** 日    期 : 2016-08-30
** 修    改 : 无
** 版    本 : V0.3
*******************************************************************************/
int
main(
	void
	) // 主函数
{
	BYTE pwd = 0x00;
	
	init_hardware(); // 初始化硬件
	LED1_ON; // 灯亮
	LED2_ON;
	BEEP_ON; // 蜂鸣器响
	delay_ms(500);
	BEEP_OFF; // 蜂鸣器不响
	LED1_OFF; // 灯灭
	LED2_OFF;
	
	for (BYTE i = 0x00; i < 0x04; i++)
	{
		card_id[i] = 0x00;
	}
	
	sector_number = read_24c02(ADDRESS_SECTOR); // 读出扇区号
	group = read_24c02(ADDRESS_GROUP); // 读出读卡器群组号
	if (read_24c02(ADDRESS_STATE) == 0xAA) // 刷卡功能开关
	{
		is_enable = 0x01;// 刷卡功能打开
		
	}
	else
	{
		is_enable = 0x00; // 刷卡功能关闭
	}
	
	if (read_24c02(ADDRESS_REPORT_THE_LOSS_COUNT) == 0xFF)
	{
		write_24c02(ADDRESS_REPORT_THE_LOSS_COUNT, 0x00); // 清挂失卡次数
	}

	if (is_enable) // 刷卡功能启动
	{
		uart1_send_byte(0xF0); // 发送指定的数据给楼层板，由楼层板控制启动刷卡功能
		uart1_send_byte(0xF1);
		uart1_send_byte(0xFF);	
	}
	else // 刷卡功能关闭
	{
		LED1_OFF; // 熄灭灯
		uart1_send_byte(0xF0); // 发送指定的数据给楼层板，由楼层板控制关闭刷卡功能
		uart1_send_byte(0xF1);
		uart1_send_byte(0xFE);
	}
	
	if (read_24c02(ADDRESS_PROJECT_PASSWORD_FLAG) == 0xEF) // 检查加密标志  2016-08-09 szk add
	{
		for (BYTE j = 0x00; j < LENGTH_PROJECT_PASSWORD; j++) // 解密数据
		{
			pwd = read_24c02(ADDRESS_PROJECT_PASSWORD + j);
			for (WORD i = 0x00; i < 0x100; i++)
			{
				if (PWD_TABLE[i] == pwd)
				{
					keys[j] = i; // 保存卡片密码
					break;
				}
				else // 解密出错
				{
					// do nothing
				}
			}
		}
	}
	else
	{
			// do nothing
	}


	do {
		CLRWDT(); // 喂狗，不喂狗系统一直重新启动
		if (flag_uart1_cmd) // 处理读卡器配置，可以通过串口配置读卡器设备参数，如系统时间等等，请查看<<读卡器配置通讯协议>>
		{
			flag_uart1_cmd = 0x00;
			handle_config();
		}
		if (flag_uart2_cmd) // 接收群控器rs485数据
		{
			flag_uart2_cmd = 0x00;
			handle_rs485();
		}
		if (flag_timer) // 定时器，1秒钟一次
		{
			flag_timer = 0x00; // 清定时器到标志
			handle_timer();
		}
		handle_ic_card(); // 处理读卡
	} while (1);
}

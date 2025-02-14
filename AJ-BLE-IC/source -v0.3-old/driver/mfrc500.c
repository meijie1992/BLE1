/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: mfrc500.c
** 创   建   人: 宋志康
** 版        本: V0.3
** 最后修改日期: 2016-08-30
** 描        述: 射频芯片驱动
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

#include <stdio.h>
#include <string.h>

#include "mfrc500.h"
#include "string.h"
#include "uart.h"
#include "delay.h"

//**--------------全局变量-----------------------------------------------------
struct MfCmdInfo *MpIsrInfo = 0x00;
BYTE *MpIsrOut = 0x00;
BYTE *MpIsrIn = 0x00;

unsigned char bank1 MSndBuffer[16];
unsigned char bank1 MRcvBuffer[16];


//**--------------函数申明-----------------------------------------------------



//**--------------函数定义-----------------------------------------------------
void
init_mfrc500(
	void
	)
{
	MRFC500_RST_TRIS = 0x00; // 设置RB3输出
	MRFC500_CS_TRIS = 0x00; // 设置RE2输出
	MRFC500_DS_TRIS = 0x00; // 设置RE0输出
	MRFC500_AS_TRIS = 0x00; // 设置RA5输出
	MRFC500_RD_WR_TRIS = 0x00; // 设置RE1输出
	MRFC500_PORT_TRIS = 0xFF; // 端口D为输入
	
	MRFC500_RST_CLR; // 
    MRFC500_CS_SET; // 片选信号，低电平有效
    MRFC500_RD_WR_SET; // 读写控制信号，高电平读，低电平写
    MRFC500_DS_SET; // 数据
    MRFC500_AS_CLR; // 地址
}

void
PutRC500(
	BYTE address,
	BYTE data
	)
{
	MRFC500_CS_SET; // 片选信号无效，低电平有效
	MRFC500_PORT_TRIS = 0x00; // 端口D为输出
	MRFC500_PORT = address; // 写地址
	MRFC500_AS_SET; // 地址存储有效
	MRFC500_AS_CLR; // 地址存储无效
	MRFC500_RD_WR_CLR; // 读/写信号为写
	MRFC500_CS_CLR; // 片选信号有效
	MRFC500_PORT = data; // 写数据
	MRFC500_DS_CLR; // 数据存储有效
	NOP();
	NOP();
	NOP();
	MRFC500_DS_SET; // 数据存储无效
	MRFC500_CS_SET; // 片选信号无效，低电平有效
	MRFC500_RD_WR_SET; // 读/写信号为读
	MRFC500_PORT_TRIS = 0xFF; // 端口D为输入
}


BYTE
GetRC500(
	BYTE address
	)
{
	BYTE tmp;
	
	MRFC500_CS_SET; // 片选无效
	MRFC500_PORT_TRIS = 0x00; // 端口D为输出
	MRFC500_PORT = address; // 写地址
	MRFC500_AS_SET; // 地址存储有效
	MRFC500_AS_CLR; // 地址存储无效
	MRFC500_PORT_TRIS = 0xFF; // 端口D为输入
	MRFC500_RD_WR_SET; // 读/写信号为读
	MRFC500_CS_CLR; // 片选有效
	MRFC500_DS_CLR; // 数据存储有效
	tmp = MRFC500_PORT; // 读端口D数据
	MRFC500_DS_SET; // 数据存储无效
	MRFC500_CS_SET; // 片选无效
	
	return tmp;
}

void
WriteRC(
	BYTE address,
	BYTE data
	)
{
    PutRC500(0x00, GET_REG_PAGE(address)); // 写页寄存器
    PutRC500(address, data);
}

BYTE
ReadRC(
	BYTE address
	)
{
    PutRC500(0x00, GET_REG_PAGE(address)); // 写页寄存器
    return GetRC500(address);
}

void
SetBitMask(
	unsigned char reg,
	unsigned char mask
	) // 把某个寄存器的n个位置1，1 <= n <= 8，因为是8位的寄存器
{
    unsigned char tmp = 0x0;
    
    tmp = ReadRC(reg);
    WriteRC(reg, tmp | mask); // set bit mask
}

void
ClearBitMask(
	unsigned char reg,
	unsigned char mask
	) // 把某个寄存器的n个位清0，1 <= n <= 8，因为是8位的寄存器
{
    unsigned char tmp = 0x0;
    
    tmp = ReadRC(reg);
    WriteRC(reg, tmp & ~mask); // clear bit mask
}

void
PcdSetTmo(
	unsigned int tmoLength
	) // 设置超时
{
    switch (tmoLength)
    {
        case 1: // short timeout (1,0 ms)
            WriteRC(RegTimerClock, 0x07); // TAutoRestart = 0, TPrescale = 128
            WriteRC(RegTimerReload, 0x6a); // TReloadVal = 'h6a = 106(dec)
            break;
        case 2: // medium timeout (1,5 ms)
            WriteRC(RegTimerClock, 0x07); // TAutoRestart = 0, TPrescale = 128
            WriteRC(RegTimerReload, 0xa0);// TReloadVal = 'ha0 = 160(dec)
            break;
        case 3: // long timeout (6 ms)
            WriteRC(RegTimerClock, 0x09); // TAutoRestart = 0, TPrescale = 4 * 128
            WriteRC(RegTimerReload, 0xa0);// TReloadVal = 'ha0 = 160(dec)
            break;
        case 4: // long timeout (9.6 ms)
            WriteRC(RegTimerClock, 0x09); // TAutoRestart=0,TPrescale=4*128
            WriteRC(RegTimerReload, 0xff);// TReloadVal = 'ff =255(dec)
            break;
        default: // short timeout (1,0 ms)
            WriteRC(RegTimerClock, 0x07); // TAutoRestart=0,TPrescale=128
            WriteRC(RegTimerReload, tmoLength);// TReloadVal = tmoLength
            break;
    }
}

void
FlushFIFO(
	void
	)
{
    SetBitMask(RegControl, 0x01);
}

char
PcdRfReset(
	unsigned char ms
	)
{
	char ret_status = MI_OK;
    unsigned int i;
    
    ClearBitMask(RegTxControl, 0x03); // Tx2RF-En, Tx1RF-En disable
    if (ms > 0)
   	{
    	for (i = 0; i < 1050; i++);
        SetBitMask(RegTxControl, 0x03); // Tx2RF-En, Tx1RF-En enable
   	}
    
    return ret_status;
}

void
ISR_RC500(
	void
	)
{
    unsigned char irqBits;
    unsigned char irqMask;
    unsigned char oldPageSelect;
    unsigned char nbytes;
    unsigned char cnt;
    
    if (MpIsrInfo && MpIsrOut && MpIsrIn) // transfer pointers have to be set
    {
        oldPageSelect = GetRC500(RegPage); // save old page select
        PutRC500(RegPage, 0x80); // select page 0 for ISR
        while ((GetRC500(RegPrimaryStatus) & 0x08)) // loop while IRQ pending
        {
            irqMask = GetRC500(RegInterruptEn); // read enabled interrupts
            irqBits = GetRC500(RegInterruptRq) & irqMask;
            MpIsrInfo->irqSource |= irqBits; // save pending interrupts
            if (irqBits & 0x01) // LoAlert
           	{
           		nbytes = 0x40 - GetRC500(RegFIFOLength);
                if ((MpIsrInfo->nBytesToSend - MpIsrInfo->nBytesSent) <= nbytes)
               	{
                    nbytes = MpIsrInfo->nBytesToSend - MpIsrInfo->nBytesSent;
                    PutRC500(RegInterruptEn, 0x01); // disable LoAlert IRQ
               	}
                for (cnt = 0; cnt < nbytes; cnt++)
               	{
                    PutRC500(RegFIFOData, MpIsrOut[MpIsrInfo->nBytesSent]);
                    MpIsrInfo->nBytesSent++;
               	}
                PutRC500(RegInterruptRq, 0x01); // reset IRQ bit
           	}
            if (irqBits & 0x10) // TxIRQ
           	{
                PutRC500(RegInterruptRq, 0x10); // reset IRQ bit
                PutRC500(RegInterruptEn, 0x82); // enable HiAlert Irq for response
                if (MpIsrInfo->cmd == PICC_ANTICOLL1) // if cmd is anticollision
               	{
                    PutRC500(RegChannelRedundancy, 0x02); // RxCRC and TxCRC disable, parity disable
                    PutRC500(RegPage, 0x00); // reset page address
				}
			}
            if (irqBits & 0x0E) // HiAlert, Idle or RxIRQ
			{
                nbytes = GetRC500(RegFIFOLength);
                for (cnt = 0; cnt < nbytes; cnt++)
               	{
                    MpIsrIn[MpIsrInfo->nBytesReceived] = GetRC500(RegFIFOData);
                    MpIsrInfo->nBytesReceived++;
               	}
                PutRC500(RegInterruptRq, 0x0A & irqBits);
			}
            if (irqBits & 0x04) // Idle IRQ
			{
                PutRC500(RegInterruptEn, 0x20); // disable Timer IRQ
                PutRC500(RegInterruptRq, 0x20); // disable Timer IRQ request
                irqBits &= ~0x20; // clear Timer IRQ in local var
                MpIsrInfo->irqSource &= ~0x20; // clear Timer IRQ in info var
                PutRC500(RegInterruptRq,0x04); // reset IRQ bit
			}
            if (irqBits & 0x20) // timer IRQ
			{
                PutRC500(RegInterruptRq, 0x20); // reset IRQ bit
                MpIsrInfo->status = MI_NOTAGERR; // timeout error
			}
        }
        PutRC500(RegPage, oldPageSelect | 0x80);
    }
}

char
PcdReset(
	void
	)
{
	
    unsigned int i, count01, count02;
    char ret_status = MI_OK;
	
    MRFC500_RST_CLR; // RSTPD脚由高变低的时候复位
    
    for (i = 0; i < 16500; i++)
    {
    	CLRWDT();
    }
   	MRFC500_RST_SET;
   	
    for (i = 0; i < 1650; i++)
    {
    	CLRWDT();
    }
    MRFC500_RST_CLR;
    MRFC500_CS_CLR;
    MRFC500_RD_WR_SET;
    MRFC500_DS_SET;
    MRFC500_AS_CLR;
    
    count01 = Timecount;
    count02 = 21;
    // 检查是否复位成功，RegCommand & 0x3F = 0x3F?
	while (((GetRC500(RegCommand) & 0x3F) != 0x3F) && (!(count02 == 0)))
    {
        count01--;
        if (count01 == 0)
        {
            count01 = Timecount;
            count02--;
        }
    };
    // 命令寄存器的Bit[0..5]不为全1，则认为复位不成功
    while ((GetRC500(RegCommand) & 0x3F) && (!(count02 == 0)))
    {
        CLRWDT();
        count01--;
        if (count01 == 0)
        {
            count01 = Timecount;
            count02--;
        }
    };
    if (count02 == 0)
    {
        ret_status = MI_RESETERR; // 芯片复位不正确
    }
    
    if (ret_status == MI_OK)
    {
        PutRC500(RegPage, 0x80); // Dummy access in order to determine the bus
        MRFC500_AS_CLR;
        ret_status = GetRC500(RegCommand);
        if (ret_status != MI_OK)
        {
            ret_status = MI_INTERFACEERR;
        }
        else
        {
            PutRC500(RegPage, 0x00); // sequence is ok
        }
    }
    
    return ret_status;
}

// 设置RC500配置
char
RC500Config(
	void
	)
{
    unsigned char i;
    char ret_status = MI_RESETERR;
    
    ret_status = PcdReset();
    if (ret_status == MI_OK)
    {
        WriteRC(RegClockQControl, 0x80); // RegClockQControl:0x1f
        for (i = 0; i < 205; i++);
        {
        	WriteRC(RegClockQControl, 0xc0); // 新加
        }
        for (i = 0; i < 105; i++);
        {
        	ClearBitMask(RegClockQControl, 0x40);
        }
        WriteRC(RegBitPhase, 0xAD);
        WriteRC(RegRxThreshold, 0xff);
        WriteRC(RegRxControl1, 0x73);
        WriteRC(RegRxControl2, 0x81);
        WriteRC(RegFIFOLevel, 0x4);
        WriteRC(RegTimerControl, 0x02);
        PcdSetTmo(1);
        WriteRC(RegIRqPinConfig, 0x3);
        PcdRfReset(1);
    }
    
    return ret_status;
}

char
RC500OutSelect(
	unsigned char type
	)
{
   WriteRC(RegMfOutSelect, type & 0x7);
   
   return MI_OK;
}

char
PcdSingleResponseCmd(
	unsigned char cmd
	)
{
    char ret_status = MI_OK;
    unsigned char tmpStatus ;
    unsigned char lastBits;
    unsigned char irqEn = 0x0;
    unsigned char waitFor = 0x0;
    unsigned int count01, count02;

    WriteRC(RegInterruptEn, 0x3F); // disable all interrupts
    WriteRC(RegInterruptRq, 0x7F); // reset interrupt requests
    WriteRC(RegCommand, 0x00); // terminate probably running command
    FlushFIFO(); // flush FIFO buffer
    MpIsrInfo = &MInfo;
    MpIsrOut = MSndBuffer;
    MpIsrIn = MRcvBuffer;
    MInfo.irqSource = 0x00; // reset interrupt flags
    switch (cmd)
   	{
        case 0x00: // Idle
            irqEn = 0x00;
            waitFor = 0x00;
            break;
        case 0x01: // WriteE2, 写 FIFO数据到E2PROM命令
            irqEn = 0x11; // TxIEN,LoAlertIEN
            waitFor = 0x10;
            break;
        case 0x03: // ReadE2, 读 E2PROM 数据到 FIFO 命令
            irqEn = 0x07; // IdleIEN, HiAlertIEN, LoAlertIEN
            waitFor = 0x04;
            break;
        case 0x07: // LoadConfig, 读E2PROM数据到初始化RC500寄存器
        case 0x0B: // LoadKeyE2, 从 E2PROM 中读密码数据到密码缓冲区
        case 0x0C: // Authent1, 执行第一加密处理
            irqEn = 0x05; // IdleIEN, LoAlertIEN
            waitFor = 0x04;
            break;
        case 0x12: // CalcCRC, CRC 计算
            irqEn = 0x11; // TxIEN,LoAlertIEN
            waitFor = 0x10;
            break;
        case 0x14: // Authent2, 执行第二加密处理
            irqEn = 0x04; // IdleIEN
            waitFor = 0x04;
            break;
        case 0x16: // Reiceiv, 接收
            MInfo.nBitsReceived = -(ReadRC(RegBitFraming) >> 4);
            irqEn = 0x06; // IdleIEN, HiAlertIEN
            waitFor = 0x04;
            break;
        case 0x19: // LoadKey, 从 FIFO 中读数据进密码缓冲区
            irqEn = 0x05; // IdleIEN, LoAlertIEN
            waitFor = 0x04;
            break;
        case 0x1A: // Transmit, 发送
            irqEn = 0x05; // IdleIEN, LoAlertIEN
            waitFor = 0x04;
            break;
        case 0x1E: // Transceive, 收发命令
            MInfo.nBitsReceived = -(ReadRC(RegBitFraming) >> 4);
            irqEn = 0x3D; // TimerIEN, TxIEN, RxIEN, IdleIEN, LoAlertIEN  0x0011 1101
            waitFor = 0x04;
            break;
        default:
            ret_status = MI_UNKNOWN_COMMAND;
 	}
 	
    if (ret_status == MI_OK)
   	{
        irqEn |= 0x20; // always enable timout irq
        waitFor |= 0x20; // always wait for timeout
        count01 = Timecount; // initialise and start guard timer for reader
        count02 = 20;
        WriteRC(RegInterruptEn, irqEn | 0x80); // necessary interrupts are enabled
        WriteRC(RegCommand, cmd); // start command
        while (!(MpIsrInfo->irqSource & waitFor)) // 超级循环，等待操作完成
      	{
            ISR_RC500();
            if (count02 == 0)
                break;
            count01--;
            if (count01 == 0)
            {
                count01 = Timecount;
                count02--;
          	}
      	}; // wait for cmd completion or timeout

        WriteRC(RegInterruptEn, 0x3F); // disable all interrupts
        WriteRC(RegInterruptRq, 0x7F); // clear all interrupt requests
        SetBitMask(RegControl, 0x04); // stop timer now

        WriteRC(RegCommand, 0x00); // reset command register
        if (count02 == 0)
       	{
            ret_status = MI_ACCESSTIMEOUT;
       	}
        else
       	{
            ret_status = MpIsrInfo->status; // set status
      	}
        if (ret_status == MI_OK) // no timeout error occured
       	{
            if ((tmpStatus = (ReadRC(RegErrorFlag) & 0x17))) // error occured
          	{
                if (tmpStatus & 0x01)   // collision detected
               	{
                    MInfo.collPos = ReadRC(RegCollPos); // read collision position
                    ret_status = MI_COLLERR;
               	}
                else
               	{
                    MInfo.collPos = 0;
                    if (tmpStatus & 0x02)   // parity error
                   	{
                        ret_status = MI_PARITYERR;
                  	}
               	}
                if (tmpStatus & 0x04)   // framing error
               	{
                    ret_status = MI_FRAMINGERR;
               	}
                if (tmpStatus & 0x10)   // FIFO overflow
               	{
                    FlushFIFO();
                    ret_status = MI_OVFLERR;
               	}
                if (tmpStatus & 0x08) // CRC error
               	{
                    ret_status = MI_CRCERR;
               	}
               	// if (ret_status == MI_OK)
              	// ret_status = MI_NY_IMPLEMENTED;
          	}
			if (cmd == 0x1E)
           	{
                lastBits = ReadRC(RegSecondaryStatus) & 0x07;
                if (lastBits)
               	{
                	MInfo.nBitsReceived += (MInfo.nBytesReceived - 1) * 8 + lastBits;
               	}
                else
                {
                    MInfo.nBitsReceived += MInfo.nBytesReceived * 8;
             	}
          	}
      	}
        else
       	{
            MInfo.collPos = 0x00;
      	}
  	}
    MpIsrInfo = 0;  // reset interface variables for ISR
    MpIsrOut = 0;
    MpIsrIn = 0;

    return ret_status;
}

char
Mf500PiccCommonRequest(
	unsigned char req_code,
	unsigned char *atq
	)
{
    char ret_status = MI_OK;
    //BYTE test_data = 0x00;
    PcdSetTmo(106);
    // 关闭CRC校验，采用偶校验，RegChannelRedundancy是校验标志寄存器
    WriteRC(RegChannelRedundancy, 0x03); // RxCRC and TxCRC disable, parity enable
    WriteRC(RegControl, 0x08);

    WriteRC(RegBitFraming, 0x07); // set TxLastBits to 7

    ResetInfo(MInfo);

    MSndBuffer[0] = req_code;
    MInfo.nBytesToSend = 0x01;
    ret_status = PcdSingleResponseCmd(0x1e);
    if (ret_status) // error occured
    {
        *atq = 0x00;
    }
    else
    {
        if (MInfo.nBitsReceived != 0x10) // 2 bytes expected
        {
            ret_status = MI_BITCOUNTERR;
        }
        else
        {
            ret_status = MI_OK;
            memcpy(atq, MRcvBuffer, 0x02);
        }
    }
    
    return ret_status;
}

BYTE
Mf500PiccRequest(
	BYTE req_code,
	BYTE *atq
	)
{
    return Mf500PiccCommonRequest(req_code, atq);
}

char
Mf500PiccCascAnticoll(
	unsigned char select_code,
	unsigned char bcnt,
	unsigned char *snr
	)
{
    signed char ret_status = MI_OK;
    unsigned char snr_in[4]; // copy of the input parameter snr
    unsigned char nbytes = 0; // how many bytes received
    unsigned char nbits = 0; // how many bits received
    unsigned char complete = 0; // complete snr recived
    unsigned char i = 0;
    unsigned char byteOffset = 0;
    unsigned char snr_crc; // check byte calculation
    unsigned char snr_check;
    unsigned char dummyShift1; // dummy byte for snr shift
    unsigned char dummyShift2; // dummy byte for snr shift

  	PcdSetTmo(106);
   	memcpy(snr_in, snr, 4);
   	WriteRC(RegDecoderControl, 0x28); // ZeroAfterColl aktivieren
   	ClearBitMask(RegControl, 0x08);  // disable crypto 1 unit
   	complete = 0;
   	while (!complete && (ret_status == MI_OK) )
   	{
		ResetInfo(MInfo);
      	WriteRC(RegChannelRedundancy,0x03); // RxCRC and TxCRC disable, parity enable
    	nbits = bcnt % 8; // remaining number of bits
      	if (nbits)
		{
			WriteRC(RegBitFraming,nbits << 4 | nbits); // TxLastBits/RxAlign auf nb_bi
           	nbytes = bcnt / 8 + 1;
           	if (nbits == 7)
           	{
            	MInfo.cmd = PICC_ANTICOLL1; // pass command flag to ISR
               	WriteRC(RegBitFraming,nbits); // reset RxAlign to zero
           	}
      	}
       	else
		{
        	nbytes = bcnt / 8;
       	}
        MSndBuffer[0] = select_code;
        MSndBuffer[1] = 0x20 + ((bcnt/8) << 4) + nbits; //number of bytes send
        for (i = 0; i < nbytes; i++)    // Sende Buffer beschreiben
        {
        	MSndBuffer[i + 2] = snr_in[i];
       	}
        MInfo.nBytesToSend = 2 + nbytes;
        ret_status = PcdSingleResponseCmd(0x1e);
        if (nbits == 7)
     	{
        	dummyShift1 = 0x00;
          	for (i = 0; i < MInfo.nBytesReceived; i++)
			{
            	dummyShift2 = MRcvBuffer[i];
              	MRcvBuffer[i] = (dummyShift1 >> (i+1)) | (MRcvBuffer[i] << (7-i));
              	dummyShift1 = dummyShift2;
           	}
           	MInfo.nBitsReceived -= MInfo.nBytesReceived; // subtract received parity bits
           	if ( MInfo.collPos )
           		MInfo.collPos += 7 - (MInfo.collPos + 6) / 9;
       	}
        if ( (ret_status == MI_OK) || (ret_status == MI_COLLERR))   // no other occured
		{
        	if ( MInfo.nBitsReceived != (40 - bcnt) ) // not 5 bytes answered
			{
            	ret_status = MI_BITCOUNTERR;
           	}
            else
			{
            	byteOffset = 0;
              	if (nbits != 0) // last byte was not complete
              	{
                	snr_in[nbytes - 1] = snr_in[nbytes - 1] | MRcvBuffer[0];
                   	byteOffset = 1;
               	}
               	for (i = 0; i < (4 - nbytes); i++)
               	{
                 	snr_in[nbytes + i] = MRcvBuffer[i + byteOffset];
               	}
                if (ret_status != MI_COLLERR ) // no error and no collision
				{
                	snr_crc = snr_in[0] ^ snr_in[1] ^ snr_in[2] ^ snr_in[3];
                   	snr_check = MRcvBuffer[MInfo.nBytesReceived - 1];
                   	if (snr_crc != snr_check)
                   	{
                    	ret_status = MI_SERNRERR;
                   	}
                    else
                   	{
                    	complete = 1;
                  	}
               	}
				else // collision occured
              	{
                	bcnt = bcnt + MInfo.collPos - nbits;
                  	ret_status = MI_OK;
               	}
          	}
      	}
    }
    if (ret_status == MI_OK)
   	{
    	memcpy(snr, snr_in, 4);
   	}
    else
  	{
		for (i = 0; i < 4; i++)
            snr[i] = 0;
       	memcpy(snr, "0000", 4);
  	}
    ClearBitMask(RegDecoderControl, 0x20); // ZeroAfterColl disable
    
    return ret_status;
}

BYTE
Mf500PiccAnticoll(
	BYTE bcnt,
	BYTE *snr
	)
{
    return Mf500PiccCascAnticoll(0x93, bcnt, snr); // first cascade level
}

char
Mf500PiccCascSelect(
	unsigned char select_code,
	unsigned char *snr
	//unsigned char *sak
	)
{
    char ret_status = MI_OK;
   	
   	PcdSetTmo(106);
    WriteRC(RegChannelRedundancy, 0x0F); // RxCRC,TxCRC, Parity enable
    ClearBitMask(RegControl, 0x08);  // disable crypto 1 unit
    ResetInfo(MInfo);
    MSndBuffer[0] = select_code; // 填充发送缓冲区
    MSndBuffer[1] = 0x70; // number of bytes send
    memcpy(MSndBuffer + 2, snr, 4);
    MSndBuffer[6] = MSndBuffer[2] ^ MSndBuffer[3] ^ MSndBuffer[4] ^ MSndBuffer[5];
   	MInfo.nBytesToSend = 0x07;
   	ret_status = PcdSingleResponseCmd(0x1e);
   	//*sak = 0;
  	if (ret_status == MI_OK) // no timeout occured
   	{
		if (MInfo.nBitsReceived != 8) // last byte is not complete
       	{
			ret_status = MI_BITCOUNTERR;
      	}
		else
		{
			//*sak = MRcvBuffer[0];
      	}
   	}
    
    return ret_status;
}

char
Mf500PiccSelect(
	unsigned char *snr
	//unsigned char *sak
	)
{
    //return Mf500PiccCascSelect(0x93, snr, sak); // first cascade level
	return Mf500PiccCascSelect(0x93, snr); // first cascade level
}

char
Mf500HostCodeKey(
	unsigned char *uncoded, // 6 bytes key value uncoded
	unsigned char *coded // 12 bytes key value coded
	)
{
	unsigned char cnt = 0;
    unsigned char an = 0;
    unsigned char ln = 0; // low nibble
    unsigned char hn = 0; // high nibble

    for (cnt = 0; cnt < 6; cnt++)
    {
    	ln = uncoded[cnt] & 0x0F;
        an = uncoded[cnt];
        hn = an >> 4;
        coded[cnt * 2 + 1] = (~ln << 4) | ln;
        coded[cnt * 2] = (~hn << 4) | hn;
    }
    
    return MI_OK;
 }

BYTE
Mf500PiccAuthState(
	BYTE auth_mode,
 	BYTE *snr,
 	BYTE block
 	)
{
 	BYTE ret_status = MI_OK;

    ret_status = ReadRC(RegErrorFlag); // read error flags of the previous
    if (ret_status != MI_OK)
   	{
     	if (ret_status & 0x40) // key error flag set
        {
        	ret_status = MI_KEYERR;
        }
       	else
        {
        	ret_status = MI_AUTHERR; // generic authentication error
        }
  	}
    else
   	{
    	PcdSetTmo(4);
        MSndBuffer[0] = auth_mode; // write authentication command
        MSndBuffer[1] = block; // write block number for authentication
        memcpy(MSndBuffer + 2, snr, 4); // write 4 bytes card serial number
        ResetInfo(MInfo);
        MInfo.nBytesToSend = 0x06;
       	ret_status = PcdSingleResponseCmd(0x0C);
       	if (ret_status == MI_OK)
       	{
         	if (ReadRC(RegSecondaryStatus) & 0x07)
           	{
            	ret_status = MI_BITCOUNTERR;
           	}
           	else
            {
             	ResetInfo(MInfo);
                MInfo.nBytesToSend = 0x00;
                ret_status = PcdSingleResponseCmd(0x14);
              	if (ret_status == MI_OK)
               	{
                	if (ReadRC(RegControl) & 0x08) // Crypto1 activated
                   	{
                    	ret_status = MI_OK;
                    }
                   	else
                   	{
                     	ret_status = MI_AUTHERR;
                   	}
              	}
          	}
       	}
    }
    
	return ret_status;
}

char
Mf500PiccLoadKey(
	unsigned char *keys
	)
{
	char ret_status = MI_OK;

  	Mf500HostCodeKey(keys, MSndBuffer);

    PcdSetTmo(106);
    FlushFIFO(); // empty FIFO
    ResetInfo(MInfo);
    MInfo.nBytesToSend = 12;
    ret_status = PcdSingleResponseCmd(0x19);
    
    return ret_status;
}

BYTE
Mf500PiccRead(
	BYTE addr,
	BYTE *data1
	) // 卡块读		
{
  	unsigned char i;
  	//unsigned char temp;
    signed char ret_status = MI_OK;

    FlushFIFO(); // empty FIFO
    PcdSetTmo(4);
    WriteRC(RegChannelRedundancy, 0xF); // 新改,原为 0xF, RxCRC, TxCRC, Parity enable
    ResetInfo(MInfo);
    MSndBuffer[0] = PICC_READ; // read command code
    MSndBuffer[1] = addr;
    MInfo.nBytesToSend = 2;
    ret_status = PcdSingleResponseCmd(0x1e); // 
    if (ret_status != MI_OK)
    {
     	if (ret_status != MI_NOTAGERR) // no timeout occured
        {
        	if (MInfo.nBitsReceived == 4) // NACK
            {
            	MRcvBuffer[0] &= 0x0f; // mask out upper nibble
                if ((MRcvBuffer[0] & 0x0a) == 0)
                {
                	ret_status = MI_NOTAUTHERR;
                }
                else
                {
                  	ret_status = MI_CODEERR;
                }
          	}
      	}
        for (i = 0; i < 16; i++)
       	{
       		data1[i] = 0;
       	}
    }
	else // Response Processing
    {
		//temp = MInfo.nBytesReceived;
      	if (MInfo.nBytesReceived != 16)
       	{
        	ret_status = MI_BYTECOUNTERR;
           	for (i = 0; i < 16; i++)
           	{
           		data1[i] = 0x00;
           	}
      	}
      	else
       	{
        	memcpy(data1, MRcvBuffer, 16);
      	}
  	}
  	PcdSetTmo(1);
  	
	return ret_status;
}

BYTE
Mf500PiccWrite(
	BYTE addr,
	BYTE *data1
	) // 卡块写
{
	signed char ret_status = MI_OK;
	
	FlushFIFO();
    PcdSetTmo(4); // long timeout

  	WriteRC(RegChannelRedundancy, 0x07); // 1702为0x07   rc500为0x0f
    ResetInfo(MInfo);
    MSndBuffer[0] = PICC_WRITE; // Write command code
    MSndBuffer[1] = addr;
    MInfo.nBytesToSend = 0x02;
    ret_status = PcdSingleResponseCmd(0x1e);
	if (ret_status != MI_NOTAGERR) // no timeout error
    {
    	if (MInfo.nBitsReceived != 4) // 4 bits are necessary
       	{
        	ret_status = MI_BITCOUNTERR;
      	}
       	else // 4 bit received
       	{
         	MRcvBuffer[0] &= 0x0f; // mask out upper nibble
          	switch(MRcvBuffer[0])
            {
            	case 0x00:
                 	ret_status = MI_NOTAUTHERR;
                 	break;
              	case 0x0a:
                 	ret_status = MI_OK;
                 	break;
              	default:
                 	ret_status = MI_CODEERR;
                 	break;
         	}
      	}
  	}
	if (ret_status == MI_OK)
    {
    	FlushFIFO();
      	PcdSetTmo(3);
       	ResetInfo(MInfo);
      	memcpy(MSndBuffer, data1, 16);
      	MInfo.nBytesToSend = 16;
      	ret_status = PcdSingleResponseCmd(0x1e);
       	if (ret_status != MI_NOTAGERR) // no timeout occured
        {
        	if (MInfo.nBitsReceived != 4) // 4 bits are necessary
			{
            	ret_status = MI_BITCOUNTERR;
           	}
          	else // 4 bit received
           	{
            	MRcvBuffer[0] &= 0x0f; // mask out upper nibble
              	switch(MRcvBuffer[0])
				{
                	case 0x00:
                    	ret_status = MI_WRITEERR;
                       	break;
                  	case 0x0a:
                      	ret_status = MI_OK;
                       	break;
                  	default:
                      	ret_status = MI_CODEERR;
                      	break;
              	}
          	}
    	}
     	PcdSetTmo(1);
   	}
   	
	return ret_status;
}

char
Mf500PiccHalt(
	void
	)
{
	signed char ret_status = MI_CODEERR;

 	PcdSetTmo(106);
    ResetInfo(MInfo);
    MSndBuffer[0] = PICC_HALT; // Halt command code
    MSndBuffer[1] = 0x00; // dummy address
    MInfo.nBytesToSend = 2;
    ret_status = PcdSingleResponseCmd(0x1e);
    if (ret_status)
    {
    	if (ret_status == MI_NOTAGERR || ret_status == MI_ACCESSTIMEOUT)
       	{
        	ret_status = MI_OK;
       	}
  	}
    WriteRC(RegCommand, 0x00);
    
    return ret_status;
 }
 
// ///////////////////////////////////////////////////////////////////////
// //          R E A D   S N R   O F   R E A D E R   I C
// ///////////////////////////////////////////////////////////////////////
char
PcdReadE2(
	unsigned short startaddr,
	unsigned char length,
	unsigned char *data
	)
{
	char status = MI_OK;

	// ************* Cmd Sequence **********************************
    ResetInfo(MInfo);
    MSndBuffer[0] = startaddr & 0xFF;
    MSndBuffer[1] = (startaddr >> 8) & 0xFF;
    MSndBuffer[2] = length;
    MInfo.nBytesToSend = 3;
    status = PcdSingleResponseCmd(PCD_READE2);
    if (status == MI_OK)
    {
    	memcpy(data, MRcvBuffer, length);
    }
    else // Response Processing
    {
       data[0] = 0;
    }
    
    return status;
}

char
PcdWriteE2(
	unsigned short startaddr,
	unsigned char length,
	unsigned char *data
	)
{
	char status = MI_OK;

 	// ************* Cmd Sequence **********************************
   	ResetInfo(MInfo);
   	MSndBuffer[0] = startaddr & 0xFF;
   	MSndBuffer[1] = (startaddr >> 8) & 0xFF;
   	memcpy(MSndBuffer + 2, data, length);
	MInfo.nBytesToSend = length + 2;
	status = PcdSingleResponseCmd(PCD_WRITEE2); // write e2
	
   	return status;
}

char
RC500GetSnr(
	unsigned char *snr
	)
{
   signed char status;

   status = PcdReadE2(0x08, 0x04, snr);
   
   return status;
}


/******************************************************************************
**                           南京安杰信息科技有限公司
**
**                           http://www.njanjar.com
**
**--------------基本文件信息---------------------------------------------------
** 文   件   名: mfrc500.h
** 创   建   人: 宋志康
** 版        本: V0.2
** 最后修改日期: 2016-05-31
** 描        述: mfrc500驱动，采用模拟总线接口方式，复用地址模式
**
**--------------历史版本信息---------------------------------------------------
** 创   建   人: 宋志康
** 版  	     本: V0.2
** 日　      期: 2016-05-31
** 描　      述: mfrc500驱动

** 修   订   人 : 
** 版  	     本 : 
** 修订    日期 : 
** 描　      述 : 
**-----------------------------------------------------------------------------
*******************************************************************************/
#ifndef _AJ_MFRC500_H
#define _AJ_MFRC500_H

//**--------------包含文件-----------------------------------------------------

//**--------------宏定义-------------------------------------------------------
#define MRFC500_RST_TRIS	(TRISEbits.TRISE3)	// RE3 复位信号 方向 输出
#define MRFC500_RST_SET		(LATEbits.LATE3 = 0x01) 		// 输出高电平
#define MRFC500_RST_CLR		(LATEbits.LATE3 = 0x00) 		// 输出低电平

#define MRFC500_CS_TRIS		(TRISEbits.TRISE4) 	// RE4 片选信号 方向 输出
#define MRFC500_CS_SET		(LATEbits.LATE4 = 0x01) 		// 输出高电平
#define MRFC500_CS_CLR		(LATEbits.LATE4 = 0x00) 		// 输出低电平

#define MRFC500_DS_TRIS		(TRISEbits.TRISE6) 	// RE6 数据存储信号 方向 输出
#define MRFC500_DS_SET		(LATEbits.LATE6 = 0x01) 		// 输出高电平
#define MRFC500_DS_CLR		(LATEbits.LATE6 = 0x00) 		// 输出低电平

#define MRFC500_AS_TRIS		(TRISEbits.TRISE7) 	// RE7 地址存储信号 方向 输出
#define MRFC500_AS_SET		(LATEbits.LATE7 = 0x01) 		// 输出高电平
#define MRFC500_AS_CLR		(LATEbits.LATE7 = 0x00) 		// 输出低电平

#define MRFC500_RD_WR_TRIS	(TRISEbits.TRISE5)	// RE5 读/写信号 方向 输出
#define MRFC500_RD_WR_SET	(LATEbits.LATE5 = 0x01) 		// 输出高电平
#define MRFC500_RD_WR_CLR	(LATEbits.LATE5 = 0x00) 		// 输出低电平

#define MRFC500_PORT_TRIS	TRISD
#define MRFC500_PORT		PORTD
#define MRFC500_LAT 		LATD	

#define GET_REG_PAGE(address)	(0x80 | (address >> 0x03))

#define Timecount               10000

//******************** RC500 寄存器定义 ******************
// PAGE 0       Command and Status
#define RegPage                 0x00    // Page Select Register
#define RegCommand              0x01    // Command Register
#define RegFIFOData             0x02    // FiFo Register
#define RegPrimaryStatus        0x03    // Modem State/IRQ/ERR/LoHiAlert Reg
#define RegFIFOLength           0x04    // Buffer length Register
#define RegSecondaryStatus      0x05    // diverse status flags
#define RegInterruptEn          0x06    // IRQ enable Register
#define RegInterruptRq          0x07    // IRQ bits Register
// PAGE 1       Control and Status
#define RegControl              0x09    // processor control
#define RegErrorFlag            0x0A    // error flags showing the error status of the last command executed
#define RegCollPos              0x0B    // bit position of the first bit collision detected on the RF-interface
#define RegTimerValue           0x0C    // preload value of the timer
#define RegCRCResultLSB         0x0D    // LSB of the CRC Coprocessor register
#define RegCRCResultMSB         0x0E    // MSB of the CRC Coprocessor register
#define RegBitFraming           0x0F    // Adjustments for bit oriented frames
// PAGE 2       Transmitter and Coder Control
#define RegTxControl            0x11    // controls the logical behaviour of the antenna driver pins TX1 and TX2
#define RegCwConductance        0x12    // selects the conductance of the antenna driver pins TX1 and TX2
#define RFU13                   0x13    // RFU
#define RegCoderControl         0x14    // selects coder rate
#define RegModWidth             0x15    // selects the width of the modulation pulse
#define RFU16                   0x16    // RFU
#define RFU17                   0x17    // RFU
// PAGE 3      Receiver and Decoder Control
#define RegRxControl1           0x19    // controls receiver behaviour
#define RegDecoderControl       0x1A    // controls decoder behaviour
#define RegBitPhase             0x1B    // selets the bit phase between transmitter and receiver clock
#define RegRxThreshold          0x1C    // selects thresholds for the bit decoder
#define RFU1D                   0x1D    // RFU
#define RegRxControl2           0x1E    // controls decoder behaviour and defines the input source for the receiver
#define RegClockQControl        0x1F    // controls clock generation for the 90?phase shifted Q-channel clock
// PAGE 4      RF-Timing and Channel Redundancy
#define RegRxWait               0x21    // selects the time interval after transmission, before receiver starts
#define RegChannelRedundancy    0x22    // selects the kind and mode of checking the data integrity on the RF-channel
#define RegCRCPresetLSB         0x23    // LSB of the pre-set value for the CRC register
#define RegCRCPresetMSB         0x24    // MSB of the pre-set value for the CRC register
#define RFU25                   0x25    // RFU
#define RegMfOutSelect          0x26    // selects internal signal applied to pin MfOut
#define RFU27                   0x27    // RFU
// PAGE 5       FIFO, Timer and IRQ-Pin Configuration
#define RegFIFOLevel            0x29    // Defines level for FIFO over- and underflow warning
#define RegTimerClock           0x2A    // selects the divider for the timer clock
#define RegTimerControl         0x2B    // selects start and stop conditions for the timer
#define RegTimerReload          0x2C    // defines the pre-set value for the timer
#define RegIRqPinConfig         0x2D    // configures the output stage of pin IRq
#define RFU2E                   0x2E    // RFU
#define RFU2F                   0x2F    // RFU
// PAGE 6       RFU
#define RFU31                   0x31    // RFU
#define RFU32                   0x32    // RFU
#define RFU33                   0x33    // RFU
#define RFU34                   0x34    // RFU
#define RFU35                   0x35    // RFU
#define RFU36                   0x36    // RFU
#define RFU37                   0x37    // RFU
// PAGE 7       Test Control
#define RFU39                   0x39    // RFU
#define RegTestAnaSelect        0x3A    // selects analog test mode
#define RFU3B                   0x3B    // RFU
#define RFU3C                   0x3C    // RFU
#define RegTestDigiSelect       0x3D    // selects digital test mode
#define RFU3E                   0x3E    // RFU
#define RegTestDigiAccess       0x3F

//********************* RC500 命令定义 *******************
#define PCD_IDLE                0x00    // No action: cancel current command or home state
#define PCD_WRITEE2             0x01    // Get data from FIFO and write it to the E2PROM
#define PCD_READE2              0x03    // Read data from E2PROM and put it into the FIFO
#define PCD_LOADCONFIG          0x07    // Read data from E2PROM and initialise the registers
#define PCD_LOADKEYE2           0x0B    // Read a master key from the E2PROM and put it into the master key buffer
#define PCD_AUTHENT1            0x0C    // Perform the first part of the card authentication using the Crypto1 algorithm.
//      Remark: The master key is automatically taken from the master key buffer. this implies,
//      that the command LoadKeyE2 has to be executed before using a certain key for card authentication
#define PCD_CALCCRC             0x12    // Activate the CRC-Coprocessor
//      Remark: The result of the CRC calculation can be read from the register CRCResultXXX
#define PCD_AUTHENT2            0x14    // Perform the second part of the card authentication using the Crypto1 algorithm.
#define PCD_RECEIVE             0x16    // Activate Receiver Circuitry. Before the receiver actually starts, the state machine waits until
//                                      the time configured in the register RxWait has passed.
//      Remark: It is possible to read any received data from the FIFO while the Receive command
//      is active. Thus it is possible to receive an unlimited number of bytes by reading them from the FIFO in timer.
#define PCD_LOADKEY             0x19    // Read a master key from the FIFO and put it into the master key buffer
//      Remark: The master key has to be prepared in a certain format. Thus, 12 byte have to be passed to load a 6 byte master key
#define PCD_TRANSMIT            0x1A    // Transmit data from FIFO to the card
//      Remark: If data is already in the FIFO when the command is activated, this data is transmitted immediately. It is possible to
//      write data to the FIFO while the Transmit command is active. Thus it is possible to transmit an unlimited number of bytes in one
//      stream by writting them to the FIFO in time.
#define PCD_TRANSCEIVE          0x1E    // Transmits data from FIFO to the card and after that automatically activates the
//                                      receiver. Before the receiver actually starts,the state machine waits until the
//                                      time configured in the register RxWait has passed.
//      Remark: This command is the combination of Transmit and Receive.
#define PCD_RESETPHASE          0x3F    // Runs the Reset- and Initialisation Phase
//      Remark: This command can not be activated by software, but only by a Power-On or Hard Reset

// P I C C - C O M M A N D S
// commands which are handled by the tag
// Each tag command is written to the reader IC and transfered via RF
#define PICC_REQSTD        0x26         // request idle
#define PICC_REQALL        0x52         // request all
#define PICC_ANTICOLL1     0x93         // anticollision level 1
#define PICC_ANTICOLL2     0x95         // anticollision level 2
#define PICC_ANTICOLL3     0x97         // anticollision level 3
#define PICC_AUTHENT1A     0x60         // authentication step 1
#define PICC_AUTHENT1B     0x61         // authentication step 2
#define PICC_READ          0x30         // read block
#define PICC_WRITE         0xA0         // write block
#define PICC_DECREMENT     0xC0         // decrement value
#define PICC_INCREMENT     0xC1         // increment value
#define PICC_RESTORE       0xC2         // restore command code
#define PICC_TRANSFER      0xB0         // transfer command code
#define PICC_HALT          0x50         // halt

// Mifare Error Codes
// Each function returns a status value, which corresponds to the
// mifare error codes.
#define READER_ERR_BASE_START           0
#define MI_OK                           0
#define MI_CHK_OK                       0
#define MI_CRC_ZERO                     0

#define MI_CRC_NOTZERO                  1

#define MI_NOTAGERR                     (-1)
#define MI_CHK_FAILED                   (-1)
#define MI_CRCERR                       (-2)
#define MI_CHK_COMPERR                  (-2)
#define MI_EMPTY                        (-3)
#define MI_AUTHERR                      (-4)
#define MI_PARITYERR                    (-5)
#define MI_CODEERR                      (-6)

#define MI_SERNRERR                     (-8)
#define MI_KEYERR                       (-9)
#define MI_NOTAUTHERR                   (-10)
#define MI_BITCOUNTERR                  (-11)
#define MI_BYTECOUNTERR                 (-12)
#define MI_IDLE                         (-13)
#define MI_TRANSERR                     (-14)
#define MI_WRITEERR                     (-15)
#define MI_INCRERR                      (-16)
#define MI_DECRERR                      (-17)
#define MI_READERR                      (-18)
#define MI_OVFLERR                      (-19)
#define MI_POLLING                      (-20)
#define MI_FRAMINGERR                   (-21)
#define MI_ACCESSERR                    (-22)
#define MI_UNKNOWN_COMMAND              (-23)
#define MI_COLLERR                      (-24)
#define MI_RESETERR                     (-25)
#define MI_INITERR                      (-25)
#define MI_INTERFACEERR                 (-26)
#define MI_ACCESSTIMEOUT                (-27)
#define MI_NOBITWISEANTICOLL            (-28)
#define MI_QUIT                         (-30)

#define MI_RECBUF_OVERFLOW              (-50)
#define MI_SENDBYTENR                   (-51)

#define MI_SENDBUF_OVERFLOW             (-53)
#define MI_BAUDRATE_NOT_SUPPORTED       (-54)
#define MI_SAME_BAUDRATE_REQUIRED       (-55)

#define MI_WRONG_PARAMETER_VALUE        (-60)

#define MI_BREAK                        (-99)
#define MI_NY_IMPLEMENTED               (-100)
#define MI_NO_MFRC                      (-101)
#define MI_MFRC_NOTAUTH                 (-102)
#define MI_WRONG_DES_MODE               (-103)
#define MI_HOST_AUTH_FAILED             (-104)

#define MI_WRONG_LOAD_MODE              (-106)
#define MI_WRONG_DESKEY                 (-107)
#define MI_MKLOAD_FAILED                (-108)
#define MI_FIFOERR                      (-109)
#define MI_WRONG_ADDR                   (-110)
#define MI_DESKEYLOAD_FAILED            (-111)

#define MI_WRONG_SEL_CNT                (-114)

#define MI_WRONG_TEST_MODE              (-117)
#define MI_TEST_FAILED                  (-118)
#define MI_TOC_ERROR                    (-119)
#define MI_COMM_ABORT                   (-120)
#define MI_INVALID_BASE                 (-121)
#define MI_MFRC_RESET                   (-122)
#define MI_WRONG_VALUE                  (-123)
#define MI_VALERR                       (-124)
#define MI_RW_ERROR                     (-125)

#define ResetInfo(info)    \
            info.cmd            = 0; \
            info.status         = MI_OK;\
            info.irqSource      = 0; \
            info.nBytesSent     = 0; \
            info.nBytesToSend   = 0; \
            info.nBytesReceived = 0; \
            info.nBitsReceived  = 0; \
            info.collPos        = 0;








//**--------------数据结构-----------------------------------------------------
struct MfCmdInfo {
    unsigned char  cmd;           // command code
    unsigned char  status;        // communication status
    unsigned char  nBytesSent;    // how many bytes already sent
    unsigned char  nBytesToSend;  // how many bytes to send
    unsigned char  nBytesReceived;// how many bytes received
    unsigned char  nBitsReceived; // how many bits received
    unsigned char  irqSource;     // which interrupts have occured
    unsigned char  collPos;       // at which position occured a collision
} MInfo;

//**--------------函数申明-----------------------------------------------------
void
init_mfrc500(
	void
	);

void
WriteRC(
	BYTE address,
	BYTE data
	);

BYTE
ReadRC(
	BYTE address
	);

char
RC500Config(
	void
	);
	
char
RC500OutSelect(
	unsigned char type
	);

BYTE
Mf500PiccRequest(
	BYTE req_code,
	BYTE *atq
	);

BYTE
Mf500PiccAnticoll(
	BYTE bcnt,
	BYTE *snr
	);

BYTE
Mf500PiccWrite(
	BYTE addr,
	BYTE *data1
	); // 卡块写

BYTE
Mf500PiccRead(
	BYTE addr,
	BYTE *data1
	); // 卡块读

char
Mf500PiccSelect(
	unsigned char *snr
	//unsigned char *sak
	);

char
Mf500PiccLoadKey(
	unsigned char *keys
	);

char
Mf500PiccAuthState(
	unsigned char auth_mode,
 	unsigned char *snr,
 	unsigned char block
 	);
			
//**--------------全局变量-----------------------------------------------------

#endif // _AJ_MFRC500_H



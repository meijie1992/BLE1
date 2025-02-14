opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 55553"

opt pagewidth 120

	opt pm

	processor	16F1947
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 42 "D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 42 "D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
db 0x00,0x03,0x01,0xFF,0xFF,0xFF,0xFF,0xFF ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTA equ 0Ch ;# 
# 637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTB equ 0Dh ;# 
# 771 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTC equ 0Eh ;# 
# 987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTD equ 0Fh ;# 
# 1184 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTE equ 010h ;# 
# 1354 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR1 equ 011h ;# 
# 1436 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR2 equ 012h ;# 
# 1497 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR3 equ 013h ;# 
# 1542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIR4 equ 014h ;# 
# 1580 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR0 equ 015h ;# 
# 1599 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1 equ 016h ;# 
# 1605 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1L equ 016h ;# 
# 1624 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR1H equ 017h ;# 
# 1643 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1CON equ 018h ;# 
# 1714 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T1GCON equ 019h ;# 
# 1790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR2 equ 01Ah ;# 
# 1809 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR2 equ 01Bh ;# 
# 1828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T2CON equ 01Ch ;# 
# 1898 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON0 equ 01Eh ;# 
# 1957 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CPSCON1 equ 01Fh ;# 
# 2008 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISA equ 08Ch ;# 
# 2069 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISB equ 08Dh ;# 
# 2130 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISC equ 08Eh ;# 
# 2191 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISD equ 08Fh ;# 
# 2252 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISE equ 090h ;# 
# 2313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE1 equ 091h ;# 
# 2395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE2 equ 092h ;# 
# 2456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE3 equ 093h ;# 
# 2501 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PIE4 equ 094h ;# 
# 2539 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OPTION_REG equ 095h ;# 
# 2621 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCON equ 096h ;# 
# 2671 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WDTCON equ 097h ;# 
# 2729 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCTUNE equ 098h ;# 
# 2786 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCCON equ 099h ;# 
# 2857 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
OSCSTAT equ 09Ah ;# 
# 2918 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRES equ 09Bh ;# 
# 2924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESL equ 09Bh ;# 
# 2943 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADRESH equ 09Ch ;# 
# 2962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON0 equ 09Dh ;# 
# 3050 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ADCON1 equ 09Eh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATA equ 010Ch ;# 
# 3182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATB equ 010Dh ;# 
# 3243 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATC equ 010Eh ;# 
# 3304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATD equ 010Fh ;# 
# 3373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATE equ 0110h ;# 
# 3434 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON0 equ 0111h ;# 
# 3490 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM1CON1 equ 0112h ;# 
# 3555 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON0 equ 0113h ;# 
# 3611 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM2CON1 equ 0114h ;# 
# 3676 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CMOUT equ 0115h ;# 
# 3707 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BORCON equ 0116h ;# 
# 3733 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FVRCON equ 0117h ;# 
# 3798 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON0 equ 0118h ;# 
# 3858 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
DACCON1 equ 0119h ;# 
# 3909 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON0 equ 011Ah ;# 
# 3979 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SRCON1 equ 011Bh ;# 
# 4040 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
APFCON equ 011Dh ;# 
# 4101 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON0 equ 011Eh ;# 
# 4157 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CM3CON1 equ 011Fh ;# 
# 4222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELA equ 018Ch ;# 
# 4274 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELE equ 0190h ;# 
# 4313 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADR equ 0191h ;# 
# 4319 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRL equ 0191h ;# 
# 4338 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEADRH equ 0192h ;# 
# 4357 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDAT equ 0193h ;# 
# 4363 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATL equ 0193h ;# 
# 4368 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATA equ 0193h ;# 
# 4400 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EEDATH equ 0194h ;# 
# 4419 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON1 equ 0195h ;# 
# 4480 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
EECON2 equ 0196h ;# 
# 4499 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1REG equ 0199h ;# 
# 4504 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCREG equ 0199h ;# 
# 4536 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1REG equ 019Ah ;# 
# 4541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXREG equ 019Ah ;# 
# 4573 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRG equ 019Bh ;# 
# 4579 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGL equ 019Bh ;# 
# 4584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG equ 019Bh ;# 
# 4588 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGL equ 019Bh ;# 
# 4632 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP1BRGH equ 019Ch ;# 
# 4637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRGH equ 019Ch ;# 
# 4669 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC1STA equ 019Dh ;# 
# 4674 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RCSTA equ 019Dh ;# 
# 4790 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX1STA equ 019Eh ;# 
# 4795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TXSTA equ 019Eh ;# 
# 4911 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD1CON equ 019Fh ;# 
# 4962 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUB equ 020Dh ;# 
# 5031 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1BUF equ 0211h ;# 
# 5036 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPBUF equ 0211h ;# 
# 5068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1ADD equ 0212h ;# 
# 5073 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPADD equ 0212h ;# 
# 5105 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1MSK equ 0213h ;# 
# 5110 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPMSK equ 0213h ;# 
# 5142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1STAT equ 0214h ;# 
# 5147 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPSTAT equ 0214h ;# 
# 5263 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON1 equ 0215h ;# 
# 5268 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON equ 0215h ;# 
# 5272 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON1 equ 0215h ;# 
# 5442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON2 equ 0216h ;# 
# 5447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON2 equ 0216h ;# 
# 5563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP1CON3 equ 0217h ;# 
# 5568 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSPCON3 equ 0217h ;# 
# 5684 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2BUF equ 0219h ;# 
# 5703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2ADD equ 021Ah ;# 
# 5722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2MSK equ 021Bh ;# 
# 5741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2STAT equ 021Ch ;# 
# 5802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON1 equ 021Dh ;# 
# 5863 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON2 equ 021Eh ;# 
# 5924 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SSP2CON3 equ 021Fh ;# 
# 5985 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTF equ 028Ch ;# 
# 6309 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PORTG equ 028Dh ;# 
# 6541 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1 equ 0291h ;# 
# 6547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1L equ 0291h ;# 
# 6566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR1H equ 0292h ;# 
# 6585 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1CON equ 0293h ;# 
# 6666 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM1CON equ 0294h ;# 
# 6727 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP1AS equ 0295h ;# 
# 6732 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP1AS equ 0295h ;# 
# 6848 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR1CON equ 0296h ;# 
# 6891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2 equ 0298h ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2L equ 0298h ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR2H equ 0299h ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2CON equ 029Ah ;# 
# 7016 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM2CON equ 029Bh ;# 
# 7077 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP2AS equ 029Ch ;# 
# 7082 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP2AS equ 029Ch ;# 
# 7198 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR2CON equ 029Dh ;# 
# 7241 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS0 equ 029Eh ;# 
# 7328 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPTMRS1 equ 029Fh ;# 
# 7361 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISF equ 030Ch ;# 
# 7422 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TRISG equ 030Dh ;# 
# 7471 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3 equ 0311h ;# 
# 7477 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3L equ 0311h ;# 
# 7496 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR3H equ 0312h ;# 
# 7515 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3CON equ 0313h ;# 
# 7576 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PWM3CON equ 0314h ;# 
# 7637 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP3AS equ 0315h ;# 
# 7642 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ECCP3AS equ 0315h ;# 
# 7758 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PSTR3CON equ 0316h ;# 
# 7801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4 equ 0318h ;# 
# 7807 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4L equ 0318h ;# 
# 7826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR4H equ 0319h ;# 
# 7845 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP4CON equ 031Ah ;# 
# 7894 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5 equ 031Ch ;# 
# 7900 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5L equ 031Ch ;# 
# 7919 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCPR5H equ 031Dh ;# 
# 7938 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
CCP5CON equ 031Eh ;# 
# 7987 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATF equ 038Ch ;# 
# 8048 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LATG equ 038Dh ;# 
# 8097 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBP equ 0394h ;# 
# 8166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBN equ 0395h ;# 
# 8235 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
IOCBF equ 0396h ;# 
# 8304 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELF equ 040Ch ;# 
# 8373 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
ANSELG equ 040Dh ;# 
# 8420 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR4 equ 0415h ;# 
# 8439 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR4 equ 0416h ;# 
# 8458 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T4CON equ 0417h ;# 
# 8528 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TMR6 equ 041Ch ;# 
# 8547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PR6 equ 041Dh ;# 
# 8566 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
T6CON equ 041Eh ;# 
# 8636 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WPUG equ 048Dh ;# 
# 8656 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2REG equ 0491h ;# 
# 8675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2REG equ 0492h ;# 
# 8694 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGL equ 0493h ;# 
# 8699 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SPBRG2 equ 0493h ;# 
# 8731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
SP2BRGH equ 0494h ;# 
# 8750 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
RC2STA equ 0495h ;# 
# 8811 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TX2STA equ 0496h ;# 
# 8872 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BAUD2CON equ 0497h ;# 
# 8923 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCON equ 0791h ;# 
# 8993 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDPS equ 0792h ;# 
# 9062 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDREF equ 0793h ;# 
# 9113 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDCST equ 0794h ;# 
# 9152 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDRL equ 0795h ;# 
# 9229 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE0 equ 0798h ;# 
# 9290 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE1 equ 0799h ;# 
# 9351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE2 equ 079Ah ;# 
# 9412 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE3 equ 079Bh ;# 
# 9473 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE4 equ 079Ch ;# 
# 9534 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDSE5 equ 079Dh ;# 
# 9583 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA0 equ 07A0h ;# 
# 9644 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA1 equ 07A1h ;# 
# 9705 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA2 equ 07A2h ;# 
# 9766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA3 equ 07A3h ;# 
# 9827 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA4 equ 07A4h ;# 
# 9888 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA5 equ 07A5h ;# 
# 9949 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA6 equ 07A6h ;# 
# 10010 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA7 equ 07A7h ;# 
# 10071 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA8 equ 07A8h ;# 
# 10132 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA9 equ 07A9h ;# 
# 10193 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA10 equ 07AAh ;# 
# 10254 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA11 equ 07ABh ;# 
# 10315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA12 equ 07ACh ;# 
# 10376 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA13 equ 07ADh ;# 
# 10437 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA14 equ 07AEh ;# 
# 10486 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA15 equ 07AFh ;# 
# 10547 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA16 equ 07B0h ;# 
# 10608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA17 equ 07B1h ;# 
# 10657 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA18 equ 07B2h ;# 
# 10718 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA19 equ 07B3h ;# 
# 10779 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA20 equ 07B4h ;# 
# 10828 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA21 equ 07B5h ;# 
# 10889 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA22 equ 07B6h ;# 
# 10950 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
LCDDATA23 equ 07B7h ;# 
# 10999 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STATUS_SHAD equ 0FE4h ;# 
# 11030 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
WREG_SHAD equ 0FE5h ;# 
# 11049 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
BSR_SHAD equ 0FE6h ;# 
# 11068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
PCLATH_SHAD equ 0FE7h ;# 
# 11087 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0L_SHAD equ 0FE8h ;# 
# 11106 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR0H_SHAD equ 0FE9h ;# 
# 11125 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1L_SHAD equ 0FEAh ;# 
# 11144 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
FSR1H_SHAD equ 0FEBh ;# 
# 11163 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
STKPTR equ 0FEDh ;# 
# 11182 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSL equ 0FEEh ;# 
# 11201 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1947.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,_delay_ms
	FNCALL	_main,_handle_config
	FNCALL	_main,_handle_ic_card
	FNCALL	_main,_handle_rs485
	FNCALL	_main,_handle_timer
	FNCALL	_main,_init_hardware
	FNCALL	_main,_read_24c02
	FNCALL	_main,_uart1_send_byte
	FNCALL	_main,_write_24c02
	FNCALL	_init_hardware,_RC500Config
	FNCALL	_init_hardware,_RC500OutSelect
	FNCALL	_init_hardware,_init_beep
	FNCALL	_init_hardware,_init_ds1302
	FNCALL	_init_hardware,_init_i2c
	FNCALL	_init_hardware,_init_interrupt
	FNCALL	_init_hardware,_init_led
	FNCALL	_init_hardware,_init_mfrc500
	FNCALL	_init_hardware,_init_osc
	FNCALL	_init_hardware,_init_port
	FNCALL	_init_hardware,_init_timer1
	FNCALL	_init_hardware,_init_uart1
	FNCALL	_init_hardware,_init_uart2
	FNCALL	_RC500OutSelect,_WriteRC
	FNCALL	_RC500Config,_ClearBitMask
	FNCALL	_RC500Config,_PcdReset
	FNCALL	_RC500Config,_PcdRfReset
	FNCALL	_RC500Config,_PcdSetTmo
	FNCALL	_RC500Config,_WriteRC
	FNCALL	_PcdRfReset,_ClearBitMask
	FNCALL	_PcdRfReset,_SetBitMask
	FNCALL	_PcdReset,_GetRC500
	FNCALL	_PcdReset,_PutRC500
	FNCALL	_handle_rs485,_check_report_the_loss
	FNCALL	_handle_rs485,_do_check_sum
	FNCALL	_handle_rs485,_find_card
	FNCALL	_handle_rs485,_read_24c02
	FNCALL	_handle_rs485,_uart1_send_byte
	FNCALL	_handle_rs485,_uart2_send_byte
	FNCALL	_handle_rs485,_write_24c02
	FNCALL	_find_card,_read_24c02
	FNCALL	_check_report_the_loss,_read_24c02
	FNCALL	_handle_ic_card,_checkpsw
	FNCALL	_handle_ic_card,_checkpsw_super
	FNCALL	_handle_ic_card,_handle_beep
	FNCALL	_handle_ic_card,_read_card_content
	FNCALL	_handle_ic_card,_read_id
	FNCALL	_handle_ic_card,_rfcard
	FNCALL	_handle_ic_card,_same_id
	FNCALL	_read_card_content,_Mf500PiccRead
	FNCALL	_read_card_content,_Mf500PiccWrite
	FNCALL	_read_card_content,_check_user_card
	FNCALL	_read_card_content,_checksum
	FNCALL	_read_card_content,_deal_floor
	FNCALL	_read_card_content,_ds1302_get_time
	FNCALL	_read_card_content,_ds1302_set_time
	FNCALL	_read_card_content,_read_24c02
	FNCALL	_read_card_content,_uart1_send_byte
	FNCALL	_read_card_content,_write_24c02
	FNCALL	_deal_floor,_delay_ms
	FNCALL	_deal_floor,_uart1_send_byte
	FNCALL	_check_user_card,_read_24c02
	FNCALL	_Mf500PiccWrite,_FlushFIFO
	FNCALL	_Mf500PiccWrite,_PcdSetTmo
	FNCALL	_Mf500PiccWrite,_PcdSingleResponseCmd
	FNCALL	_Mf500PiccWrite,_WriteRC
	FNCALL	_Mf500PiccWrite,_memcpy
	FNCALL	_Mf500PiccRead,_FlushFIFO
	FNCALL	_Mf500PiccRead,_PcdSetTmo
	FNCALL	_Mf500PiccRead,_PcdSingleResponseCmd
	FNCALL	_Mf500PiccRead,_WriteRC
	FNCALL	_Mf500PiccRead,_memcpy
	FNCALL	_handle_beep,_delay_ms
	FNCALL	_checkpsw_super,_Mf500PiccAuthState
	FNCALL	_checkpsw_super,_Mf500PiccLoadKey
	FNCALL	_checkpsw_super,_read_id
	FNCALL	_checkpsw_super,_rfcard
	FNCALL	_rfcard,_Mf500PiccAnticoll
	FNCALL	_rfcard,_Mf500PiccRequest
	FNCALL	_Mf500PiccRequest,_Mf500PiccCommonRequest
	FNCALL	_Mf500PiccCommonRequest,_PcdSetTmo
	FNCALL	_Mf500PiccCommonRequest,_PcdSingleResponseCmd
	FNCALL	_Mf500PiccCommonRequest,_WriteRC
	FNCALL	_Mf500PiccCommonRequest,_memcpy
	FNCALL	_Mf500PiccAnticoll,_Mf500PiccCascAnticoll
	FNCALL	_Mf500PiccCascAnticoll,_ClearBitMask
	FNCALL	_Mf500PiccCascAnticoll,_PcdSetTmo
	FNCALL	_Mf500PiccCascAnticoll,_PcdSingleResponseCmd
	FNCALL	_Mf500PiccCascAnticoll,_WriteRC
	FNCALL	_Mf500PiccCascAnticoll,___awdiv
	FNCALL	_Mf500PiccCascAnticoll,_memcpy
	FNCALL	_read_id,_Mf500PiccSelect
	FNCALL	_Mf500PiccSelect,_Mf500PiccCascSelect
	FNCALL	_Mf500PiccCascSelect,_ClearBitMask
	FNCALL	_Mf500PiccCascSelect,_PcdSetTmo
	FNCALL	_Mf500PiccCascSelect,_PcdSingleResponseCmd
	FNCALL	_Mf500PiccCascSelect,_WriteRC
	FNCALL	_Mf500PiccCascSelect,_memcpy
	FNCALL	_ClearBitMask,_ReadRC
	FNCALL	_ClearBitMask,_WriteRC
	FNCALL	_checkpsw,_Mf500PiccAuthState
	FNCALL	_checkpsw,_Mf500PiccLoadKey
	FNCALL	_Mf500PiccLoadKey,_FlushFIFO
	FNCALL	_Mf500PiccLoadKey,_Mf500HostCodeKey
	FNCALL	_Mf500PiccLoadKey,_PcdSetTmo
	FNCALL	_Mf500PiccLoadKey,_PcdSingleResponseCmd
	FNCALL	_Mf500PiccAuthState,_PcdSetTmo
	FNCALL	_Mf500PiccAuthState,_PcdSingleResponseCmd
	FNCALL	_Mf500PiccAuthState,_ReadRC
	FNCALL	_Mf500PiccAuthState,_memcpy
	FNCALL	_PcdSingleResponseCmd,_FlushFIFO
	FNCALL	_PcdSingleResponseCmd,_ISR_RC500
	FNCALL	_PcdSingleResponseCmd,_ReadRC
	FNCALL	_PcdSingleResponseCmd,_SetBitMask
	FNCALL	_PcdSingleResponseCmd,_WriteRC
	FNCALL	_ISR_RC500,_GetRC500
	FNCALL	_ISR_RC500,_PutRC500
	FNCALL	_FlushFIFO,_SetBitMask
	FNCALL	_SetBitMask,_ReadRC
	FNCALL	_SetBitMask,_WriteRC
	FNCALL	_ReadRC,_GetRC500
	FNCALL	_ReadRC,_PutRC500
	FNCALL	_PcdSetTmo,_WriteRC
	FNCALL	_WriteRC,_PutRC500
	FNCALL	_handle_config,_delay_ms
	FNCALL	_handle_config,_ds1302_get_time
	FNCALL	_handle_config,_ds1302_set_time
	FNCALL	_handle_config,_find_project_key
	FNCALL	_handle_config,_read_24c02
	FNCALL	_handle_config,_read_eeprom
	FNCALL	_handle_config,_uart1_send_byte
	FNCALL	_handle_config,_write_24c02
	FNCALL	_write_24c02,_delay_ms
	FNCALL	_write_24c02,_send_byte
	FNCALL	_write_24c02,_start_i2c
	FNCALL	_write_24c02,_stop_i2c
	FNCALL	_read_24c02,_rece_byte
	FNCALL	_read_24c02,_send_byte
	FNCALL	_read_24c02,_start_i2c
	FNCALL	_read_24c02,_stop_i2c
	FNCALL	_ds1302_set_time,_ds1302_write
	FNCALL	_ds1302_write,_ds1302_write_byte
	FNCALL	_ds1302_get_time,_ds1302_read
	FNCALL	_ds1302_read,_ds1302_read_byte
	FNCALL	_ds1302_read,_ds1302_write_byte
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_keys_super
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	44

;initializer for _keys_super
	retlw	0A1h
	retlw	0A2h
	retlw	0A3h
	retlw	0B0h
	retlw	0B1h
	retlw	0
	global	_PWD_TABLE
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	global    __stringtab
__stringtab:
	retlw	0
psect	stringtext
	global    __end_of__stringtab
__end_of__stringtab:
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	78
_PWD_TABLE:
	retlw	0FFh
	retlw	0FDh
	retlw	0F9h
	retlw	0F3h
	retlw	0EBh
	retlw	0E1h
	retlw	0D5h
	retlw	0C7h
	retlw	0B7h
	retlw	0A5h
	retlw	091h
	retlw	07Bh
	retlw	063h
	retlw	049h
	retlw	02Dh
	retlw	0Fh
	retlw	0FCh
	retlw	0F8h
	retlw	0F2h
	retlw	0EAh
	retlw	0E0h
	retlw	0D4h
	retlw	0C6h
	retlw	0B6h
	retlw	0A4h
	retlw	090h
	retlw	07Ah
	retlw	062h
	retlw	048h
	retlw	02Ch
	retlw	0Eh
	retlw	010h
	retlw	0F7h
	retlw	0F1h
	retlw	0E9h
	retlw	0DFh
	retlw	0D3h
	retlw	0C5h
	retlw	0B5h
	retlw	0A3h
	retlw	08Fh
	retlw	079h
	retlw	061h
	retlw	047h
	retlw	02Bh
	retlw	0Dh
	retlw	011h
	retlw	02Eh
	retlw	0F0h
	retlw	0E8h
	retlw	0DEh
	retlw	0D2h
	retlw	0C4h
	retlw	0B4h
	retlw	0A2h
	retlw	08Eh
	retlw	078h
	retlw	060h
	retlw	046h
	retlw	02Ah
	retlw	0Ch
	retlw	012h
	retlw	02Fh
	retlw	04Ah
	retlw	0E7h
	retlw	0DDh
	retlw	0D1h
	retlw	0C3h
	retlw	0B3h
	retlw	0A1h
	retlw	08Dh
	retlw	077h
	retlw	05Fh
	retlw	045h
	retlw	029h
	retlw	0Bh
	retlw	013h
	retlw	030h
	retlw	04Bh
	retlw	064h
	retlw	0DCh
	retlw	0D0h
	retlw	0C2h
	retlw	0B2h
	retlw	0A0h
	retlw	08Ch
	retlw	076h
	retlw	05Eh
	retlw	044h
	retlw	028h
	retlw	0Ah
	retlw	014h
	retlw	031h
	retlw	04Ch
	retlw	065h
	retlw	07Ch
	retlw	0CFh
	retlw	0C1h
	retlw	0B1h
	retlw	09Fh
	retlw	08Bh
	retlw	075h
	retlw	05Dh
	retlw	043h
	retlw	027h
	retlw	09h
	retlw	015h
	retlw	032h
	retlw	04Dh
	retlw	066h
	retlw	07Dh
	retlw	092h
	retlw	0C0h
	retlw	0B0h
	retlw	09Eh
	retlw	08Ah
	retlw	074h
	retlw	05Ch
	retlw	042h
	retlw	026h
	retlw	08h
	retlw	016h
	retlw	033h
	retlw	04Eh
	retlw	067h
	retlw	07Eh
	retlw	093h
	retlw	0A6h
	retlw	0AFh
	retlw	09Dh
	retlw	089h
	retlw	073h
	retlw	05Bh
	retlw	041h
	retlw	025h
	retlw	07h
	retlw	017h
	retlw	034h
	retlw	04Fh
	retlw	068h
	retlw	07Fh
	retlw	094h
	retlw	0A7h
	retlw	0B8h
	retlw	09Ch
	retlw	088h
	retlw	072h
	retlw	05Ah
	retlw	040h
	retlw	024h
	retlw	06h
	retlw	018h
	retlw	035h
	retlw	050h
	retlw	069h
	retlw	080h
	retlw	095h
	retlw	0A8h
	retlw	0B9h
	retlw	0C8h
	retlw	087h
	retlw	071h
	retlw	059h
	retlw	03Fh
	retlw	023h
	retlw	05h
	retlw	019h
	retlw	036h
	retlw	051h
	retlw	06Ah
	retlw	081h
	retlw	096h
	retlw	0A9h
	retlw	0BAh
	retlw	0C9h
	retlw	0D6h
	retlw	070h
	retlw	058h
	retlw	03Eh
	retlw	022h
	retlw	04h
	retlw	01Ah
	retlw	037h
	retlw	052h
	retlw	06Bh
	retlw	082h
	retlw	097h
	retlw	0AAh
	retlw	0BBh
	retlw	0CAh
	retlw	0D7h
	retlw	0E2h
	retlw	057h
	retlw	03Dh
	retlw	021h
	retlw	03h
	retlw	01Bh
	retlw	038h
	retlw	053h
	retlw	06Ch
	retlw	083h
	retlw	098h
	retlw	0ABh
	retlw	0BCh
	retlw	0CBh
	retlw	0D8h
	retlw	0E3h
	retlw	0ECh
	retlw	03Ch
	retlw	020h
	retlw	02h
	retlw	01Ch
	retlw	039h
	retlw	054h
	retlw	06Dh
	retlw	084h
	retlw	099h
	retlw	0ACh
	retlw	0BDh
	retlw	0CCh
	retlw	0D9h
	retlw	0E4h
	retlw	0EDh
	retlw	0F4h
	retlw	01Fh
	retlw	01h
	retlw	01Dh
	retlw	03Ah
	retlw	055h
	retlw	06Eh
	retlw	085h
	retlw	09Ah
	retlw	0ADh
	retlw	0BEh
	retlw	0CDh
	retlw	0DAh
	retlw	0E5h
	retlw	0EEh
	retlw	0F5h
	retlw	0FAh
	retlw	0
	retlw	01Eh
	retlw	03Bh
	retlw	056h
	retlw	06Fh
	retlw	086h
	retlw	09Bh
	retlw	0AEh
	retlw	0BFh
	retlw	0CEh
	retlw	0DBh
	retlw	0E6h
	retlw	0EFh
	retlw	0F6h
	retlw	0FBh
	retlw	0FEh
	global __end_of_PWD_TABLE
__end_of_PWD_TABLE:
	global	_PWD_TABLE
	global	_MpIsrInfo
	global	_uart1_receive_buffer
	global	_card_id
	global	_MpIsrIn
	global	_MpIsrOut
	global	_card_type
	global	_count
	global	_count_uart1_receive
	global	_count_uart2_receive
	global	_flag_record
	global	_flag_timer
	global	_flag_uart1_cmd
	global	_flag_uart2_cmd
	global	_flag_user_card
	global	_group
	global	_is_enable
	global	_sector_number
	global	_uart1_cnt
	global	_uart2_cnt
	global	_user_card_count
	global	_MInfo
	global	_uart2_receive_buffer
	global	_ic_card
	global	_timer_count
	global	_MSndBuffer
	global	_user_card
	global	_keys
	global	_snr_rc500
	global	_tt1
	global	_MRcvBuffer
	global	_day
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_day:
       ds      1

	global	_month
_month:
       ds      1

	global	_year
_year:
       ds      1

	global	_hour
psect	nvBANK1,class=BANK1,space=1,noexec
global __pnvBANK1
__pnvBANK1:
_hour:
       ds      1

	global	_minute
_minute:
       ds      1

	global	_second
_second:
       ds      1

	global	_week
_week:
       ds      1

	global	_PORTD
_PORTD	set	0xF
	global	_T1CON
_T1CON	set	0x18
	global	_TMR1H
_TMR1H	set	0x17
	global	_TMR1L
_TMR1L	set	0x16
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RA0
_RA0	set	0x60
	global	_RA1
_RA1	set	0x61
	global	_RB4
_RB4	set	0x6C
	global	_RB5
_RB5	set	0x6D
	global	_RC0
_RC0	set	0x70
	global	_RC1
_RC1	set	0x71
	global	_RC1IF
_RC1IF	set	0x8D
	global	_RC2
_RC2	set	0x72
	global	_RC2IF
_RC2IF	set	0xA5
	global	_RC3
_RC3	set	0x73
	global	_RC4
_RC4	set	0x74
	global	_RC5
_RC5	set	0x75
	global	_TMR1IF
_TMR1IF	set	0x88
	global	_OSCCON
_OSCCON	set	0x99
	global	_TRISAbits
_TRISAbits	set	0x8C
	global	_TRISCbits
_TRISCbits	set	0x8E
	global	_TRISD
_TRISD	set	0x8F
	global	_TRISEbits
_TRISEbits	set	0x90
	global	_RC1IE
_RC1IE	set	0x48D
	global	_RC2IE
_RC2IE	set	0x4A5
	global	_TMR1IE
_TMR1IE	set	0x488
	global	_LATEbits
_LATEbits	set	0x110
	global	_EEADR
_EEADR	set	0x191
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELE
_ANSELE	set	0x190
	global	_BAUD1CON
_BAUD1CON	set	0x19F
	global	_EEDATA
_EEDATA	set	0x193
	global	_RC1REG
_RC1REG	set	0x199
	global	_RC1STA
_RC1STA	set	0x19D
	global	_SP1BRGH
_SP1BRGH	set	0x19C
	global	_SP1BRGL
_SP1BRGL	set	0x19B
	global	_TX1REG
_TX1REG	set	0x19A
	global	_TX1STA
_TX1STA	set	0x19E
	global	_TX1STAbits
_TX1STAbits	set	0x19E
	global	_EEPGD
_EEPGD	set	0xCAF
	global	_RD
_RD	set	0xCA8
	global	_TRISGbits
_TRISGbits	set	0x30D
	global	_LATGbits
_LATGbits	set	0x38D
	global	_ANSELF
_ANSELF	set	0x40C
	global	_ANSELG
_ANSELG	set	0x40D
	global	_BAUD2CON
_BAUD2CON	set	0x497
	global	_RC2REG
_RC2REG	set	0x491
	global	_RC2STA
_RC2STA	set	0x495
	global	_SP2BRGH
_SP2BRGH	set	0x494
	global	_SP2BRGL
_SP2BRGL	set	0x493
	global	_TX2REG
_TX2REG	set	0x492
	global	_TX2STA
_TX2STA	set	0x496
	global	_TX2STAbits
_TX2STAbits	set	0x496
psect	stringtext
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_WDTE$ON
__CFG_WDTE$ON equ 0x0
global __CFG_PLLEN$OFF
__CFG_PLLEN$OFF equ 0x0
	file	"aj-b-dk-net-v0.3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_MpIsrInfo:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_uart1_receive_buffer:
       ds      8

_card_id:
       ds      4

_MpIsrIn:
       ds      1

_MpIsrOut:
       ds      1

_card_type:
       ds      1

_count:
       ds      1

_count_uart1_receive:
       ds      1

_count_uart2_receive:
       ds      1

_flag_record:
       ds      1

_flag_timer:
       ds      1

_flag_uart1_cmd:
       ds      1

_flag_uart2_cmd:
       ds      1

_flag_user_card:
       ds      1

_group:
       ds      1

_is_enable:
       ds      1

_sector_number:
       ds      1

_uart1_cnt:
       ds      1

_uart2_cnt:
       ds      1

_user_card_count:
       ds      1

_MInfo:
       ds      8

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_uart2_receive_buffer:
       ds      16

_ic_card:
       ds      4

_timer_count:
       ds      2

_MSndBuffer:
       ds      16

_user_card:
       ds      14

_keys:
       ds      6

_snr_rc500:
       ds      4

_tt1:
       ds      2

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	44
_keys_super:
       ds      6

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_MRcvBuffer:
       ds      16

	file	"aj-b-dk-net-v0.3.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	025h
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	040h
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	010h
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1,__pdataBANK1
psect cinit,class=CODE,delta=2,merge=1
	movlb 1	; select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
	fcall	__pidataBANK1+4		;fetch initializer
	movwf	__pdataBANK1+4&07fh		
	fcall	__pidataBANK1+5		;fetch initializer
	movwf	__pdataBANK1+5&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@pwd
main@pwd:	; 1 bytes @ 0x0
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x1
	ds	1
	global	main@i_954
main@i_954:	; 2 bytes @ 0x2
	ds	2
	global	main@j
main@j:	; 1 bytes @ 0x4
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_uart1_send_byte:	; 0 bytes @ 0x0
?_ds1302_set_time:	; 0 bytes @ 0x0
?_ds1302_get_time:	; 0 bytes @ 0x0
?_handle_beep:	; 0 bytes @ 0x0
?_uart2_send_byte:	; 0 bytes @ 0x0
?_handle_config:	; 0 bytes @ 0x0
?_deal_floor:	; 0 bytes @ 0x0
?_handle_ic_card:	; 0 bytes @ 0x0
?_handle_rs485:	; 0 bytes @ 0x0
?_handle_timer:	; 0 bytes @ 0x0
?_init_i2c:	; 0 bytes @ 0x0
?_start_i2c:	; 0 bytes @ 0x0
?_stop_i2c:	; 0 bytes @ 0x0
?_send_byte:	; 0 bytes @ 0x0
?_init_beep:	; 0 bytes @ 0x0
?_init_ds1302:	; 0 bytes @ 0x0
?_ds1302_write_byte:	; 0 bytes @ 0x0
?_isr:	; 0 bytes @ 0x0
??_isr:	; 0 bytes @ 0x0
?_init_interrupt:	; 0 bytes @ 0x0
?_init_led:	; 0 bytes @ 0x0
?_init_mfrc500:	; 0 bytes @ 0x0
?_FlushFIFO:	; 0 bytes @ 0x0
?_ISR_RC500:	; 0 bytes @ 0x0
?_init_timer1:	; 0 bytes @ 0x0
?_init_uart1:	; 0 bytes @ 0x0
?_init_uart2:	; 0 bytes @ 0x0
?_init_osc:	; 0 bytes @ 0x0
?_init_port:	; 0 bytes @ 0x0
?_init_hardware:	; 0 bytes @ 0x0
?_read_24c02:	; 1 bytes @ 0x0
?_read_eeprom:	; 1 bytes @ 0x0
?_Mf500PiccSelect:	; 1 bytes @ 0x0
?_Mf500PiccLoadKey:	; 1 bytes @ 0x0
?_find_project_key:	; 1 bytes @ 0x0
?_check_user_card:	; 1 bytes @ 0x0
?_read_card_content:	; 1 bytes @ 0x0
?_rfcard:	; 1 bytes @ 0x0
?_read_id:	; 1 bytes @ 0x0
?_same_id:	; 1 bytes @ 0x0
?_checkpsw_super:	; 1 bytes @ 0x0
?_checkpsw:	; 1 bytes @ 0x0
?_do_check_sum:	; 1 bytes @ 0x0
?_check_report_the_loss:	; 1 bytes @ 0x0
?_find_card:	; 1 bytes @ 0x0
?_rece_byte:	; 1 bytes @ 0x0
?_ds1302_read_byte:	; 1 bytes @ 0x0
?_ds1302_read:	; 1 bytes @ 0x0
?_GetRC500:	; 1 bytes @ 0x0
?_ReadRC:	; 1 bytes @ 0x0
?_PcdRfReset:	; 1 bytes @ 0x0
?_PcdReset:	; 1 bytes @ 0x0
?_RC500Config:	; 1 bytes @ 0x0
?_RC500OutSelect:	; 1 bytes @ 0x0
?_PcdSingleResponseCmd:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	isr@data_length
isr@data_length:	; 1 bytes @ 0x0
	ds	1
?_delay_ms:	; 0 bytes @ 0x1
??_uart1_send_byte:	; 0 bytes @ 0x1
??_read_eeprom:	; 0 bytes @ 0x1
??_uart2_send_byte:	; 0 bytes @ 0x1
??_find_project_key:	; 0 bytes @ 0x1
??_same_id:	; 0 bytes @ 0x1
??_do_check_sum:	; 0 bytes @ 0x1
??_handle_timer:	; 0 bytes @ 0x1
??_init_i2c:	; 0 bytes @ 0x1
??_start_i2c:	; 0 bytes @ 0x1
??_stop_i2c:	; 0 bytes @ 0x1
??_rece_byte:	; 0 bytes @ 0x1
??_send_byte:	; 0 bytes @ 0x1
??_init_beep:	; 0 bytes @ 0x1
??_init_ds1302:	; 0 bytes @ 0x1
??_ds1302_write_byte:	; 0 bytes @ 0x1
??_ds1302_read_byte:	; 0 bytes @ 0x1
??_init_interrupt:	; 0 bytes @ 0x1
??_init_led:	; 0 bytes @ 0x1
??_init_mfrc500:	; 0 bytes @ 0x1
?_PutRC500:	; 0 bytes @ 0x1
??_GetRC500:	; 0 bytes @ 0x1
??_init_timer1:	; 0 bytes @ 0x1
??_init_uart1:	; 0 bytes @ 0x1
??_init_uart2:	; 0 bytes @ 0x1
??_init_osc:	; 0 bytes @ 0x1
??_init_port:	; 0 bytes @ 0x1
?_checksum:	; 1 bytes @ 0x1
?_memcpy:	; 1 bytes @ 0x1
?_Mf500HostCodeKey:	; 1 bytes @ 0x1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x1
	global	find_project_key@data
find_project_key@data:	; 1 bytes @ 0x1
	global	checksum@length
checksum@length:	; 1 bytes @ 0x1
	global	rece_byte@read_data
rece_byte@read_data:	; 1 bytes @ 0x1
	global	send_byte@write_data
send_byte@write_data:	; 1 bytes @ 0x1
	global	read_eeprom@address
read_eeprom@address:	; 1 bytes @ 0x1
	global	ds1302_write_byte@data
ds1302_write_byte@data:	; 1 bytes @ 0x1
	global	ds1302_read_byte@data
ds1302_read_byte@data:	; 1 bytes @ 0x1
	global	PutRC500@data
PutRC500@data:	; 1 bytes @ 0x1
	global	GetRC500@address
GetRC500@address:	; 1 bytes @ 0x1
	global	Mf500HostCodeKey@coded
Mf500HostCodeKey@coded:	; 1 bytes @ 0x1
	global	uart1_send_byte@data
uart1_send_byte@data:	; 1 bytes @ 0x1
	global	uart2_send_byte@data
uart2_send_byte@data:	; 1 bytes @ 0x1
	global	delay_ms@count
delay_ms@count:	; 2 bytes @ 0x1
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x1
	global	memcpy@s1
memcpy@s1:	; 2 bytes @ 0x1
	ds	1
??_checksum:	; 0 bytes @ 0x2
??_PutRC500:	; 0 bytes @ 0x2
??_Mf500HostCodeKey:	; 0 bytes @ 0x2
	global	rece_byte@i
rece_byte@i:	; 1 bytes @ 0x2
	global	send_byte@i
send_byte@i:	; 1 bytes @ 0x2
	global	ds1302_write_byte@i
ds1302_write_byte@i:	; 1 bytes @ 0x2
	global	ds1302_read_byte@i
ds1302_read_byte@i:	; 1 bytes @ 0x2
	global	PutRC500@address
PutRC500@address:	; 1 bytes @ 0x2
	global	GetRC500@tmp
GetRC500@tmp:	; 1 bytes @ 0x2
	global	find_project_key@i
find_project_key@i:	; 2 bytes @ 0x2
	ds	1
??_delay_ms:	; 0 bytes @ 0x3
??_read_24c02:	; 0 bytes @ 0x3
??_ds1302_read:	; 0 bytes @ 0x3
?_ds1302_write:	; 0 bytes @ 0x3
?_WriteRC:	; 0 bytes @ 0x3
??_ReadRC:	; 0 bytes @ 0x3
??_ISR_RC500:	; 0 bytes @ 0x3
??_PcdReset:	; 0 bytes @ 0x3
	global	do_check_sum@sum
do_check_sum@sum:	; 1 bytes @ 0x3
	global	checksum@data
checksum@data:	; 1 bytes @ 0x3
	global	read_24c02@address
read_24c02@address:	; 1 bytes @ 0x3
	global	ds1302_read@address
ds1302_read@address:	; 1 bytes @ 0x3
	global	ds1302_write@data
ds1302_write@data:	; 1 bytes @ 0x3
	global	WriteRC@data
WriteRC@data:	; 1 bytes @ 0x3
	global	Mf500HostCodeKey@an
Mf500HostCodeKey@an:	; 1 bytes @ 0x3
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x3
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x3
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x3
	ds	1
??_ds1302_write:	; 0 bytes @ 0x4
??_WriteRC:	; 0 bytes @ 0x4
	global	do_check_sum@length
do_check_sum@length:	; 1 bytes @ 0x4
	global	checksum@sum
checksum@sum:	; 1 bytes @ 0x4
	global	read_24c02@data
read_24c02@data:	; 1 bytes @ 0x4
	global	ds1302_read@temp
ds1302_read@temp:	; 1 bytes @ 0x4
	global	ds1302_write@address
ds1302_write@address:	; 1 bytes @ 0x4
	global	ReadRC@address
ReadRC@address:	; 1 bytes @ 0x4
	global	Mf500HostCodeKey@uncoded
Mf500HostCodeKey@uncoded:	; 1 bytes @ 0x4
	global	PcdReset@count01
PcdReset@count01:	; 2 bytes @ 0x4
	ds	1
??_ds1302_set_time:	; 0 bytes @ 0x5
??_ds1302_get_time:	; 0 bytes @ 0x5
??_memcpy:	; 0 bytes @ 0x5
??_check_user_card:	; 0 bytes @ 0x5
??_check_report_the_loss:	; 0 bytes @ 0x5
??_find_card:	; 0 bytes @ 0x5
??___awdiv:	; 0 bytes @ 0x5
	global	check_user_card@i
check_user_card@i:	; 1 bytes @ 0x5
	global	do_check_sum@i
do_check_sum@i:	; 1 bytes @ 0x5
	global	check_report_the_loss@i
check_report_the_loss@i:	; 1 bytes @ 0x5
	global	find_card@buffer
find_card@buffer:	; 1 bytes @ 0x5
	global	checksum@i
checksum@i:	; 1 bytes @ 0x5
	global	WriteRC@address
WriteRC@address:	; 1 bytes @ 0x5
	global	Mf500HostCodeKey@hn
Mf500HostCodeKey@hn:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	delay_ms@j
delay_ms@j:	; 2 bytes @ 0x5
	global	memcpy@s
memcpy@s:	; 2 bytes @ 0x5
	ds	1
?_SetBitMask:	; 0 bytes @ 0x6
?_ClearBitMask:	; 0 bytes @ 0x6
?_PcdSetTmo:	; 0 bytes @ 0x6
??_RC500OutSelect:	; 0 bytes @ 0x6
	global	find_card@i
find_card@i:	; 1 bytes @ 0x6
	global	SetBitMask@mask
SetBitMask@mask:	; 1 bytes @ 0x6
	global	ClearBitMask@mask
ClearBitMask@mask:	; 1 bytes @ 0x6
	global	RC500OutSelect@type
RC500OutSelect@type:	; 1 bytes @ 0x6
	global	Mf500HostCodeKey@ln
Mf500HostCodeKey@ln:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	PcdSetTmo@tmoLength
PcdSetTmo@tmoLength:	; 2 bytes @ 0x6
	global	PcdReset@count02
PcdReset@count02:	; 2 bytes @ 0x6
	ds	1
?_write_24c02:	; 0 bytes @ 0x7
??_handle_beep:	; 0 bytes @ 0x7
??_deal_floor:	; 0 bytes @ 0x7
??_SetBitMask:	; 0 bytes @ 0x7
??_ClearBitMask:	; 0 bytes @ 0x7
	global	write_24c02@data
write_24c02@data:	; 1 bytes @ 0x7
	global	SetBitMask@tmp
SetBitMask@tmp:	; 1 bytes @ 0x7
	global	ClearBitMask@tmp
ClearBitMask@tmp:	; 1 bytes @ 0x7
	global	ISR_RC500@irqMask
ISR_RC500@irqMask:	; 1 bytes @ 0x7
	global	Mf500HostCodeKey@cnt
Mf500HostCodeKey@cnt:	; 1 bytes @ 0x7
	global	memcpy@d
memcpy@d:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
??_write_24c02:	; 0 bytes @ 0x8
??_PcdSetTmo:	; 0 bytes @ 0x8
	global	write_24c02@address
write_24c02@address:	; 1 bytes @ 0x8
	global	SetBitMask@reg
SetBitMask@reg:	; 1 bytes @ 0x8
	global	ClearBitMask@reg
ClearBitMask@reg:	; 1 bytes @ 0x8
	global	ISR_RC500@oldPageSelect
ISR_RC500@oldPageSelect:	; 1 bytes @ 0x8
	global	PcdReset@ret_status
PcdReset@ret_status:	; 1 bytes @ 0x8
	global	memcpy@d1
memcpy@d1:	; 1 bytes @ 0x8
	ds	1
??_handle_config:	; 0 bytes @ 0x9
??_handle_rs485:	; 0 bytes @ 0x9
??_FlushFIFO:	; 0 bytes @ 0x9
??_PcdRfReset:	; 0 bytes @ 0x9
	global	ISR_RC500@cnt
ISR_RC500@cnt:	; 1 bytes @ 0x9
	global	PcdReset@i
PcdReset@i:	; 2 bytes @ 0x9
	ds	1
	global	ISR_RC500@nbytes
ISR_RC500@nbytes:	; 1 bytes @ 0xA
	ds	1
??_RC500Config:	; 0 bytes @ 0xB
??_init_hardware:	; 0 bytes @ 0xB
	global	ISR_RC500@irqBits
ISR_RC500@irqBits:	; 1 bytes @ 0xB
	ds	1
??_Mf500PiccWrite:	; 0 bytes @ 0xC
??_Mf500PiccRequest:	; 0 bytes @ 0xC
??_Mf500PiccAnticoll:	; 0 bytes @ 0xC
??_Mf500PiccSelect:	; 0 bytes @ 0xC
??_Mf500PiccLoadKey:	; 0 bytes @ 0xC
??_Mf500PiccAuthState:	; 0 bytes @ 0xC
??_rfcard:	; 0 bytes @ 0xC
??_read_id:	; 0 bytes @ 0xC
??_checkpsw_super:	; 0 bytes @ 0xC
??_checkpsw:	; 0 bytes @ 0xC
??_handle_ic_card:	; 0 bytes @ 0xC
??_PcdSingleResponseCmd:	; 0 bytes @ 0xC
??_Mf500PiccCommonRequest:	; 0 bytes @ 0xC
??_Mf500PiccCascSelect:	; 0 bytes @ 0xC
??_main:	; 0 bytes @ 0xC
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	deal_floor@data
deal_floor@data:	; 1 bytes @ 0x0
	global	PcdSingleResponseCmd@count01
PcdSingleResponseCmd@count01:	; 2 bytes @ 0x0
	global	handle_rs485@tmp
handle_rs485@tmp:	; 4 bytes @ 0x0
	global	handle_config@tmp_buffer
handle_config@tmp_buffer:	; 6 bytes @ 0x0
	ds	1
	global	deal_floor@i
deal_floor@i:	; 1 bytes @ 0x1
	global	PcdRfReset@ms
PcdRfReset@ms:	; 1 bytes @ 0x1
	ds	1
	global	PcdRfReset@i
PcdRfReset@i:	; 2 bytes @ 0x2
	global	PcdSingleResponseCmd@count02
PcdSingleResponseCmd@count02:	; 2 bytes @ 0x2
	global	deal_floor@floor
deal_floor@floor:	; 8 bytes @ 0x2
	ds	2
	global	handle_rs485@sum
handle_rs485@sum:	; 1 bytes @ 0x4
	global	RC500Config@ret_status
RC500Config@ret_status:	; 1 bytes @ 0x4
	global	PcdSingleResponseCmd@lastBits
PcdSingleResponseCmd@lastBits:	; 1 bytes @ 0x4
	ds	1
	global	handle_rs485@i
handle_rs485@i:	; 1 bytes @ 0x5
	global	RC500Config@i
RC500Config@i:	; 1 bytes @ 0x5
	global	PcdSingleResponseCmd@cmd
PcdSingleResponseCmd@cmd:	; 1 bytes @ 0x5
	ds	1
	global	handle_config@report_the_loss_count
handle_config@report_the_loss_count:	; 1 bytes @ 0x6
	global	handle_rs485@report_the_loss_address
handle_rs485@report_the_loss_address:	; 1 bytes @ 0x6
	global	PcdSingleResponseCmd@irqEn
PcdSingleResponseCmd@irqEn:	; 1 bytes @ 0x6
	ds	1
	global	handle_rs485@report_the_loss_count
handle_rs485@report_the_loss_count:	; 1 bytes @ 0x7
	global	PcdSingleResponseCmd@waitFor
PcdSingleResponseCmd@waitFor:	; 1 bytes @ 0x7
	global	handle_config@i
handle_config@i:	; 2 bytes @ 0x7
	ds	1
	global	PcdSingleResponseCmd@ret_status
PcdSingleResponseCmd@ret_status:	; 1 bytes @ 0x8
	ds	1
	global	PcdSingleResponseCmd@tmpStatus
PcdSingleResponseCmd@tmpStatus:	; 1 bytes @ 0x9
	ds	1
?_Mf500PiccRead:	; 1 bytes @ 0xA
?_Mf500PiccWrite:	; 1 bytes @ 0xA
?_Mf500PiccAuthState:	; 1 bytes @ 0xA
?_Mf500PiccCommonRequest:	; 1 bytes @ 0xA
?_Mf500PiccCascAnticoll:	; 1 bytes @ 0xA
?_Mf500PiccCascSelect:	; 1 bytes @ 0xA
	global	Mf500PiccCommonRequest@atq
Mf500PiccCommonRequest@atq:	; 1 bytes @ 0xA
	global	Mf500PiccCascAnticoll@bcnt
Mf500PiccCascAnticoll@bcnt:	; 1 bytes @ 0xA
	global	Mf500PiccCascSelect@snr
Mf500PiccCascSelect@snr:	; 1 bytes @ 0xA
	global	Mf500PiccAuthState@snr
Mf500PiccAuthState@snr:	; 1 bytes @ 0xA
	global	Mf500PiccLoadKey@keys
Mf500PiccLoadKey@keys:	; 1 bytes @ 0xA
	global	Mf500PiccRead@data1
Mf500PiccRead@data1:	; 1 bytes @ 0xA
	global	Mf500PiccWrite@data1
Mf500PiccWrite@data1:	; 1 bytes @ 0xA
	ds	1
??_Mf500PiccRead:	; 0 bytes @ 0xB
	global	Mf500PiccCommonRequest@req_code
Mf500PiccCommonRequest@req_code:	; 1 bytes @ 0xB
	global	Mf500PiccCascAnticoll@snr
Mf500PiccCascAnticoll@snr:	; 1 bytes @ 0xB
	global	Mf500PiccCascSelect@select_code
Mf500PiccCascSelect@select_code:	; 1 bytes @ 0xB
	global	Mf500PiccAuthState@block
Mf500PiccAuthState@block:	; 1 bytes @ 0xB
	global	Mf500PiccLoadKey@ret_status
Mf500PiccLoadKey@ret_status:	; 1 bytes @ 0xB
	global	Mf500PiccWrite@addr
Mf500PiccWrite@addr:	; 1 bytes @ 0xB
	ds	1
??_Mf500PiccCascAnticoll:	; 0 bytes @ 0xC
	global	Mf500PiccCommonRequest@ret_status
Mf500PiccCommonRequest@ret_status:	; 1 bytes @ 0xC
	global	Mf500PiccCascSelect@ret_status
Mf500PiccCascSelect@ret_status:	; 1 bytes @ 0xC
	global	Mf500PiccAuthState@auth_mode
Mf500PiccAuthState@auth_mode:	; 1 bytes @ 0xC
	global	Mf500PiccRead@addr
Mf500PiccRead@addr:	; 1 bytes @ 0xC
	global	Mf500PiccWrite@ret_status
Mf500PiccWrite@ret_status:	; 1 bytes @ 0xC
	ds	1
?_Mf500PiccRequest:	; 1 bytes @ 0xD
	global	Mf500PiccRequest@atq
Mf500PiccRequest@atq:	; 1 bytes @ 0xD
	global	Mf500PiccSelect@snr
Mf500PiccSelect@snr:	; 1 bytes @ 0xD
	global	Mf500PiccAuthState@ret_status
Mf500PiccAuthState@ret_status:	; 1 bytes @ 0xD
	global	Mf500PiccRead@ret_status
Mf500PiccRead@ret_status:	; 1 bytes @ 0xD
	ds	1
	global	Mf500PiccRequest@req_code
Mf500PiccRequest@req_code:	; 1 bytes @ 0xE
	global	Mf500PiccRead@i
Mf500PiccRead@i:	; 1 bytes @ 0xE
	ds	1
??_read_card_content:	; 0 bytes @ 0xF
	ds	1
	global	Mf500PiccCascAnticoll@select_code
Mf500PiccCascAnticoll@select_code:	; 1 bytes @ 0x10
	global	read_card_content@data
read_card_content@data:	; 16 bytes @ 0x10
	ds	1
	global	Mf500PiccCascAnticoll@snr_crc
Mf500PiccCascAnticoll@snr_crc:	; 1 bytes @ 0x11
	ds	1
	global	Mf500PiccCascAnticoll@snr_check
Mf500PiccCascAnticoll@snr_check:	; 1 bytes @ 0x12
	ds	1
	global	Mf500PiccCascAnticoll@dummyShift2
Mf500PiccCascAnticoll@dummyShift2:	; 1 bytes @ 0x13
	ds	1
	global	Mf500PiccCascAnticoll@dummyShift1
Mf500PiccCascAnticoll@dummyShift1:	; 1 bytes @ 0x14
	ds	1
	global	Mf500PiccCascAnticoll@complete
Mf500PiccCascAnticoll@complete:	; 1 bytes @ 0x15
	ds	1
	global	Mf500PiccCascAnticoll@byteOffset
Mf500PiccCascAnticoll@byteOffset:	; 1 bytes @ 0x16
	ds	1
	global	Mf500PiccCascAnticoll@snr_in
Mf500PiccCascAnticoll@snr_in:	; 4 bytes @ 0x17
	ds	4
	global	Mf500PiccCascAnticoll@nbytes
Mf500PiccCascAnticoll@nbytes:	; 1 bytes @ 0x1B
	ds	1
	global	Mf500PiccCascAnticoll@ret_status
Mf500PiccCascAnticoll@ret_status:	; 1 bytes @ 0x1C
	ds	1
	global	Mf500PiccCascAnticoll@nbits
Mf500PiccCascAnticoll@nbits:	; 1 bytes @ 0x1D
	ds	1
	global	Mf500PiccCascAnticoll@i
Mf500PiccCascAnticoll@i:	; 1 bytes @ 0x1E
	ds	1
?_Mf500PiccAnticoll:	; 1 bytes @ 0x1F
	global	Mf500PiccAnticoll@snr
Mf500PiccAnticoll@snr:	; 1 bytes @ 0x1F
	ds	1
	global	Mf500PiccAnticoll@bcnt
Mf500PiccAnticoll@bcnt:	; 1 bytes @ 0x20
	global	read_card_content@user_count
read_card_content@user_count:	; 2 bytes @ 0x20
	ds	1
	global	rfcard@ret
rfcard@ret:	; 1 bytes @ 0x21
	ds	1
	global	read_card_content@i
read_card_content@i:	; 1 bytes @ 0x22
	ds	1
	global	read_card_content@ret
read_card_content@ret:	; 1 bytes @ 0x23
	ds	1
;!
;!Data Sizes:
;!    Strings     5
;!    Constant    256
;!    Data        6
;!    BSS         118
;!    Persistent  7
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      13
;!    BANK0            80     36      76
;!    BANK1            80      5      79
;!    BANK2            80      0      16
;!    BANK3            80      0       0
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            80      0       0
;!    BANK7            80      0       0
;!    BANK8            80      0       0
;!    BANK9            80      0       0
;!    BANK10           80      0       0
;!    BANK11           80      0       0
;!    BANK12           48      0       0

;!
;!Pointer List with Targets:
;!
;!    memcpy@d1	PTR void  size(1) Largest target is 16
;!		 -> Mf500PiccCascAnticoll@snr_in(BANK0[4]), MSndBuffer(BANK1[16]), snr_rc500(BANK1[4]), tt1(BANK1[2]), 
;!		 -> read_card_content@data(BANK0[16]), 
;!
;!    memcpy@d	PTR unsigned char  size(1) Largest target is 16
;!		 -> Mf500PiccCascAnticoll@snr_in(BANK0[4]), MSndBuffer(BANK1[16]), snr_rc500(BANK1[4]), tt1(BANK1[2]), 
;!		 -> read_card_content@data(BANK0[16]), 
;!
;!    memcpy@s1	PTR const void  size(2) Largest target is 16
;!		 -> STR_1(CODE[5]), Mf500PiccCascAnticoll@snr_in(BANK0[4]), MRcvBuffer(BANK2[16]), snr_rc500(BANK1[4]), 
;!		 -> read_card_content@data(BANK0[16]), 
;!
;!    memcpy@s	PTR const unsigned char  size(2) Largest target is 16
;!		 -> STR_1(CODE[5]), Mf500PiccCascAnticoll@snr_in(BANK0[4]), MRcvBuffer(BANK2[16]), snr_rc500(BANK1[4]), 
;!		 -> read_card_content@data(BANK0[16]), 
;!
;!    Mf500PiccWrite@data1	PTR unsigned char  size(1) Largest target is 16
;!		 -> read_card_content@data(BANK0[16]), 
;!
;!    Mf500PiccRead@data1	PTR unsigned char  size(1) Largest target is 16
;!		 -> read_card_content@data(BANK0[16]), 
;!
;!    Mf500PiccLoadKey@keys	PTR unsigned char  size(1) Largest target is 6
;!		 -> keys(BANK1[6]), keys_super(BANK1[6]), 
;!
;!    Mf500PiccAuthState@snr	PTR unsigned char  size(1) Largest target is 4
;!		 -> snr_rc500(BANK1[4]), 
;!
;!    Mf500HostCodeKey@coded	PTR unsigned char  size(1) Largest target is 16
;!		 -> MSndBuffer(BANK1[16]), 
;!
;!    Mf500HostCodeKey@uncoded	PTR unsigned char  size(1) Largest target is 6
;!		 -> keys(BANK1[6]), keys_super(BANK1[6]), 
;!
;!    Mf500PiccSelect@snr	PTR unsigned char  size(1) Largest target is 4
;!		 -> snr_rc500(BANK1[4]), 
;!
;!    Mf500PiccCascSelect@snr	PTR unsigned char  size(1) Largest target is 4
;!		 -> snr_rc500(BANK1[4]), 
;!
;!    Mf500PiccAnticoll@snr	PTR unsigned char  size(1) Largest target is 4
;!		 -> snr_rc500(BANK1[4]), 
;!
;!    Mf500PiccCascAnticoll@snr	PTR unsigned char  size(1) Largest target is 4
;!		 -> snr_rc500(BANK1[4]), 
;!
;!    Mf500PiccRequest@atq	PTR unsigned char  size(1) Largest target is 2
;!		 -> tt1(BANK1[2]), 
;!
;!    sp__memcpy	PTR void  size(1) Largest target is 16
;!		 -> Mf500PiccCascAnticoll@snr_in(BANK0[4]), MSndBuffer(BANK1[16]), snr_rc500(BANK1[4]), tt1(BANK1[2]), 
;!		 -> read_card_content@data(BANK0[16]), 
;!
;!    Mf500PiccCommonRequest@atq	PTR unsigned char  size(1) Largest target is 2
;!		 -> tt1(BANK1[2]), 
;!
;!    MpIsrIn	PTR unsigned char  size(1) Largest target is 16
;!		 -> MRcvBuffer(BANK2[16]), NULL(NULL[0]), 
;!
;!    MpIsrOut	PTR unsigned char  size(1) Largest target is 16
;!		 -> MSndBuffer(BANK1[16]), NULL(NULL[0]), 
;!
;!    MpIsrInfo	PTR struct MfCmdInfo size(1) Largest target is 8
;!		 -> MInfo(BANK0[8]), NULL(NULL[0]), 
;!
;!    checksum@data	PTR unsigned char  size(1) Largest target is 16
;!		 -> read_card_content@data(BANK0[16]), 
;!
;!    find_card@buffer	PTR unsigned char  size(1) Largest target is 4
;!		 -> handle_rs485@tmp(BANK0[4]), 
;!
;!    deal_floor@data	PTR unsigned char  size(1) Largest target is 14
;!		 -> user_card(BANK1[14]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _RC500OutSelect->_WriteRC
;!    _RC500Config->_PcdReset
;!    _PcdRfReset->_ClearBitMask
;!    _PcdRfReset->_SetBitMask
;!    _PcdReset->_GetRC500
;!    _PcdReset->_PutRC500
;!    _handle_rs485->_write_24c02
;!    _find_card->_read_24c02
;!    _check_report_the_loss->_read_24c02
;!    _deal_floor->_delay_ms
;!    _check_user_card->_read_24c02
;!    _handle_beep->_delay_ms
;!    _ClearBitMask->_WriteRC
;!    _PcdSingleResponseCmd->_ISR_RC500
;!    _ISR_RC500->_GetRC500
;!    _ISR_RC500->_PutRC500
;!    _FlushFIFO->_SetBitMask
;!    _SetBitMask->_WriteRC
;!    _ReadRC->_GetRC500
;!    _ReadRC->_PutRC500
;!    _PcdSetTmo->_WriteRC
;!    _WriteRC->_PutRC500
;!    _handle_config->_write_24c02
;!    _write_24c02->_delay_ms
;!    _read_24c02->_rece_byte
;!    _read_24c02->_send_byte
;!    _ds1302_set_time->_ds1302_write
;!    _ds1302_write->_ds1302_write_byte
;!    _ds1302_get_time->_ds1302_read
;!    _ds1302_read->_ds1302_read_byte
;!    _ds1302_read->_ds1302_write_byte
;!
;!Critical Paths under _isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _init_hardware->_RC500Config
;!    _RC500Config->_PcdRfReset
;!    _handle_ic_card->_read_card_content
;!    _read_card_content->_Mf500PiccRead
;!    _Mf500PiccWrite->_PcdSingleResponseCmd
;!    _Mf500PiccRead->_PcdSingleResponseCmd
;!    _checkpsw_super->_rfcard
;!    _rfcard->_Mf500PiccAnticoll
;!    _Mf500PiccRequest->_Mf500PiccCommonRequest
;!    _Mf500PiccCommonRequest->_PcdSingleResponseCmd
;!    _Mf500PiccAnticoll->_Mf500PiccCascAnticoll
;!    _Mf500PiccCascAnticoll->_PcdSingleResponseCmd
;!    _read_id->_Mf500PiccSelect
;!    _Mf500PiccSelect->_Mf500PiccCascSelect
;!    _Mf500PiccCascSelect->_PcdSingleResponseCmd
;!    _checkpsw->_Mf500PiccAuthState
;!    _Mf500PiccLoadKey->_PcdSingleResponseCmd
;!    _Mf500PiccAuthState->_PcdSingleResponseCmd
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _isr in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _isr in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _isr in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _isr in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _isr in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _isr in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _isr in BANK12
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0  512717
;!                                              0 BANK1      5     5      0
;!                           _delay_ms
;!                      _handle_config
;!                     _handle_ic_card
;!                       _handle_rs485
;!                       _handle_timer
;!                      _init_hardware
;!                         _read_24c02
;!                    _uart1_send_byte
;!                        _write_24c02
;! ---------------------------------------------------------------------------------
;! (1) _init_hardware                                        0     0      0   33323
;!                        _RC500Config
;!                     _RC500OutSelect
;!                          _init_beep
;!                        _init_ds1302
;!                           _init_i2c
;!                     _init_interrupt
;!                           _init_led
;!                       _init_mfrc500
;!                           _init_osc
;!                          _init_port
;!                        _init_timer1
;!                         _init_uart1
;!                         _init_uart2
;! ---------------------------------------------------------------------------------
;! (2) _init_uart2                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_uart1                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_timer1                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_port                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_osc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_mfrc500                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_led                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_interrupt                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_i2c                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_ds1302                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_beep                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _RC500OutSelect                                       1     1      0    4159
;!                                              6 COMMON     1     1      0
;!                            _WriteRC
;! ---------------------------------------------------------------------------------
;! (2) _RC500Config                                          2     2      0   29164
;!                                              4 BANK0      2     2      0
;!                       _ClearBitMask
;!                           _PcdReset
;!                         _PcdRfReset
;!                          _PcdSetTmo
;!                            _WriteRC
;! ---------------------------------------------------------------------------------
;! (3) _PcdRfReset                                           4     4      0   12055
;!                                              0 BANK0      4     4      0
;!                       _ClearBitMask
;!                         _SetBitMask
;! ---------------------------------------------------------------------------------
;! (3) _PcdReset                                             8     8      0    1813
;!                                              3 COMMON     8     8      0
;!                           _GetRC500
;!                           _PutRC500
;! ---------------------------------------------------------------------------------
;! (1) _handle_timer                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _handle_rs485                                         8     8      0    9916
;!                                              0 BANK0      8     8      0
;!              _check_report_the_loss
;!                       _do_check_sum
;!                          _find_card
;!                         _read_24c02
;!                    _uart1_send_byte
;!                    _uart2_send_byte
;!                        _write_24c02
;! ---------------------------------------------------------------------------------
;! (2) _uart2_send_byte                                      1     1      0      31
;!                                              1 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _find_card                                            2     2      0     658
;!                                              5 COMMON     2     2      0
;!                         _read_24c02
;! ---------------------------------------------------------------------------------
;! (2) _do_check_sum                                         5     5      0     176
;!                                              1 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! (2) _check_report_the_loss                                1     1      0     473
;!                                              5 COMMON     1     1      0
;!                         _read_24c02
;! ---------------------------------------------------------------------------------
;! (1) _handle_ic_card                                       0     0      0  439696
;!                           _checkpsw
;!                     _checkpsw_super
;!                        _handle_beep
;!                  _read_card_content
;!                            _read_id
;!                             _rfcard
;!                            _same_id
;! ---------------------------------------------------------------------------------
;! (2) _same_id                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _read_card_content                                   21    21      0   97941
;!                                             15 BANK0     21    21      0
;!                      _Mf500PiccRead
;!                     _Mf500PiccWrite
;!                    _check_user_card
;!                           _checksum
;!                         _deal_floor
;!                    _ds1302_get_time
;!                    _ds1302_set_time
;!                         _read_24c02
;!                    _uart1_send_byte
;!                        _write_24c02
;! ---------------------------------------------------------------------------------
;! (3) _deal_floor                                          11    11      0   12397
;!                                              7 COMMON     1     1      0
;!                                              0 BANK0     10    10      0
;!                           _delay_ms
;!                    _uart1_send_byte
;! ---------------------------------------------------------------------------------
;! (3) _checksum                                             5     4      1     360
;!                                              1 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (3) _check_user_card                                      1     1      0     473
;!                                              5 COMMON     1     1      0
;!                         _read_24c02
;! ---------------------------------------------------------------------------------
;! (3) _Mf500PiccWrite                                       3     2      1   36914
;!                                             10 BANK0      3     2      1
;!                          _FlushFIFO
;!                          _PcdSetTmo
;!               _PcdSingleResponseCmd
;!                            _WriteRC
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (3) _Mf500PiccRead                                        5     4      1   37149
;!                                             10 BANK0      5     4      1
;!                          _FlushFIFO
;!                          _PcdSetTmo
;!               _PcdSingleResponseCmd
;!                            _WriteRC
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (2) _handle_beep                                          0     0      0    5661
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (2) _checkpsw_super                                       0     0      0  168047
;!                 _Mf500PiccAuthState
;!                   _Mf500PiccLoadKey
;!                            _read_id
;!                             _rfcard
;! ---------------------------------------------------------------------------------
;! (2) _rfcard                                               1     1      0   70846
;!                                             33 BANK0      1     1      0
;!                  _Mf500PiccAnticoll
;!                   _Mf500PiccRequest
;! ---------------------------------------------------------------------------------
;! (3) _Mf500PiccRequest                                     2     1      1   31105
;!                                             13 BANK0      2     1      1
;!             _Mf500PiccCommonRequest
;! ---------------------------------------------------------------------------------
;! (4) _Mf500PiccCommonRequest                               3     2      1   30978
;!                                             10 BANK0      3     2      1
;!                          _PcdSetTmo
;!               _PcdSingleResponseCmd
;!                            _WriteRC
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (3) _Mf500PiccAnticoll                                    2     1      1   39701
;!                                             31 BANK0      2     1      1
;!              _Mf500PiccCascAnticoll
;! ---------------------------------------------------------------------------------
;! (4) _Mf500PiccCascAnticoll                               21    19      2   39574
;!                                             10 BANK0     21    19      2
;!                       _ClearBitMask
;!                          _PcdSetTmo
;!               _PcdSingleResponseCmd
;!                            _WriteRC
;!                            ___awdiv
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (5) ___awdiv                                              8     4      4     606
;!                                              1 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _read_id                                              0     0      0   37043
;!                    _Mf500PiccSelect
;! ---------------------------------------------------------------------------------
;! (3) _Mf500PiccSelect                                      1     1      0   37043
;!                                             13 BANK0      1     1      0
;!                _Mf500PiccCascSelect
;! ---------------------------------------------------------------------------------
;! (4) _Mf500PiccCascSelect                                  3     2      1   36982
;!                                             10 BANK0      3     2      1
;!                       _ClearBitMask
;!                          _PcdSetTmo
;!               _PcdSingleResponseCmd
;!                            _WriteRC
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (4) _ClearBitMask                                         3     2      1    6038
;!                                              6 COMMON     3     2      1
;!                             _ReadRC
;!                            _WriteRC
;! ---------------------------------------------------------------------------------
;! (2) _checkpsw                                             0     0      0   60158
;!                 _Mf500PiccAuthState
;!                   _Mf500PiccLoadKey
;! ---------------------------------------------------------------------------------
;! (3) _Mf500PiccLoadKey                                     2     2      0   31550
;!                                             10 BANK0      2     2      0
;!                          _FlushFIFO
;!                   _Mf500HostCodeKey
;!                          _PcdSetTmo
;!               _PcdSingleResponseCmd
;! ---------------------------------------------------------------------------------
;! (4) _Mf500HostCodeKey                                     7     6      1     590
;!                                              1 COMMON     7     6      1
;! ---------------------------------------------------------------------------------
;! (3) _Mf500PiccAuthState                                   4     2      2   28608
;!                                             10 BANK0      4     2      2
;!                          _PcdSetTmo
;!               _PcdSingleResponseCmd
;!                             _ReadRC
;!                             _memcpy
;! ---------------------------------------------------------------------------------
;! (5) _memcpy                                               8     4      4    1694
;!                                              1 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (5) _PcdSingleResponseCmd                                10    10      0   19974
;!                                              0 BANK0     10    10      0
;!                          _FlushFIFO
;!                          _ISR_RC500
;!                             _ReadRC
;!                         _SetBitMask
;!                            _WriteRC
;! ---------------------------------------------------------------------------------
;! (6) _ISR_RC500                                            9     9      0    1863
;!                                              3 COMMON     9     9      0
;!                           _GetRC500
;!                           _PutRC500
;! ---------------------------------------------------------------------------------
;! (6) _FlushFIFO                                            0     0      0    5908
;!                         _SetBitMask
;! ---------------------------------------------------------------------------------
;! (4) _SetBitMask                                           3     2      1    5908
;!                                              6 COMMON     3     2      1
;!                             _ReadRC
;!                            _WriteRC
;! ---------------------------------------------------------------------------------
;! (5) _ReadRC                                               2     2      0    1455
;!                                              3 COMMON     2     2      0
;!                           _GetRC500
;!                           _PutRC500
;! ---------------------------------------------------------------------------------
;! (6) _GetRC500                                             2     2      0      65
;!                                              1 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _PcdSetTmo                                            2     0      2    4950
;!                                              6 COMMON     2     0      2
;!                            _WriteRC
;! ---------------------------------------------------------------------------------
;! (3) _WriteRC                                              3     2      1    4128
;!                                              3 COMMON     3     2      1
;!                           _PutRC500
;! ---------------------------------------------------------------------------------
;! (4) _PutRC500                                             2     1      1    1328
;!                                              1 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _handle_config                                       11    11      0   15833
;!                                              9 COMMON     2     2      0
;!                                              0 BANK0      9     9      0
;!                           _delay_ms
;!                    _ds1302_get_time
;!                    _ds1302_set_time
;!                   _find_project_key
;!                         _read_24c02
;!                        _read_eeprom
;!                    _uart1_send_byte
;!                        _write_24c02
;! ---------------------------------------------------------------------------------
;! (1) _write_24c02                                          2     1      1    7580
;!                                              7 COMMON     2     1      1
;!                           _delay_ms
;!                          _send_byte
;!                          _start_i2c
;!                           _stop_i2c
;! ---------------------------------------------------------------------------------
;! (2) _delay_ms                                             6     4      2    5661
;!                                              1 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _uart1_send_byte                                      1     1      0      31
;!                                              1 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _read_eeprom                                          1     1      0      31
;!                                              1 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _read_24c02                                           2     2      0     281
;!                                              3 COMMON     2     2      0
;!                          _rece_byte
;!                          _send_byte
;!                          _start_i2c
;!                           _stop_i2c
;! ---------------------------------------------------------------------------------
;! (2) _stop_i2c                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _start_i2c                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _send_byte                                            2     2      0     102
;!                                              1 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _rece_byte                                            2     2      0     111
;!                                              1 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _find_project_key                                     3     3      0     161
;!                                              1 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (3) _ds1302_set_time                                      0     0      0     811
;!                       _ds1302_write
;! ---------------------------------------------------------------------------------
;! (4) _ds1302_write                                         2     1      1     811
;!                                              3 COMMON     2     1      1
;!                  _ds1302_write_byte
;! ---------------------------------------------------------------------------------
;! (3) _ds1302_get_time                                      0     0      0     275
;!                        _ds1302_read
;! ---------------------------------------------------------------------------------
;! (4) _ds1302_read                                          2     2      0     275
;!                                              3 COMMON     2     2      0
;!                   _ds1302_read_byte
;!                  _ds1302_write_byte
;! ---------------------------------------------------------------------------------
;! (5) _ds1302_write_byte                                    2     2      0     102
;!                                              1 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (5) _ds1302_read_byte                                     2     2      0     108
;!                                              1 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (11) _isr                                                 1     1      0      46
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 11
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay_ms
;!   _handle_config
;!     _delay_ms
;!     _ds1302_get_time
;!       _ds1302_read
;!         _ds1302_read_byte
;!         _ds1302_write_byte
;!     _ds1302_set_time
;!       _ds1302_write
;!         _ds1302_write_byte
;!     _find_project_key
;!     _read_24c02
;!       _rece_byte
;!       _send_byte
;!       _start_i2c
;!       _stop_i2c
;!     _read_eeprom
;!     _uart1_send_byte
;!     _write_24c02
;!       _delay_ms
;!       _send_byte
;!       _start_i2c
;!       _stop_i2c
;!   _handle_ic_card
;!     _checkpsw
;!       _Mf500PiccAuthState
;!         _PcdSetTmo
;!           _WriteRC
;!             _PutRC500
;!         _PcdSingleResponseCmd
;!           _FlushFIFO
;!             _SetBitMask
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!           _ISR_RC500
;!             _GetRC500
;!             _PutRC500
;!           _ReadRC
;!             _GetRC500
;!             _PutRC500
;!           _SetBitMask
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _WriteRC
;!               _PutRC500
;!           _WriteRC
;!             _PutRC500
;!         _ReadRC
;!           _GetRC500
;!           _PutRC500
;!         _memcpy
;!       _Mf500PiccLoadKey
;!         _FlushFIFO
;!           _SetBitMask
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _WriteRC
;!               _PutRC500
;!         _Mf500HostCodeKey
;!         _PcdSetTmo
;!           _WriteRC
;!             _PutRC500
;!         _PcdSingleResponseCmd
;!           _FlushFIFO
;!             _SetBitMask
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!           _ISR_RC500
;!             _GetRC500
;!             _PutRC500
;!           _ReadRC
;!             _GetRC500
;!             _PutRC500
;!           _SetBitMask
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _WriteRC
;!               _PutRC500
;!           _WriteRC
;!             _PutRC500
;!     _checkpsw_super
;!       _Mf500PiccAuthState
;!         _PcdSetTmo
;!           _WriteRC
;!             _PutRC500
;!         _PcdSingleResponseCmd
;!           _FlushFIFO
;!             _SetBitMask
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!           _ISR_RC500
;!             _GetRC500
;!             _PutRC500
;!           _ReadRC
;!             _GetRC500
;!             _PutRC500
;!           _SetBitMask
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _WriteRC
;!               _PutRC500
;!           _WriteRC
;!             _PutRC500
;!         _ReadRC
;!           _GetRC500
;!           _PutRC500
;!         _memcpy
;!       _Mf500PiccLoadKey
;!         _FlushFIFO
;!           _SetBitMask
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _WriteRC
;!               _PutRC500
;!         _Mf500HostCodeKey
;!         _PcdSetTmo
;!           _WriteRC
;!             _PutRC500
;!         _PcdSingleResponseCmd
;!           _FlushFIFO
;!             _SetBitMask
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!           _ISR_RC500
;!             _GetRC500
;!             _PutRC500
;!           _ReadRC
;!             _GetRC500
;!             _PutRC500
;!           _SetBitMask
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _WriteRC
;!               _PutRC500
;!           _WriteRC
;!             _PutRC500
;!       _read_id
;!         _Mf500PiccSelect
;!           _Mf500PiccCascSelect
;!             _ClearBitMask
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!             _PcdSetTmo
;!               _WriteRC
;!                 _PutRC500
;!             _PcdSingleResponseCmd
;!               _FlushFIFO
;!                 _SetBitMask
;!                   _ReadRC
;!                     _GetRC500
;!                     _PutRC500
;!                   _WriteRC
;!                     _PutRC500
;!               _ISR_RC500
;!                 _GetRC500
;!                 _PutRC500
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _SetBitMask
;!                 _ReadRC
;!                   _GetRC500
;!                   _PutRC500
;!                 _WriteRC
;!                   _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!             _WriteRC
;!               _PutRC500
;!             _memcpy
;!       _rfcard
;!         _Mf500PiccAnticoll
;!           _Mf500PiccCascAnticoll
;!             _ClearBitMask
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!             _PcdSetTmo
;!               _WriteRC
;!                 _PutRC500
;!             _PcdSingleResponseCmd
;!               _FlushFIFO
;!                 _SetBitMask
;!                   _ReadRC
;!                     _GetRC500
;!                     _PutRC500
;!                   _WriteRC
;!                     _PutRC500
;!               _ISR_RC500
;!                 _GetRC500
;!                 _PutRC500
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _SetBitMask
;!                 _ReadRC
;!                   _GetRC500
;!                   _PutRC500
;!                 _WriteRC
;!                   _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!             _WriteRC
;!               _PutRC500
;!             ___awdiv
;!             _memcpy
;!         _Mf500PiccRequest
;!           _Mf500PiccCommonRequest
;!             _PcdSetTmo
;!               _WriteRC
;!                 _PutRC500
;!             _PcdSingleResponseCmd
;!               _FlushFIFO
;!                 _SetBitMask
;!                   _ReadRC
;!                     _GetRC500
;!                     _PutRC500
;!                   _WriteRC
;!                     _PutRC500
;!               _ISR_RC500
;!                 _GetRC500
;!                 _PutRC500
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _SetBitMask
;!                 _ReadRC
;!                   _GetRC500
;!                   _PutRC500
;!                 _WriteRC
;!                   _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!             _WriteRC
;!               _PutRC500
;!             _memcpy
;!     _handle_beep
;!       _delay_ms
;!     _read_card_content
;!       _Mf500PiccRead
;!         _FlushFIFO
;!           _SetBitMask
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _WriteRC
;!               _PutRC500
;!         _PcdSetTmo
;!           _WriteRC
;!             _PutRC500
;!         _PcdSingleResponseCmd
;!           _FlushFIFO
;!             _SetBitMask
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!           _ISR_RC500
;!             _GetRC500
;!             _PutRC500
;!           _ReadRC
;!             _GetRC500
;!             _PutRC500
;!           _SetBitMask
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _WriteRC
;!               _PutRC500
;!           _WriteRC
;!             _PutRC500
;!         _WriteRC
;!           _PutRC500
;!         _memcpy
;!       _Mf500PiccWrite
;!         _FlushFIFO
;!           _SetBitMask
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _WriteRC
;!               _PutRC500
;!         _PcdSetTmo
;!           _WriteRC
;!             _PutRC500
;!         _PcdSingleResponseCmd
;!           _FlushFIFO
;!             _SetBitMask
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!           _ISR_RC500
;!             _GetRC500
;!             _PutRC500
;!           _ReadRC
;!             _GetRC500
;!             _PutRC500
;!           _SetBitMask
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _WriteRC
;!               _PutRC500
;!           _WriteRC
;!             _PutRC500
;!         _WriteRC
;!           _PutRC500
;!         _memcpy
;!       _check_user_card
;!         _read_24c02
;!           _rece_byte
;!           _send_byte
;!           _start_i2c
;!           _stop_i2c
;!       _checksum
;!       _deal_floor
;!         _delay_ms
;!         _uart1_send_byte
;!       _ds1302_get_time
;!         _ds1302_read
;!           _ds1302_read_byte
;!           _ds1302_write_byte
;!       _ds1302_set_time
;!         _ds1302_write
;!           _ds1302_write_byte
;!       _read_24c02
;!         _rece_byte
;!         _send_byte
;!         _start_i2c
;!         _stop_i2c
;!       _uart1_send_byte
;!       _write_24c02
;!         _delay_ms
;!         _send_byte
;!         _start_i2c
;!         _stop_i2c
;!     _read_id
;!       _Mf500PiccSelect
;!         _Mf500PiccCascSelect
;!           _ClearBitMask
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _WriteRC
;!               _PutRC500
;!           _PcdSetTmo
;!             _WriteRC
;!               _PutRC500
;!           _PcdSingleResponseCmd
;!             _FlushFIFO
;!               _SetBitMask
;!                 _ReadRC
;!                   _GetRC500
;!                   _PutRC500
;!                 _WriteRC
;!                   _PutRC500
;!             _ISR_RC500
;!               _GetRC500
;!               _PutRC500
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _SetBitMask
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!             _WriteRC
;!               _PutRC500
;!           _WriteRC
;!             _PutRC500
;!           _memcpy
;!     _rfcard
;!       _Mf500PiccAnticoll
;!         _Mf500PiccCascAnticoll
;!           _ClearBitMask
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _WriteRC
;!               _PutRC500
;!           _PcdSetTmo
;!             _WriteRC
;!               _PutRC500
;!           _PcdSingleResponseCmd
;!             _FlushFIFO
;!               _SetBitMask
;!                 _ReadRC
;!                   _GetRC500
;!                   _PutRC500
;!                 _WriteRC
;!                   _PutRC500
;!             _ISR_RC500
;!               _GetRC500
;!               _PutRC500
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _SetBitMask
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!             _WriteRC
;!               _PutRC500
;!           _WriteRC
;!             _PutRC500
;!           ___awdiv
;!           _memcpy
;!       _Mf500PiccRequest
;!         _Mf500PiccCommonRequest
;!           _PcdSetTmo
;!             _WriteRC
;!               _PutRC500
;!           _PcdSingleResponseCmd
;!             _FlushFIFO
;!               _SetBitMask
;!                 _ReadRC
;!                   _GetRC500
;!                   _PutRC500
;!                 _WriteRC
;!                   _PutRC500
;!             _ISR_RC500
;!               _GetRC500
;!               _PutRC500
;!             _ReadRC
;!               _GetRC500
;!               _PutRC500
;!             _SetBitMask
;!               _ReadRC
;!                 _GetRC500
;!                 _PutRC500
;!               _WriteRC
;!                 _PutRC500
;!             _WriteRC
;!               _PutRC500
;!           _WriteRC
;!             _PutRC500
;!           _memcpy
;!     _same_id
;!   _handle_rs485
;!     _check_report_the_loss
;!       _read_24c02
;!         _rece_byte
;!         _send_byte
;!         _start_i2c
;!         _stop_i2c
;!     _do_check_sum
;!     _find_card
;!       _read_24c02
;!         _rece_byte
;!         _send_byte
;!         _start_i2c
;!         _stop_i2c
;!     _read_24c02
;!       _rece_byte
;!       _send_byte
;!       _start_i2c
;!       _stop_i2c
;!     _uart1_send_byte
;!     _uart2_send_byte
;!     _write_24c02
;!       _delay_ms
;!       _send_byte
;!       _start_i2c
;!       _stop_i2c
;!   _handle_timer
;!   _init_hardware
;!     _RC500Config
;!       _ClearBitMask
;!         _ReadRC
;!           _GetRC500
;!           _PutRC500
;!         _WriteRC
;!           _PutRC500
;!       _PcdReset
;!         _GetRC500
;!         _PutRC500
;!       _PcdRfReset
;!         _ClearBitMask
;!           _ReadRC
;!             _GetRC500
;!             _PutRC500
;!           _WriteRC
;!             _PutRC500
;!         _SetBitMask
;!           _ReadRC
;!             _GetRC500
;!             _PutRC500
;!           _WriteRC
;!             _PutRC500
;!       _PcdSetTmo
;!         _WriteRC
;!           _PutRC500
;!       _WriteRC
;!         _PutRC500
;!     _RC500OutSelect
;!       _WriteRC
;!         _PutRC500
;!     _init_beep
;!     _init_ds1302
;!     _init_i2c
;!     _init_interrupt
;!     _init_led
;!     _init_mfrc500
;!     _init_osc
;!     _init_port
;!     _init_timer1
;!     _init_uart1
;!     _init_uart2
;!   _read_24c02
;!     _rece_byte
;!     _send_byte
;!     _start_i2c
;!     _stop_i2c
;!   _uart1_send_byte
;!   _write_24c02
;!     _delay_ms
;!     _send_byte
;!     _start_i2c
;!     _stop_i2c
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             3F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      C       D       2       92.9%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     24      4C       5       95.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BANK1               50      5      4F       7       98.8%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BANK2               50      0      10       9       20.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BITBANK3            50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BANK3               50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BITBANK4            50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BANK4               50      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITBANK5            50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BANK5               50      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITBANK6            50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BANK6               50      0       0      17        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITBANK7            50      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BANK7               50      0       0      19        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!ABS                  0      0      B8      20        0.0%
;!BITBANK8            50      0       0      21        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BANK8               50      0       0      22        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITBANK9            50      0       0      23        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BANK9               50      0       0      24        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITBANK10           50      0       0      25        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BANK10              50      0       0      26        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITBANK11           50      0       0      27        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BANK11              50      0       0      28        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITBANK12           30      0       0      29        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BANK12              30      0       0      30        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!DATA                 0      0      B8      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 281 in file "D:\WORKproject\AJ-BLE-IC\source\main\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[BANK1 ] unsigned short 
;;  j               1    4[BANK1 ] unsigned char 
;;  i               1    1[BANK1 ] unsigned char 
;;  pwd             1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2  1336[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       5       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       5       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_delay_ms
;;		_handle_config
;;		_handle_ic_card
;;		_handle_rs485
;;		_handle_timer
;;		_init_hardware
;;		_read_24c02
;;		_uart1_send_byte
;;		_write_24c02
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"D:\WORKproject\AJ-BLE-IC\source\main\main.c"
	line	281
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\WORKproject\AJ-BLE-IC\source\main\main.c"
	line	281
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [allreg]
	line	285
	
l10898:	
	line	287
	
l10900:	
;main.c: 287: init_hardware();
	fcall	_init_hardware
	line	288
	
l10902:	
;main.c: 288: (RA0 = 0x00);
	bcf	(96/8),(96)&7	;volatile
	line	289
	
l10904:	
;main.c: 289: (RA1 = 0x00);
	bcf	(97/8),(97)&7	;volatile
	line	290
	
l10906:	
;main.c: 290: (RC5 = 0x00);
	bcf	(117/8),(117)&7	;volatile
	line	291
	
l10908:	
;main.c: 291: delay_ms(500);
	movlw	low(01F4h)
	movwf	(delay_ms@count)
	movlw	high(01F4h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	292
	
l10910:	
;main.c: 292: (RC5 = 0x01);
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	293
	
l10912:	
;main.c: 293: (RA0 = 0x01);
	bsf	(96/8),(96)&7	;volatile
	line	294
	
l10914:	
;main.c: 294: (RA1 = 0x01);
	bsf	(97/8),(97)&7	;volatile
	line	296
	
l10916:	
;main.c: 296: for (BYTE i = 0x00; i < 0x04; i++)
	movlb 1	; select bank1
	clrf	(main@i)^080h
	line	298
	
l10922:	
;main.c: 297: {
;main.c: 298: card_id[i] = 0x00;
	movf	(main@i)^080h,w
	addlw	_card_id&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	296
	
l10924:	
	incf	(main@i)^080h,f
	
l10926:	
	movlw	(04h)
	subwf	(main@i)^080h,w
	skipc
	goto	u13151
	goto	u13150
u13151:
	goto	l10922
u13150:
	line	301
	
l10928:	
;main.c: 299: }
;main.c: 301: sector_number = read_24c02(0x09);
	movlw	(09h)
	fcall	_read_24c02
	movlb 0	; select bank0
	movwf	(_sector_number)
	line	302
;main.c: 302: group = read_24c02(0x01);
	movlw	(01h)
	fcall	_read_24c02
	movlb 0	; select bank0
	movwf	(_group)
	line	303
;main.c: 303: if (read_24c02(0x00) == 0xAA)
	movlw	(0)
	fcall	_read_24c02
	xorlw	0AAh&0ffh
	skipz
	goto	u13161
	goto	u13160
u13161:
	goto	l10932
u13160:
	line	305
	
l10930:	
;main.c: 304: {
;main.c: 305: is_enable = 0x01;
	movlb 0	; select bank0
	clrf	(_is_enable)
	incf	(_is_enable),f
	line	307
;main.c: 307: }
	goto	l10934
	line	310
	
l10932:	
;main.c: 308: else
;main.c: 309: {
;main.c: 310: is_enable = 0x00;
	movlb 0	; select bank0
	clrf	(_is_enable)
	line	313
	
l10934:	
;main.c: 311: }
;main.c: 313: if (read_24c02(0xFF) == 0xFF)
	movlw	(0FFh)
	fcall	_read_24c02
	xorlw	0FFh&0ffh
	skipz
	goto	u13171
	goto	u13170
u13171:
	goto	l10938
u13170:
	line	315
	
l10936:	
;main.c: 314: {
;main.c: 315: write_24c02(0xFF, 0x00);
	clrf	(write_24c02@data)
	movlw	(0FFh)
	fcall	_write_24c02
	line	318
	
l10938:	
;main.c: 316: }
;main.c: 318: if (is_enable)
	movlb 0	; select bank0
	movf	(_is_enable),w
	skipz
	goto	u13180
	goto	l1342
u13180:
	line	320
	
l10940:	
;main.c: 319: {
;main.c: 320: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	321
;main.c: 321: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	322
;main.c: 322: uart1_send_byte(0xFF);
	movlw	(0FFh)
	fcall	_uart1_send_byte
	line	323
;main.c: 323: }
	goto	l1343
	line	324
	
l1342:	
	line	326
;main.c: 324: else
;main.c: 325: {
;main.c: 326: (RA0 = 0x01);
	bsf	(96/8),(96)&7	;volatile
	line	327
	
l10942:	
;main.c: 327: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	328
;main.c: 328: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	329
;main.c: 329: uart1_send_byte(0xFE);
	movlw	(0FEh)
	fcall	_uart1_send_byte
	line	330
	
l1343:	
	line	332
;main.c: 330: }
;main.c: 332: if (read_24c02(0x02) == 0xEF)
	movlw	(02h)
	fcall	_read_24c02
	xorlw	0EFh&0ffh
	skipz
	goto	u13191
	goto	u13190
u13191:
	goto	l1352
u13190:
	line	334
	
l10944:	
;main.c: 333: {
;main.c: 334: for (BYTE j = 0x00; j < 0x06; j++)
	movlb 1	; select bank1
	clrf	(main@j)^080h
	line	336
	
l10950:	
;main.c: 335: {
;main.c: 336: pwd = read_24c02(0x03 + j);
	movf	(main@j)^080h,w
	addlw	03h
	fcall	_read_24c02
	movlb 1	; select bank1
	movwf	(main@pwd)^080h
	line	337
	
l10952:	
;main.c: 337: for (WORD i = 0x00; i < 0x100; i++)
	clrf	(main@i_954)^080h
	clrf	(main@i_954+1)^080h
	line	339
	
l10958:	
;main.c: 338: {
;main.c: 339: if (PWD_TABLE[i] == pwd)
	movlw	low(_PWD_TABLE|8000h)
	addwf	(main@i_954)^080h,w
	movwf	fsr0l
	movlw	high(_PWD_TABLE|8000h)
	addwfc	(main@i_954+1)^080h,w
	movwf	fsr0h
	movf	indf0,w ;code access
	xorwf	(main@pwd)^080h,w
	skipz
	goto	u13201
	goto	u13200
u13201:
	goto	l10964
u13200:
	line	341
	
l10960:	
;main.c: 340: {
;main.c: 341: keys[j] = i;
	movf	(main@j)^080h,w
	addlw	_keys&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(main@i_954)^080h,w
	movwf	indf1
	line	342
;main.c: 342: break;
	goto	l10968
	line	337
	
l10964:	
	incf	(main@i_954)^080h,f
	skipnz
	incf	(main@i_954+1)^080h,f
	
l10966:	
	movlw	high(0100h)
	subwf	(main@i_954+1)^080h,w
	movlw	low(0100h)
	skipnz
	subwf	(main@i_954)^080h,w
	skipc
	goto	u13211
	goto	u13210
u13211:
	goto	l10958
u13210:
	line	334
	
l10968:	
	incf	(main@j)^080h,f
	
l10970:	
	movlw	(06h)
	subwf	(main@j)^080h,w
	skipc
	goto	u13221
	goto	u13220
u13221:
	goto	l10950
u13220:
	line	357
;main.c: 354: }
;main.c: 357: do {
	
l1352:	
	line	358
# 358 "D:\WORKproject\AJ-BLE-IC\source\main\main.c"
clrwdt ;# 
psect	maintext
	line	359
	
l10972:	
;main.c: 359: if (flag_uart1_cmd)
	movlb 0	; select bank0
	movf	(_flag_uart1_cmd),w
	skipz
	goto	u13230
	goto	l10978
u13230:
	line	361
	
l10974:	
;main.c: 360: {
;main.c: 361: flag_uart1_cmd = 0x00;
	clrf	(_flag_uart1_cmd)
	line	362
	
l10976:	
;main.c: 362: handle_config();
	fcall	_handle_config
	line	364
	
l10978:	
;main.c: 363: }
;main.c: 364: if (flag_uart2_cmd)
	movf	(_flag_uart2_cmd),w
	skipz
	goto	u13240
	goto	l10984
u13240:
	line	366
	
l10980:	
;main.c: 365: {
;main.c: 366: flag_uart2_cmd = 0x00;
	clrf	(_flag_uart2_cmd)
	line	367
	
l10982:	
;main.c: 367: handle_rs485();
	fcall	_handle_rs485
	line	369
	
l10984:	
;main.c: 368: }
;main.c: 369: if (flag_timer)
	movf	(_flag_timer),w
	skipz
	goto	u13250
	goto	l10990
u13250:
	line	371
	
l10986:	
;main.c: 370: {
;main.c: 371: flag_timer = 0x00;
	clrf	(_flag_timer)
	line	372
	
l10988:	
;main.c: 372: handle_timer();
	fcall	_handle_timer
	line	374
	
l10990:	
;main.c: 373: }
;main.c: 374: handle_ic_card();
	fcall	_handle_ic_card
	line	375
;main.c: 375: } while (1);
	goto	l1352
	global	start
	ljmp	start
	opt stack 0
	line	376
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_init_hardware

;; *************** function _init_hardware *****************
;; Defined at:
;;		line 247 in file "D:\WORKproject\AJ-BLE-IC\source\main\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_RC500Config
;;		_RC500OutSelect
;;		_init_beep
;;		_init_ds1302
;;		_init_i2c
;;		_init_interrupt
;;		_init_led
;;		_init_mfrc500
;;		_init_osc
;;		_init_port
;;		_init_timer1
;;		_init_uart1
;;		_init_uart2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	247
global __ptext1
__ptext1:	;psect for function _init_hardware
psect	text1
	file	"D:\WORKproject\AJ-BLE-IC\source\main\main.c"
	line	247
	global	__size_of_init_hardware
	__size_of_init_hardware	equ	__end_of_init_hardware-_init_hardware
	
_init_hardware:	
;incstack = 0
	opt	stack 9
; Regs used in _init_hardware: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	251
	
l10874:	
;main.c: 251: init_osc();
	fcall	_init_osc
	line	252
	
l10876:	
;main.c: 252: init_port();
	fcall	_init_port
	line	253
	
l10878:	
;main.c: 253: init_led();
	fcall	_init_led
	line	254
;main.c: 254: init_timer1();
	fcall	_init_timer1
	line	255
	
l10880:	
;main.c: 255: init_beep();
	fcall	_init_beep
	line	256
	
l10882:	
;main.c: 256: init_uart1();
	fcall	_init_uart1
	line	257
	
l10884:	
;main.c: 257: init_uart2();
	fcall	_init_uart2
	line	258
	
l10886:	
;main.c: 258: init_ds1302();
	fcall	_init_ds1302
	line	259
;main.c: 259: init_i2c();
	fcall	_init_i2c
	line	260
;main.c: 260: init_interrupt();
	fcall	_init_interrupt
	line	261
	
l10888:	
;main.c: 261: init_mfrc500();
	fcall	_init_mfrc500
	line	262
	
l10890:	
;main.c: 262: RC500Config();
	fcall	_RC500Config
	line	263
	
l10892:	
;main.c: 263: RC500OutSelect(0x02);
	movlw	(02h)
	fcall	_RC500OutSelect
	line	264
# 264 "D:\WORKproject\AJ-BLE-IC\source\main\main.c"
clrwdt ;# 
psect	text1
	line	265
	
l10894:	
;main.c: 265: RB4 = 0x01;
	movlb 0	; select bank0
	bsf	(108/8),(108)&7	;volatile
	line	266
	
l10896:	
;main.c: 266: RB5 = 0x01;
	bsf	(109/8),(109)&7	;volatile
	line	267
	
l1334:	
	return
	opt stack 0
GLOBAL	__end_of_init_hardware
	__end_of_init_hardware:
	signat	_init_hardware,88
	global	_init_uart2

;; *************** function _init_uart2 *****************
;; Defined at:
;;		line 197 in file "D:\WORKproject\AJ-BLE-IC\source\driver\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\uart.c"
	line	197
global __ptext2
__ptext2:	;psect for function _init_uart2
psect	text2
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\uart.c"
	line	197
	global	__size_of_init_uart2
	__size_of_init_uart2	equ	__end_of_init_uart2-_init_uart2
	
_init_uart2:	
;incstack = 0
	opt	stack 13
; Regs used in _init_uart2: [wreg+status,2]
	line	201
	
l10852:	
;uart.c: 201: (TRISGbits.TRISG0) = 0x00;
	movlb 6	; select bank6
	bcf	(781)^0300h,0	;volatile
	line	202
;uart.c: 202: (LATGbits.LATG0 = 0);
	movlb 7	; select bank7
	bcf	(909)^0380h,0	;volatile
	line	203
	
l10854:	
;uart.c: 203: SP2BRGL = 51;
	movlw	(033h)
	movlb 9	; select bank9
	movwf	(1171)^0480h	;volatile
	line	204
	
l10856:	
;uart.c: 204: SP2BRGH = 0;
	clrf	(1172)^0480h	;volatile
	line	205
	
l10858:	
;uart.c: 205: BAUD2CON = 0x08;
	movlw	(08h)
	movwf	(1175)^0480h	;volatile
	line	215
	
l10860:	
;uart.c: 215: (TRISGbits.TRISG1) = 0x00;
	movlb 6	; select bank6
	bcf	(781)^0300h,1	;volatile
	line	216
	
l10862:	
;uart.c: 216: (TRISGbits.TRISG2) = 0x01;
	bsf	(781)^0300h,2	;volatile
	line	217
	
l10864:	
;uart.c: 217: TX2STA = 0x20;
	movlw	(020h)
	movlb 9	; select bank9
	movwf	(1174)^0480h	;volatile
	line	226
	
l10866:	
;uart.c: 226: RC2STA = 0x90;
	movlw	(090h)
	movwf	(1173)^0480h	;volatile
	line	227
	
l10868:	
;uart.c: 227: RC2IE = 0x01;
	movlb 1	; select bank1
	bsf	(1189/8)^080h,(1189)&7	;volatile
	line	228
	
l1205:	
	return
	opt stack 0
GLOBAL	__end_of_init_uart2
	__end_of_init_uart2:
	signat	_init_uart2,88
	global	_init_uart1

;; *************** function _init_uart1 *****************
;; Defined at:
;;		line 56 in file "D:\WORKproject\AJ-BLE-IC\source\driver\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	56
global __ptext3
__ptext3:	;psect for function _init_uart1
psect	text3
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\uart.c"
	line	56
	global	__size_of_init_uart1
	__size_of_init_uart1	equ	__end_of_init_uart1-_init_uart1
	
_init_uart1:	
;incstack = 0
	opt	stack 13
; Regs used in _init_uart1: [wreg+status,2]
	line	60
	
l10836:	
;uart.c: 60: SP1BRGL = 51;
	movlw	(033h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	61
	
l10838:	
;uart.c: 61: SP1BRGH = 0;
	clrf	(412)^0180h	;volatile
	line	62
	
l10840:	
;uart.c: 62: BAUD1CON = 0x08;
	movlw	(08h)
	movwf	(415)^0180h	;volatile
	line	72
	
l10842:	
;uart.c: 72: (TRISCbits.TRISC6) = 0x00;
	movlb 1	; select bank1
	bcf	(142)^080h,6	;volatile
	line	73
	
l10844:	
;uart.c: 73: (TRISCbits.TRISC7) = 0x01;
	bsf	(142)^080h,7	;volatile
	line	74
	
l10846:	
;uart.c: 74: TX1STA = 0x20;
	movlw	(020h)
	movlb 3	; select bank3
	movwf	(414)^0180h	;volatile
	line	83
	
l10848:	
;uart.c: 83: RC1STA = 0x90;
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	line	84
	
l10850:	
;uart.c: 84: RC1IE = 0x01;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	85
	
l1175:	
	return
	opt stack 0
GLOBAL	__end_of_init_uart1
	__end_of_init_uart1:
	signat	_init_uart1,88
	global	_init_timer1

;; *************** function _init_timer1 *****************
;; Defined at:
;;		line 38 in file "D:\WORKproject\AJ-BLE-IC\source\driver\timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\timer.c"
	line	38
global __ptext4
__ptext4:	;psect for function _init_timer1
psect	text4
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\timer.c"
	line	38
	global	__size_of_init_timer1
	__size_of_init_timer1	equ	__end_of_init_timer1-_init_timer1
	
_init_timer1:	
;incstack = 0
	opt	stack 13
; Regs used in _init_timer1: [wreg]
	line	42
	
l10832:	
;timer.c: 42: TMR1H = 0xE0;
	movlw	(0E0h)
	movwf	(23)	;volatile
	line	43
;timer.c: 43: TMR1L = 0xC0;
	movlw	(0C0h)
	movwf	(22)	;volatile
	line	44
;timer.c: 44: T1CON = 0x41;
	movlw	(041h)
	movwf	(24)	;volatile
	line	49
	
l10834:	
;timer.c: 49: TMR1IE = 0x01;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	50
	
l1126:	
	return
	opt stack 0
GLOBAL	__end_of_init_timer1
	__end_of_init_timer1:
	signat	_init_timer1,88
	global	_init_port

;; *************** function _init_port *****************
;; Defined at:
;;		line 225 in file "D:\WORKproject\AJ-BLE-IC\source\main\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/8
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\main\main.c"
	line	225
global __ptext5
__ptext5:	;psect for function _init_port
psect	text5
	file	"D:\WORKproject\AJ-BLE-IC\source\main\main.c"
	line	225
	global	__size_of_init_port
	__size_of_init_port	equ	__end_of_init_port-_init_port
	
_init_port:	
;incstack = 0
	opt	stack 13
; Regs used in _init_port: [status,2]
	line	229
	
l10872:	
;main.c: 229: ANSELA = 0x00;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	230
;main.c: 230: ANSELE = 0x00;
	clrf	(400)^0180h	;volatile
	line	231
;main.c: 231: ANSELF = 0x00;
	movlb 8	; select bank8
	clrf	(1036)^0400h	;volatile
	line	232
;main.c: 232: ANSELG = 0x00;
	clrf	(1037)^0400h	;volatile
	line	233
	
l1331:	
	return
	opt stack 0
GLOBAL	__end_of_init_port
	__end_of_init_port:
	signat	_init_port,88
	global	_init_osc

;; *************** function _init_osc *****************
;; Defined at:
;;		line 206 in file "D:\WORKproject\AJ-BLE-IC\source\main\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	206
global __ptext6
__ptext6:	;psect for function _init_osc
psect	text6
	file	"D:\WORKproject\AJ-BLE-IC\source\main\main.c"
	line	206
	global	__size_of_init_osc
	__size_of_init_osc	equ	__end_of_init_osc-_init_osc
	
_init_osc:	
;incstack = 0
	opt	stack 13
; Regs used in _init_osc: [wreg]
	line	210
	
l10870:	
;main.c: 210: OSCCON = 0x70;
	movlw	(070h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	211
	
l1328:	
	return
	opt stack 0
GLOBAL	__end_of_init_osc
	__end_of_init_osc:
	signat	_init_osc,88
	global	_init_mfrc500

;; *************** function _init_mfrc500 *****************
;; Defined at:
;;		line 55 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	55
global __ptext7
__ptext7:	;psect for function _init_mfrc500
psect	text7
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	55
	global	__size_of_init_mfrc500
	__size_of_init_mfrc500	equ	__end_of_init_mfrc500-_init_mfrc500
	
_init_mfrc500:	
;incstack = 0
	opt	stack 13
; Regs used in _init_mfrc500: [wreg]
	line	59
	
l10116:	
;mfrc500.c: 59: (TRISEbits.TRISE3) = 0x00;
	movlb 1	; select bank1
	bcf	(144)^080h,3	;volatile
	line	60
;mfrc500.c: 60: (TRISEbits.TRISE4) = 0x00;
	bcf	(144)^080h,4	;volatile
	line	61
;mfrc500.c: 61: (TRISEbits.TRISE6) = 0x00;
	bcf	(144)^080h,6	;volatile
	line	62
;mfrc500.c: 62: (TRISEbits.TRISE7) = 0x00;
	bcf	(144)^080h,7	;volatile
	line	63
;mfrc500.c: 63: (TRISEbits.TRISE5) = 0x00;
	bcf	(144)^080h,5	;volatile
	line	64
	
l10118:	
;mfrc500.c: 64: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(143)^080h	;volatile
	line	66
	
l10120:	
;mfrc500.c: 66: (LATEbits.LATE3 = 0x00);
	movlb 2	; select bank2
	bcf	(272)^0100h,3	;volatile
	line	67
	
l10122:	
;mfrc500.c: 67: (LATEbits.LATE4 = 0x01);
	bsf	(272)^0100h,4	;volatile
	line	68
	
l10124:	
;mfrc500.c: 68: (LATEbits.LATE5 = 0x01);
	bsf	(272)^0100h,5	;volatile
	line	69
	
l10126:	
;mfrc500.c: 69: (LATEbits.LATE6 = 0x01);
	bsf	(272)^0100h,6	;volatile
	line	70
	
l10128:	
;mfrc500.c: 70: (LATEbits.LATE7 = 0x00);
	bcf	(272)^0100h,7	;volatile
	line	71
	
l854:	
	return
	opt stack 0
GLOBAL	__end_of_init_mfrc500
	__end_of_init_mfrc500:
	signat	_init_mfrc500,88
	global	_init_led

;; *************** function _init_led *****************
;; Defined at:
;;		line 44 in file "D:\WORKproject\AJ-BLE-IC\source\driver\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/8
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\led.c"
	line	44
global __ptext8
__ptext8:	;psect for function _init_led
psect	text8
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\led.c"
	line	44
	global	__size_of_init_led
	__size_of_init_led	equ	__end_of_init_led-_init_led
	
_init_led:	
;incstack = 0
	opt	stack 13
; Regs used in _init_led: []
	line	48
	
l10114:	
;led.c: 48: (TRISAbits.TRISA0) = 0x00;
	movlb 1	; select bank1
	bcf	(140)^080h,0	;volatile
	line	49
;led.c: 49: (TRISAbits.TRISA1) = 0x00;
	bcf	(140)^080h,1	;volatile
	line	50
;led.c: 50: (RA0 = 0x01);
	movlb 0	; select bank0
	bsf	(96/8),(96)&7	;volatile
	line	51
;led.c: 51: (RA1 = 0x01);
	bsf	(97/8),(97)&7	;volatile
	line	52
	
l827:	
	return
	opt stack 0
GLOBAL	__end_of_init_led
	__end_of_init_led:
	signat	_init_led,88
	global	_init_interrupt

;; *************** function _init_interrupt *****************
;; Defined at:
;;		line 223 in file "D:\WORKproject\AJ-BLE-IC\source\driver\interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: 17F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\interrupt.c"
	line	223
global __ptext9
__ptext9:	;psect for function _init_interrupt
psect	text9
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\interrupt.c"
	line	223
	global	__size_of_init_interrupt
	__size_of_init_interrupt	equ	__end_of_init_interrupt-_init_interrupt
	
_init_interrupt:	
;incstack = 0
	opt	stack 13
; Regs used in _init_interrupt: []
	line	227
	
l10112:	
;interrupt.c: 227: PEIE = 0x01;
	bsf	(94/8),(94)&7	;volatile
	line	228
;interrupt.c: 228: GIE = 0x01;
	bsf	(95/8),(95)&7	;volatile
	line	229
	
l818:	
	return
	opt stack 0
GLOBAL	__end_of_init_interrupt
	__end_of_init_interrupt:
	signat	_init_interrupt,88
	global	_init_i2c

;; *************** function _init_i2c *****************
;; Defined at:
;;		line 45 in file "D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
	line	45
global __ptext10
__ptext10:	;psect for function _init_i2c
psect	text10
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
	line	45
	global	__size_of_init_i2c
	__size_of_init_i2c	equ	__end_of_init_i2c-_init_i2c
	
_init_i2c:	
;incstack = 0
	opt	stack 13
; Regs used in _init_i2c: []
	line	49
	
l10010:	
;24c02.c: 49: (TRISCbits.TRISC3) = 0x00;
	bcf	(142)^080h,3	;volatile
	line	50
;24c02.c: 50: (TRISCbits.TRISC4) = 0x00;
	bcf	(142)^080h,4	;volatile
	line	52
;24c02.c: 52: RC3 = 0x01;
	movlb 0	; select bank0
	bsf	(115/8),(115)&7	;volatile
	line	53
;24c02.c: 53: RC4 = 0x01;
	bsf	(116/8),(116)&7	;volatile
	line	54
	
l623:	
	return
	opt stack 0
GLOBAL	__end_of_init_i2c
	__end_of_init_i2c:
	signat	_init_i2c,88
	global	_init_ds1302

;; *************** function _init_ds1302 *****************
;; Defined at:
;;		line 44 in file "D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
	line	44
global __ptext11
__ptext11:	;psect for function _init_ds1302
psect	text11
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
	line	44
	global	__size_of_init_ds1302
	__size_of_init_ds1302	equ	__end_of_init_ds1302-_init_ds1302
	
_init_ds1302:	
;incstack = 0
	opt	stack 13
; Regs used in _init_ds1302: [wreg]
	line	48
	
l10050:	
;ds1302.c: 48: (RC0) = 0x00;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7	;volatile
	line	49
;ds1302.c: 49: (RC2) = 0x01;
	bsf	(114/8),(114)&7	;volatile
	line	50
;ds1302.c: 50: (RC1) = 0x01;
	bsf	(113/8),(113)&7	;volatile
	line	51
;ds1302.c: 51: (TRISCbits.TRISC0) = 0x00;
	movlb 1	; select bank1
	bcf	(142)^080h,0	;volatile
	line	52
;ds1302.c: 52: (TRISCbits.TRISC2) = 0x00;
	bcf	(142)^080h,2	;volatile
	line	53
;ds1302.c: 53: (TRISCbits.TRISC1) = 0x00;
	bcf	(142)^080h,1	;volatile
	line	56
	
l10052:	
;ds1302.c: 56: year = 0x08;
	movlw	(08h)
	movlb 0	; select bank0
	movwf	(_year)
	line	57
;ds1302.c: 57: month = 0x08;
	movlw	(08h)
	movwf	(_month)
	line	58
;ds1302.c: 58: day = 0x08;
	movlw	(08h)
	movwf	(_day)
	line	59
;ds1302.c: 59: hour = 0x08;
	movlw	(08h)
	movlb 1	; select bank1
	movwf	(_hour)^080h
	line	60
;ds1302.c: 60: minute = 0x08;
	movlw	(08h)
	movwf	(_minute)^080h
	line	61
;ds1302.c: 61: second = 0x08;
	movlw	(08h)
	movwf	(_second)^080h
	line	62
	
l10054:	
;ds1302.c: 62: week = 0x01;
	clrf	(_week)^080h
	incf	(_week)^080h,f
	line	63
	
l716:	
	return
	opt stack 0
GLOBAL	__end_of_init_ds1302
	__end_of_init_ds1302:
	signat	_init_ds1302,88
	global	_init_beep

;; *************** function _init_beep *****************
;; Defined at:
;;		line 53 in file "D:\WORKproject\AJ-BLE-IC\source\driver\beep.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\beep.c"
	line	53
global __ptext12
__ptext12:	;psect for function _init_beep
psect	text12
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\beep.c"
	line	53
	global	__size_of_init_beep
	__size_of_init_beep	equ	__end_of_init_beep-_init_beep
	
_init_beep:	
;incstack = 0
	opt	stack 13
; Regs used in _init_beep: []
	line	57
	
l10048:	
;beep.c: 57: (TRISCbits.TRISC5) = 0x00;
	bcf	(142)^080h,5	;volatile
	line	58
;beep.c: 58: (RC5 = 0x01);
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	59
	
l662:	
	return
	opt stack 0
GLOBAL	__end_of_init_beep
	__end_of_init_beep:
	signat	_init_beep,88
	global	_RC500OutSelect

;; *************** function _RC500OutSelect *****************
;; Defined at:
;;		line 402 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  type            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  type            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_WriteRC
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	402
global __ptext13
__ptext13:	;psect for function _RC500OutSelect
psect	text13
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	402
	global	__size_of_RC500OutSelect
	__size_of_RC500OutSelect	equ	__end_of_RC500OutSelect-_RC500OutSelect
	
_RC500OutSelect:	
;incstack = 0
	opt	stack 11
; Regs used in _RC500OutSelect: [wreg+status,2+status,0+pclath+cstack]
;RC500OutSelect@type stored from wreg
	line	403
	movwf	(RC500OutSelect@type)
	line	406
	
l10440:	
;mfrc500.c: 406: WriteRC(0x26, type & 0x7);
	movf	(RC500OutSelect@type),w
	movwf	(WriteRC@data)
	movlw	(07h)
	andwf	(WriteRC@data),f
	movlw	(026h)
	fcall	_WriteRC
	line	409
	
l945:	
	return
	opt stack 0
GLOBAL	__end_of_RC500OutSelect
	__end_of_RC500OutSelect:
	signat	_RC500OutSelect,4217
	global	_RC500Config

;; *************** function _RC500Config *****************
;; Defined at:
;;		line 368 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[BANK0 ] unsigned char 
;;  ret_status      1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_ClearBitMask
;;		_PcdReset
;;		_PcdRfReset
;;		_PcdSetTmo
;;		_WriteRC
;; This function is called by:
;;		_init_hardware
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	368
global __ptext14
__ptext14:	;psect for function _RC500Config
psect	text14
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	368
	global	__size_of_RC500Config
	__size_of_RC500Config	equ	__end_of_RC500Config-_RC500Config
	
_RC500Config:	
;incstack = 0
	opt	stack 9
; Regs used in _RC500Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	373
	
l10400:	
	line	375
	
l10402:	
;mfrc500.c: 375: ret_status = PcdReset();
	fcall	_PcdReset
	movlb 0	; select bank0
	movwf	(RC500Config@ret_status)
	line	376
	
l10404:	
;mfrc500.c: 376: if (ret_status == 0)
	movf	(RC500Config@ret_status),f
	skipz
	goto	u12731
	goto	u12730
u12731:
	goto	l942
u12730:
	line	378
	
l10406:	
;mfrc500.c: 377: {
;mfrc500.c: 378: WriteRC(0x1F, 0x80);
	movlw	(080h)
	movwf	(WriteRC@data)
	movlw	(01Fh)
	fcall	_WriteRC
	line	379
	
l10408:	
;mfrc500.c: 379: for (i = 0; i < 205; i++);
	movlb 0	; select bank0
	clrf	(RC500Config@i)
	
l10414:	
	incf	(RC500Config@i),f
	
l10416:	
	movlw	(0CDh)
	subwf	(RC500Config@i),w
	skipc
	goto	u12741
	goto	u12740
u12741:
	goto	l10414
u12740:
	line	381
	
l10418:	
;mfrc500.c: 380: {
;mfrc500.c: 381: WriteRC(0x1F, 0xc0);
	movlw	(0C0h)
	movwf	(WriteRC@data)
	movlw	(01Fh)
	fcall	_WriteRC
	line	383
	
l10420:	
;mfrc500.c: 382: }
;mfrc500.c: 383: for (i = 0; i < 105; i++);
	movlb 0	; select bank0
	clrf	(RC500Config@i)
	
l10426:	
	incf	(RC500Config@i),f
	
l10428:	
	movlw	(069h)
	subwf	(RC500Config@i),w
	skipc
	goto	u12751
	goto	u12750
u12751:
	goto	l10426
u12750:
	line	385
	
l10430:	
;mfrc500.c: 384: {
;mfrc500.c: 385: ClearBitMask(0x1F, 0x40);
	movlw	(040h)
	movwf	(ClearBitMask@mask)
	movlw	(01Fh)
	fcall	_ClearBitMask
	line	387
;mfrc500.c: 386: }
;mfrc500.c: 387: WriteRC(0x1B, 0xAD);
	movlw	(0ADh)
	movwf	(WriteRC@data)
	movlw	(01Bh)
	fcall	_WriteRC
	line	388
;mfrc500.c: 388: WriteRC(0x1C, 0xff);
	movlw	(0FFh)
	movwf	(WriteRC@data)
	movlw	(01Ch)
	fcall	_WriteRC
	line	389
;mfrc500.c: 389: WriteRC(0x19, 0x73);
	movlw	(073h)
	movwf	(WriteRC@data)
	movlw	(019h)
	fcall	_WriteRC
	line	390
;mfrc500.c: 390: WriteRC(0x1E, 0x81);
	movlw	(081h)
	movwf	(WriteRC@data)
	movlw	(01Eh)
	fcall	_WriteRC
	line	391
;mfrc500.c: 391: WriteRC(0x29, 0x4);
	movlw	(04h)
	movwf	(WriteRC@data)
	movlw	(029h)
	fcall	_WriteRC
	line	392
;mfrc500.c: 392: WriteRC(0x2B, 0x02);
	movlw	(02h)
	movwf	(WriteRC@data)
	movlw	(02Bh)
	fcall	_WriteRC
	line	393
	
l10432:	
;mfrc500.c: 393: PcdSetTmo(1);
	clrf	(PcdSetTmo@tmoLength)
	incf	(PcdSetTmo@tmoLength),f
	clrf	(PcdSetTmo@tmoLength+1)
	fcall	_PcdSetTmo
	line	394
	
l10434:	
;mfrc500.c: 394: WriteRC(0x2D, 0x3);
	movlw	(03h)
	movwf	(WriteRC@data)
	movlw	(02Dh)
	fcall	_WriteRC
	line	395
	
l10436:	
;mfrc500.c: 395: PcdRfReset(1);
	movlw	(01h)
	fcall	_PcdRfReset
	line	399
	
l942:	
	return
	opt stack 0
GLOBAL	__end_of_RC500Config
	__end_of_RC500Config:
	signat	_RC500Config,89
	global	_PcdRfReset

;; *************** function _PcdRfReset *****************
;; Defined at:
;;		line 203 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  ms              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ms              1    1[BANK0 ] unsigned char 
;;  i               2    2[BANK0 ] unsigned int 
;;  ret_status      1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ClearBitMask
;;		_SetBitMask
;; This function is called by:
;;		_RC500Config
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	203
global __ptext15
__ptext15:	;psect for function _PcdRfReset
psect	text15
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	203
	global	__size_of_PcdRfReset
	__size_of_PcdRfReset	equ	__end_of_PcdRfReset-_PcdRfReset
	
_PcdRfReset:	
;incstack = 0
	opt	stack 9
; Regs used in _PcdRfReset: [wreg+status,2+status,0+pclath+cstack]
;PcdRfReset@ms stored from wreg
	line	204
	movlb 0	; select bank0
	movwf	(PcdRfReset@ms)
	line	207
	
l10232:	
	line	210
	
l10234:	
;mfrc500.c: 208: unsigned int i;
;mfrc500.c: 210: ClearBitMask(0x11, 0x03);
	movlw	(03h)
	movwf	(ClearBitMask@mask)
	movlw	(011h)
	fcall	_ClearBitMask
	line	211
	
l10236:	
;mfrc500.c: 211: if (ms > 0)
	movlb 0	; select bank0
	movf	(PcdRfReset@ms),w
	skipz
	goto	u12470
	goto	l891
u12470:
	line	213
	
l10238:	
;mfrc500.c: 212: {
;mfrc500.c: 213: for (i = 0; i < 1050; i++);
	clrf	(PcdRfReset@i)
	clrf	(PcdRfReset@i+1)
	
l10244:	
	incf	(PcdRfReset@i),f
	skipnz
	incf	(PcdRfReset@i+1),f
	
l10246:	
	movlw	high(041Ah)
	subwf	(PcdRfReset@i+1),w
	movlw	low(041Ah)
	skipnz
	subwf	(PcdRfReset@i),w
	skipc
	goto	u12481
	goto	u12480
u12481:
	goto	l10244
u12480:
	line	214
	
l10248:	
;mfrc500.c: 214: SetBitMask(0x11, 0x03);
	movlw	(03h)
	movwf	(SetBitMask@mask)
	movlw	(011h)
	fcall	_SetBitMask
	line	218
	
l891:	
	return
	opt stack 0
GLOBAL	__end_of_PcdRfReset
	__end_of_PcdRfReset:
	signat	_PcdRfReset,4217
	global	_PcdReset

;; *************** function _PcdReset *****************
;; Defined at:
;;		line 294 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    9[COMMON] unsigned int 
;;  count02         2    6[COMMON] unsigned int 
;;  count01         2    4[COMMON] unsigned int 
;;  ret_status      1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1C/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_GetRC500
;;		_PutRC500
;; This function is called by:
;;		_RC500Config
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	294
global __ptext16
__ptext16:	;psect for function _PcdReset
psect	text16
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	294
	global	__size_of_PcdReset
	__size_of_PcdReset	equ	__end_of_PcdReset-_PcdReset
	
_PcdReset:	
;incstack = 0
	opt	stack 11
; Regs used in _PcdReset: [wreg+status,2+status,0+pclath+cstack]
	line	300
	
l10334:	
;mfrc500.c: 299: unsigned int i, count01, count02;
;mfrc500.c: 300: char ret_status = 0;
	clrf	(PcdReset@ret_status)
	line	302
	
l10336:	
;mfrc500.c: 302: (LATEbits.LATE3 = 0x00);
	bcf	(272)^0100h,3	;volatile
	line	304
;mfrc500.c: 304: for (i = 0; i < 16500; i++)
	clrf	(PcdReset@i)
	clrf	(PcdReset@i+1)
	line	305
	
l914:	
	line	306
# 306 "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
clrwdt ;# 
psect	text16
	line	304
	
l10342:	
	incf	(PcdReset@i),f
	skipnz
	incf	(PcdReset@i+1),f
	
l10344:	
	movlw	high(04074h)
	subwf	(PcdReset@i+1),w
	movlw	low(04074h)
	skipnz
	subwf	(PcdReset@i),w
	skipc
	goto	u12621
	goto	u12620
u12621:
	goto	l914
u12620:
	
l915:	
	line	308
;mfrc500.c: 307: }
;mfrc500.c: 308: (LATEbits.LATE3 = 0x01);
	movlb 2	; select bank2
	bsf	(272)^0100h,3	;volatile
	line	310
	
l10346:	
;mfrc500.c: 310: for (i = 0; i < 1650; i++)
	clrf	(PcdReset@i)
	clrf	(PcdReset@i+1)
	line	311
	
l916:	
	line	312
# 312 "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
clrwdt ;# 
psect	text16
	line	310
	
l10352:	
	incf	(PcdReset@i),f
	skipnz
	incf	(PcdReset@i+1),f
	
l10354:	
	movlw	high(0672h)
	subwf	(PcdReset@i+1),w
	movlw	low(0672h)
	skipnz
	subwf	(PcdReset@i),w
	skipc
	goto	u12631
	goto	u12630
u12631:
	goto	l916
u12630:
	
l917:	
	line	314
;mfrc500.c: 313: }
;mfrc500.c: 314: (LATEbits.LATE3 = 0x00);
	movlb 2	; select bank2
	bcf	(272)^0100h,3	;volatile
	line	315
;mfrc500.c: 315: (LATEbits.LATE4 = 0x00);
	bcf	(272)^0100h,4	;volatile
	line	316
;mfrc500.c: 316: (LATEbits.LATE5 = 0x01);
	bsf	(272)^0100h,5	;volatile
	line	317
;mfrc500.c: 317: (LATEbits.LATE6 = 0x01);
	bsf	(272)^0100h,6	;volatile
	line	318
;mfrc500.c: 318: (LATEbits.LATE7 = 0x00);
	bcf	(272)^0100h,7	;volatile
	line	320
	
l10356:	
;mfrc500.c: 320: count01 = 10000;
	movlw	low(02710h)
	movwf	(PcdReset@count01)
	movlw	high(02710h)
	movwf	((PcdReset@count01))+1
	line	321
;mfrc500.c: 321: count02 = 21;
	movlw	015h
	movwf	(PcdReset@count02)
	clrf	(PcdReset@count02+1)
	line	323
;mfrc500.c: 323: while (((GetRC500(0x01) & 0x3F) != 0x3F) && (!(count02 == 0)))
	goto	l10364
	line	325
	
l10358:	
;mfrc500.c: 324: {
;mfrc500.c: 325: count01--;
	movlw	low(01h)
	subwf	(PcdReset@count01),f
	movlw	high(01h)
	subwfb	(PcdReset@count01+1),f
	line	326
	
l10360:	
;mfrc500.c: 326: if (count01 == 0)
	movf	((PcdReset@count01+1)),w
	iorwf	((PcdReset@count01)),w
	skipz
	goto	u12641
	goto	u12640
u12641:
	goto	l10364
u12640:
	line	328
	
l10362:	
;mfrc500.c: 327: {
;mfrc500.c: 328: count01 = 10000;
	movlw	low(02710h)
	movwf	(PcdReset@count01)
	movlw	high(02710h)
	movwf	((PcdReset@count01))+1
	line	329
;mfrc500.c: 329: count02--;
	movlw	low(01h)
	subwf	(PcdReset@count02),f
	movlw	high(01h)
	subwfb	(PcdReset@count02+1),f
	line	323
	
l10364:	
	movlw	(01h)
	fcall	_GetRC500
	movwf	(??_PcdReset+0)+0
	movlw	(03Fh)
	andwf	(??_PcdReset+0)+0,w
	xorlw	03Fh&0ffh
	skipnz
	goto	u12651
	goto	u12650
u12651:
	goto	l10374
u12650:
	
l10366:	
	movf	((PcdReset@count02+1)),w
	iorwf	((PcdReset@count02)),w
	skipz
	goto	u12661
	goto	u12660
u12661:
	goto	l10358
u12660:
	goto	l10374
	line	333
	
l925:	
	line	335
# 335 "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
clrwdt ;# 
psect	text16
	line	336
	
l10368:	
;mfrc500.c: 336: count01--;
	movlw	low(01h)
	subwf	(PcdReset@count01),f
	movlw	high(01h)
	subwfb	(PcdReset@count01+1),f
	line	337
	
l10370:	
;mfrc500.c: 337: if (count01 == 0)
	movf	((PcdReset@count01+1)),w
	iorwf	((PcdReset@count01)),w
	skipz
	goto	u12671
	goto	u12670
u12671:
	goto	l10374
u12670:
	line	339
	
l10372:	
;mfrc500.c: 338: {
;mfrc500.c: 339: count01 = 10000;
	movlw	low(02710h)
	movwf	(PcdReset@count01)
	movlw	high(02710h)
	movwf	((PcdReset@count01))+1
	line	340
;mfrc500.c: 340: count02--;
	movlw	low(01h)
	subwf	(PcdReset@count02),f
	movlw	high(01h)
	subwfb	(PcdReset@count02+1),f
	line	333
	
l10374:	
	movlw	(01h)
	fcall	_GetRC500
	andlw	03Fh
	btfsc	status,2
	goto	u12681
	goto	u12680
u12681:
	goto	l10378
u12680:
	
l10376:	
	movf	((PcdReset@count02+1)),w
	iorwf	((PcdReset@count02)),w
	skipz
	goto	u12691
	goto	u12690
u12691:
	goto	l925
u12690:
	line	343
	
l10378:	
;mfrc500.c: 341: }
;mfrc500.c: 342: };
;mfrc500.c: 343: if (count02 == 0)
	movf	((PcdReset@count02+1)),w
	iorwf	((PcdReset@count02)),w
	skipz
	goto	u12701
	goto	u12700
u12701:
	goto	l10382
u12700:
	line	345
	
l10380:	
;mfrc500.c: 344: {
;mfrc500.c: 345: ret_status = (-25);
	movlw	(0E7h)
	movwf	(PcdReset@ret_status)
	line	348
	
l10382:	
;mfrc500.c: 346: }
;mfrc500.c: 348: if (ret_status == 0)
	movf	(PcdReset@ret_status),f
	skipz
	goto	u12711
	goto	u12710
u12711:
	goto	l10396
u12710:
	line	350
	
l10384:	
;mfrc500.c: 349: {
;mfrc500.c: 350: PutRC500(0x00, 0x80);
	movlw	(080h)
	movwf	(PutRC500@data)
	movlw	(0)
	fcall	_PutRC500
	line	351
	
l10386:	
;mfrc500.c: 351: (LATEbits.LATE7 = 0x00);
	movlb 2	; select bank2
	bcf	(272)^0100h,7	;volatile
	line	352
	
l10388:	
;mfrc500.c: 352: ret_status = GetRC500(0x01);
	movlw	(01h)
	fcall	_GetRC500
	movwf	(PcdReset@ret_status)
	line	353
	
l10390:	
;mfrc500.c: 353: if (ret_status != 0)
	movf	(PcdReset@ret_status),w
	skipz
	goto	u12720
	goto	l10394
u12720:
	line	355
	
l10392:	
;mfrc500.c: 354: {
;mfrc500.c: 355: ret_status = (-26);
	movlw	(0E6h)
	movwf	(PcdReset@ret_status)
	line	356
;mfrc500.c: 356: }
	goto	l10396
	line	359
	
l10394:	
;mfrc500.c: 357: else
;mfrc500.c: 358: {
;mfrc500.c: 359: PutRC500(0x00, 0x00);
	clrf	(PutRC500@data)
	movlw	(0)
	fcall	_PutRC500
	line	363
	
l10396:	
;mfrc500.c: 360: }
;mfrc500.c: 361: }
;mfrc500.c: 363: return ret_status;
	movf	(PcdReset@ret_status),w
	line	364
	
l934:	
	return
	opt stack 0
GLOBAL	__end_of_PcdReset
	__end_of_PcdReset:
	signat	_PcdReset,89
	global	_handle_timer

;; *************** function _handle_timer *****************
;; Defined at:
;;		line 44 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_timer.c"
	line	44
global __ptext17
__ptext17:	;psect for function _handle_timer
psect	text17
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_timer.c"
	line	44
	global	__size_of_handle_timer
	__size_of_handle_timer	equ	__end_of_handle_timer-_handle_timer
	
_handle_timer:	
;incstack = 0
	opt	stack 14
; Regs used in _handle_timer: [wreg+status,2+status,0]
	line	48
	
l9994:	
;handle_timer.c: 48: if (is_enable)
	movf	(_is_enable),w
	skipz
	goto	u12360
	goto	l9998
u12360:
	line	50
	
l9996:	
;handle_timer.c: 49: {
;handle_timer.c: 50: (RA0 ^= 0x01);
	movlw	1<<((96)&7)
	xorwf	((96)/8),f
	line	57
;handle_timer.c: 51: }
	
l9998:	
;handle_timer.c: 55: }
;handle_timer.c: 57: if (flag_user_card)
	movf	(_flag_user_card),w
	skipz
	goto	u12370
	goto	l591
u12370:
	line	59
	
l10000:	
;handle_timer.c: 58: {
;handle_timer.c: 59: user_card_count++;
	incf	(_user_card_count),f
	line	60
	
l10002:	
;handle_timer.c: 60: if (user_card_count >= 0x08)
	movlw	(08h)
	subwf	(_user_card_count),w
	skipc
	goto	u12381
	goto	u12380
u12381:
	goto	l591
u12380:
	line	62
	
l10004:	
;handle_timer.c: 61: {
;handle_timer.c: 62: user_card_count = 0x00;
	clrf	(_user_card_count)
	line	63
;handle_timer.c: 63: flag_user_card = 0x00;
	clrf	(_flag_user_card)
	line	64
	
l10006:	
;handle_timer.c: 64: RB4 = 0x01;
	bsf	(108/8),(108)&7	;volatile
	line	65
	
l10008:	
;handle_timer.c: 65: RB5 = 0x01;
	bsf	(109/8),(109)&7	;volatile
	line	68
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_handle_timer
	__end_of_handle_timer:
	signat	_handle_timer,88
	global	_handle_rs485

;; *************** function _handle_rs485 *****************
;; Defined at:
;;		line 119 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_rs485.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[BANK0 ] unsigned char 
;;  tmp             4    0[BANK0 ] unsigned char [4]
;;  report_the_l    1    7[BANK0 ] unsigned char 
;;  report_the_l    1    6[BANK0 ] unsigned char 
;;  sum             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_check_report_the_loss
;;		_do_check_sum
;;		_find_card
;;		_read_24c02
;;		_uart1_send_byte
;;		_uart2_send_byte
;;		_write_24c02
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_rs485.c"
	line	119
global __ptext18
__ptext18:	;psect for function _handle_rs485
psect	text18
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_rs485.c"
	line	119
	global	__size_of_handle_rs485
	__size_of_handle_rs485	equ	__end_of_handle_rs485-_handle_rs485
	
_handle_rs485:	
;incstack = 0
	opt	stack 11
; Regs used in _handle_rs485: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	124
	
l9876:	
	line	125
;handle_rs485.c: 125: BYTE sum = 0x00;
	clrf	(handle_rs485@sum)
	line	126
;handle_rs485.c: 126: BYTE report_the_loss_count = 0x00;
	clrf	(handle_rs485@report_the_loss_count)
	line	128
	
l9878:	
;handle_rs485.c: 128: if (do_check_sum())
	fcall	_do_check_sum
	xorlw	0&0ffh
	skipnz
	goto	u12231
	goto	u12230
u12231:
	goto	l9978
u12230:
	goto	l9976
	line	134
	
l9882:	
;handle_rs485.c: 134: if (flag_record)
	movlb 0	; select bank0
	movf	(_flag_record),w
	skipz
	goto	u12240
	goto	l9906
u12240:
	line	136
	
l9884:	
;handle_rs485.c: 135: {
;handle_rs485.c: 136: flag_record = 0x00;
	clrf	(_flag_record)
	line	137
	
l9886:	
;handle_rs485.c: 137: sum = (BYTE)(0x09 + 0xB1 + ic_card[0] + ic_card[1] + ic_card[2] + ic_card[3]);
	movlb 1	; select bank1
	movf	0+(_ic_card)^080h+01h,w
	addwf	0+(_ic_card)^080h+02h,w
	addwf	0+(_ic_card)^080h+03h,w
	addwf	(_ic_card)^080h,w
	addlw	0BAh
	movlb 0	; select bank0
	movwf	(handle_rs485@sum)
	line	138
	
l9888:	
;handle_rs485.c: 138: uart2_send_byte(0xF2);
	movlw	(0F2h)
	fcall	_uart2_send_byte
	line	139
	
l9890:	
;handle_rs485.c: 139: uart2_send_byte(0x09);
	movlw	(09h)
	fcall	_uart2_send_byte
	line	140
	
l9892:	
;handle_rs485.c: 140: uart2_send_byte(0xB1);
	movlw	(0B1h)
	fcall	_uart2_send_byte
	line	141
	
l9894:	
;handle_rs485.c: 141: uart2_send_byte(ic_card[0]);
	movlb 1	; select bank1
	movf	(_ic_card)^080h,w
	fcall	_uart2_send_byte
	line	142
	
l9896:	
;handle_rs485.c: 142: uart2_send_byte(ic_card[1]);
	movlb 1	; select bank1
	movf	0+(_ic_card)^080h+01h,w
	fcall	_uart2_send_byte
	line	143
	
l9898:	
;handle_rs485.c: 143: uart2_send_byte(ic_card[2]);
	movlb 1	; select bank1
	movf	0+(_ic_card)^080h+02h,w
	fcall	_uart2_send_byte
	line	144
	
l9900:	
;handle_rs485.c: 144: uart2_send_byte(ic_card[3]);
	movlb 1	; select bank1
	movf	0+(_ic_card)^080h+03h,w
	fcall	_uart2_send_byte
	line	145
	
l9902:	
;handle_rs485.c: 145: uart2_send_byte(sum);
	movlb 0	; select bank0
	movf	(handle_rs485@sum),w
	fcall	_uart2_send_byte
	line	146
	
l9904:	
;handle_rs485.c: 146: uart2_send_byte(0xF3);
	movlw	(0F3h)
	fcall	_uart2_send_byte
	line	147
;handle_rs485.c: 147: }
	goto	l9978
	line	150
	
l9906:	
	line	151
	
l9908:	
;handle_rs485.c: 151: uart2_send_byte(0xF2);
	movlw	(0F2h)
	fcall	_uart2_send_byte
	line	152
	
l9910:	
;handle_rs485.c: 152: uart2_send_byte(0x09);
	movlw	(09h)
	fcall	_uart2_send_byte
	line	153
	
l9912:	
;handle_rs485.c: 153: uart2_send_byte(0xB1);
	movlw	(0B1h)
	fcall	_uart2_send_byte
	line	154
	
l9914:	
;handle_rs485.c: 154: uart2_send_byte(0x00);
	movlw	(0)
	fcall	_uart2_send_byte
	line	155
	
l9916:	
;handle_rs485.c: 155: uart2_send_byte(0x00);
	movlw	(0)
	fcall	_uart2_send_byte
	line	156
	
l9918:	
;handle_rs485.c: 156: uart2_send_byte(0x00);
	movlw	(0)
	fcall	_uart2_send_byte
	line	157
	
l9920:	
;handle_rs485.c: 157: uart2_send_byte(0x00);
	movlw	(0)
	fcall	_uart2_send_byte
	line	158
	
l9922:	
;handle_rs485.c: 158: uart2_send_byte(sum);
	movlw	(0BAh)
	fcall	_uart2_send_byte
	line	159
	
l9924:	
;handle_rs485.c: 159: uart2_send_byte(0xF3);
	movlw	(0F3h)
	fcall	_uart2_send_byte
	goto	l9978
	line	163
	
l9926:	
;handle_rs485.c: 163: tmp[0] = uart2_receive_buffer[4];
	movf	0+(_uart2_receive_buffer)^080h+04h,w
	movlb 0	; select bank0
	movwf	(handle_rs485@tmp)
	line	164
;handle_rs485.c: 164: tmp[1] = uart2_receive_buffer[5];
	movlb 1	; select bank1
	movf	0+(_uart2_receive_buffer)^080h+05h,w
	movlb 0	; select bank0
	movwf	0+(handle_rs485@tmp)+01h
	line	165
;handle_rs485.c: 165: tmp[2] = uart2_receive_buffer[6];
	movlb 1	; select bank1
	movf	0+(_uart2_receive_buffer)^080h+06h,w
	movlb 0	; select bank0
	movwf	0+(handle_rs485@tmp)+02h
	line	166
;handle_rs485.c: 166: tmp[3] = uart2_receive_buffer[7];
	movlb 1	; select bank1
	movf	0+(_uart2_receive_buffer)^080h+07h,w
	movlb 0	; select bank0
	movwf	0+(handle_rs485@tmp)+03h
	line	167
	
l9928:	
;handle_rs485.c: 167: if (uart2_receive_buffer[3] == 0x00)
	movlb 1	; select bank1
	movf	0+(_uart2_receive_buffer)^080h+03h,f
	skipz
	goto	u12251
	goto	u12250
u12251:
	goto	l9954
u12250:
	line	170
	
l9930:	
;handle_rs485.c: 168: {
;handle_rs485.c: 170: if (check_report_the_loss())
	fcall	_check_report_the_loss
	xorlw	0&0ffh
	skipnz
	goto	u12261
	goto	u12260
u12261:
	goto	l9934
u12260:
	goto	l9978
	line	176
	
l9934:	
;handle_rs485.c: 174: else
;handle_rs485.c: 175: {
;handle_rs485.c: 176: report_the_loss_count = read_24c02(0xFF);
	movlw	(0FFh)
	fcall	_read_24c02
	movlb 0	; select bank0
	movwf	(handle_rs485@report_the_loss_count)
	line	177
	
l9936:	
;handle_rs485.c: 177: if ((report_the_loss_count == 0xFF) || (report_the_loss_count == 0x2C))
	movf	(handle_rs485@report_the_loss_count),w
	xorlw	0FFh&0ffh
	skipnz
	goto	u12271
	goto	u12270
u12271:
	goto	l9940
u12270:
	
l9938:	
	movf	(handle_rs485@report_the_loss_count),w
	xorlw	02Ch&0ffh
	skipz
	goto	u12281
	goto	u12280
u12281:
	goto	l9942
u12280:
	line	179
	
l9940:	
;handle_rs485.c: 178: {
;handle_rs485.c: 179: report_the_loss_count = 0x00;
	clrf	(handle_rs485@report_the_loss_count)
	line	181
	
l9942:	
;handle_rs485.c: 180: }
;handle_rs485.c: 181: report_the_loss_count++;
	incf	(handle_rs485@report_the_loss_count),f
	line	182
	
l9944:	
;handle_rs485.c: 182: write_24c02(0xFF, report_the_loss_count);
	movf	(handle_rs485@report_the_loss_count),w
	movwf	(write_24c02@data)
	movlw	(0FFh)
	fcall	_write_24c02
	line	183
	
l9946:	
;handle_rs485.c: 183: write_24c02(0x40 + (report_the_loss_count - 0x01) * 0x04 + 0x00, uart2_receive_buffer[4]);
	movlb 1	; select bank1
	movf	0+(_uart2_receive_buffer)^080h+04h,w
	movwf	(write_24c02@data)
	movlb 0	; select bank0
	movf	(handle_rs485@report_the_loss_count),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	03Ch
	fcall	_write_24c02
	line	184
	
l9948:	
;handle_rs485.c: 184: write_24c02(0x40 + (report_the_loss_count - 0x01) * 0x04 + 0x01, uart2_receive_buffer[5]);
	movlb 1	; select bank1
	movf	0+(_uart2_receive_buffer)^080h+05h,w
	movwf	(write_24c02@data)
	movlb 0	; select bank0
	movf	(handle_rs485@report_the_loss_count),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	03Dh
	fcall	_write_24c02
	line	185
	
l9950:	
;handle_rs485.c: 185: write_24c02(0x40 + (report_the_loss_count - 0x01) * 0x04 + 0x02, uart2_receive_buffer[6]);
	movlb 1	; select bank1
	movf	0+(_uart2_receive_buffer)^080h+06h,w
	movwf	(write_24c02@data)
	movlb 0	; select bank0
	movf	(handle_rs485@report_the_loss_count),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	03Eh
	fcall	_write_24c02
	line	186
	
l9952:	
;handle_rs485.c: 186: write_24c02(0x40 + (report_the_loss_count - 0x01) * 0x04 + 0x03, uart2_receive_buffer[7]);
	movlb 1	; select bank1
	movf	0+(_uart2_receive_buffer)^080h+07h,w
	movwf	(write_24c02@data)
	movlb 0	; select bank0
	movf	(handle_rs485@report_the_loss_count),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	03Fh
	fcall	_write_24c02
	goto	l9978
	line	189
	
l9954:	
;handle_rs485.c: 189: else if (uart2_receive_buffer[3] == 0x01)
	decf	0+(_uart2_receive_buffer)^080h+03h,w
	skipz
	goto	u12291
	goto	u12290
u12291:
	goto	l9978
u12290:
	line	192
	
l9956:	
;handle_rs485.c: 190: {
;handle_rs485.c: 192: if (check_report_the_loss())
	fcall	_check_report_the_loss
	xorlw	0&0ffh
	skipnz
	goto	u12301
	goto	u12300
u12301:
	goto	l548
u12300:
	line	194
	
l9958:	
;handle_rs485.c: 193: {
;handle_rs485.c: 194: if (report_the_loss_address = find_card(tmp))
	movlw	(handle_rs485@tmp)&0ffh
	fcall	_find_card
	movlb 0	; select bank0
	movwf	(handle_rs485@report_the_loss_address)
	movf	((handle_rs485@report_the_loss_address)),w
	xorlw	0&0ffh
	skipnz
	goto	u12311
	goto	u12310
u12311:
	goto	l548
u12310:
	line	196
	
l9960:	
;handle_rs485.c: 195: {
;handle_rs485.c: 196: write_24c02(0x40 + (report_the_loss_address - 0x01) * 0x04 + 0x00, 0x00);
	clrf	(write_24c02@data)
	movf	(handle_rs485@report_the_loss_address),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	03Ch
	fcall	_write_24c02
	line	197
;handle_rs485.c: 197: write_24c02(0x40 + (report_the_loss_address - 0x01) * 0x04 + 0x01, 0x00);
	clrf	(write_24c02@data)
	movlb 0	; select bank0
	movf	(handle_rs485@report_the_loss_address),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	03Dh
	fcall	_write_24c02
	line	198
;handle_rs485.c: 198: write_24c02(0x40 + (report_the_loss_address - 0x01) * 0x04 + 0x02, 0x00);
	clrf	(write_24c02@data)
	movlb 0	; select bank0
	movf	(handle_rs485@report_the_loss_address),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	03Eh
	fcall	_write_24c02
	line	199
;handle_rs485.c: 199: write_24c02(0x40 + (report_the_loss_address - 0x01) * 0x04 + 0x03, 0x00);
	clrf	(write_24c02@data)
	movlb 0	; select bank0
	movf	(handle_rs485@report_the_loss_address),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	03Fh
	fcall	_write_24c02
	goto	l9978
	line	214
	
l9962:	
;handle_rs485.c: 214: if (uart2_receive_buffer[3] == 0x00)
	movf	0+(_uart2_receive_buffer)^080h+03h,f
	skipz
	goto	u12321
	goto	u12320
u12321:
	goto	l9978
u12320:
	line	216
	
l9964:	
;handle_rs485.c: 215: {
;handle_rs485.c: 216: (RA0 = 0x01);
	movlb 0	; select bank0
	bsf	(96/8),(96)&7	;volatile
	line	217
	
l9966:	
;handle_rs485.c: 217: is_enable = 0x00;
	clrf	(_is_enable)
	line	218
	
l9968:	
;handle_rs485.c: 218: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	219
	
l9970:	
;handle_rs485.c: 219: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	220
	
l9972:	
;handle_rs485.c: 220: uart1_send_byte(0xFE);
	movlw	(0FEh)
	fcall	_uart1_send_byte
	goto	l9978
	line	131
	
l9976:	
	movf	0+(_uart2_receive_buffer)^080h+02h,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 177 to 180
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           17     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	177^0	; case 177
	skipnz
	goto	l9882
	xorlw	179^177	; case 179
	skipnz
	goto	l9926
	xorlw	180^179	; case 180
	skipnz
	goto	l9962
	goto	l9978
	opt asmopt_on

	line	224
	
l548:	
	line	233
;handle_rs485.c: 225: }
	
l9978:	
;handle_rs485.c: 232: }
;handle_rs485.c: 233: for (BYTE i = 0x00; i < 0x10; i++)
	movlb 0	; select bank0
	clrf	(handle_rs485@i)
	line	235
	
l9984:	
;handle_rs485.c: 234: {
;handle_rs485.c: 235: uart2_receive_buffer[i] = 0x00;
	movf	(handle_rs485@i),w
	addlw	_uart2_receive_buffer&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	233
	
l9986:	
	incf	(handle_rs485@i),f
	
l9988:	
	movlw	(010h)
	subwf	(handle_rs485@i),w
	skipc
	goto	u12331
	goto	u12330
u12331:
	goto	l9984
u12330:
	line	237
	
l568:	
	return
	opt stack 0
GLOBAL	__end_of_handle_rs485
	__end_of_handle_rs485:
	signat	_handle_rs485,88
	global	_uart2_send_byte

;; *************** function _uart2_send_byte *****************
;; Defined at:
;;		line 242 in file "D:\WORKproject\AJ-BLE-IC\source\driver\uart.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 18/0
;;		On exit  : 1F/7
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_rs485
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\uart.c"
	line	242
global __ptext19
__ptext19:	;psect for function _uart2_send_byte
psect	text19
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\uart.c"
	line	242
	global	__size_of_uart2_send_byte
	__size_of_uart2_send_byte	equ	__end_of_uart2_send_byte-_uart2_send_byte
	
_uart2_send_byte:	
;incstack = 0
	opt	stack 13
; Regs used in _uart2_send_byte: [wreg]
;uart2_send_byte@data stored from wreg
	line	243
	movwf	(uart2_send_byte@data)
	line	246
	
l9990:	
;uart.c: 246: while (!TX2STAbits.TRMT);
	
l1208:	
	movlb 9	; select bank9
	btfss	(1174)^0480h,1	;volatile
	goto	u12341
	goto	u12340
u12341:
	goto	l1208
u12340:
	
l1210:	
	line	247
;uart.c: 247: (LATGbits.LATG0 = 1);
	movlb 7	; select bank7
	bsf	(909)^0380h,0	;volatile
	line	248
	
l9992:	
;uart.c: 248: TX2REG = data;
	movf	(uart2_send_byte@data),w
	movlb 9	; select bank9
	movwf	(1170)^0480h	;volatile
	line	249
;uart.c: 249: while (!TX2STAbits.TRMT);
	
l1211:	
	btfss	(1174)^0480h,1	;volatile
	goto	u12351
	goto	u12350
u12351:
	goto	l1211
u12350:
	
l1213:	
	line	250
;uart.c: 250: (LATGbits.LATG0 = 0);
	movlb 7	; select bank7
	bcf	(909)^0380h,0	;volatile
	line	251
	
l1214:	
	return
	opt stack 0
GLOBAL	__end_of_uart2_send_byte
	__end_of_uart2_send_byte:
	signat	_uart2_send_byte,4216
	global	_find_card

;; *************** function _find_card *****************
;; Defined at:
;;		line 100 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_rs485.c"
;; Parameters:    Size  Location     Type
;;  buffer          1    wreg     PTR unsigned char 
;;		 -> handle_rs485@tmp(4), 
;; Auto vars:     Size  Location     Type
;;  buffer          1    5[COMMON] PTR unsigned char 
;;		 -> handle_rs485@tmp(4), 
;;  i               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_read_24c02
;; This function is called by:
;;		_handle_rs485
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_rs485.c"
	line	100
global __ptext20
__ptext20:	;psect for function _find_card
psect	text20
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_rs485.c"
	line	100
	global	__size_of_find_card
	__size_of_find_card	equ	__end_of_find_card-_find_card
	
_find_card:	
;incstack = 0
	opt	stack 11
; Regs used in _find_card: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;find_card@buffer stored from wreg
	line	101
	movwf	(find_card@buffer)
	line	104
	
l9850:	
;handle_rs485.c: 104: for (BYTE i = 0x00; i < 0x2C; i++)
	clrf	(find_card@i)
	line	109
	
l9856:	
;handle_rs485.c: 105: {
;handle_rs485.c: 106: if ((buffer[0] == read_24c02(0x40 + (i * 0x04) + 0x00)) &&
;handle_rs485.c: 107: (buffer[1] == read_24c02(0x40 + (i * 0x04) + 0x01)) &&
;handle_rs485.c: 108: (buffer[2] == read_24c02(0x40 + (i * 0x04) + 0x02)) &&
;handle_rs485.c: 109: (buffer[3] == read_24c02(0x40 + (i * 0x04) + 0x03)))
	movf	(find_card@buffer),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(find_card@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	040h
	fcall	_read_24c02
	xorwf	indf1,w
	skipz
	goto	u12181
	goto	u12180
u12181:
	goto	l9868
u12180:
	
l9858:	
	incf	(find_card@buffer),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(find_card@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	041h
	fcall	_read_24c02
	xorwf	indf1,w
	skipz
	goto	u12191
	goto	u12190
u12191:
	goto	l9868
u12190:
	
l9860:	
	movf	(find_card@buffer),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(find_card@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	042h
	fcall	_read_24c02
	xorwf	indf1,w
	skipz
	goto	u12201
	goto	u12200
u12201:
	goto	l9868
u12200:
	
l9862:	
	movf	(find_card@buffer),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(find_card@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	043h
	fcall	_read_24c02
	xorwf	indf1,w
	skipz
	goto	u12211
	goto	u12210
u12211:
	goto	l9868
u12210:
	line	111
	
l9864:	
;handle_rs485.c: 110: {
;handle_rs485.c: 111: return (i + 0x01);
	movf	(find_card@i),w
	addlw	01h
	goto	l540
	line	104
	
l9868:	
	incf	(find_card@i),f
	
l9870:	
	movlw	(02Ch)
	subwf	(find_card@i),w
	skipc
	goto	u12221
	goto	u12220
u12221:
	goto	l9856
u12220:
	line	115
	
l9872:	
;handle_rs485.c: 112: }
;handle_rs485.c: 113: }
;handle_rs485.c: 115: return 0x00;
	movlw	(0)
	line	116
	
l540:	
	return
	opt stack 0
GLOBAL	__end_of_find_card
	__end_of_find_card:
	signat	_find_card,4217
	global	_do_check_sum

;; *************** function _do_check_sum *****************
;; Defined at:
;;		line 56 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_rs485.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
;;  length          1    4[COMMON] unsigned char 
;;  sum             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_rs485
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	56
global __ptext21
__ptext21:	;psect for function _do_check_sum
psect	text21
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_rs485.c"
	line	56
	global	__size_of_do_check_sum
	__size_of_do_check_sum	equ	__end_of_do_check_sum-_do_check_sum
	
_do_check_sum:	
;incstack = 0
	opt	stack 13
; Regs used in _do_check_sum: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	60
	
l9798:	
;handle_rs485.c: 60: BYTE sum = 0x00;
	clrf	(do_check_sum@sum)
	line	63
	
l9800:	
;handle_rs485.c: 63: length = uart2_receive_buffer[1];
	movlb 1	; select bank1
	movf	0+(_uart2_receive_buffer)^080h+01h,w
	movwf	(do_check_sum@length)
	line	65
	
l9802:	
;handle_rs485.c: 65: for (BYTE i = 0x00; i < (length - 0x05); i++)
	clrf	(do_check_sum@i)
	goto	l9808
	line	67
	
l9804:	
;handle_rs485.c: 66: {
;handle_rs485.c: 67: sum += uart2_receive_buffer[3 + i];
	movf	(do_check_sum@i),w
	addlw	_uart2_receive_buffer+03h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addwf	(do_check_sum@sum),f
	line	65
	
l9806:	
	incf	(do_check_sum@i),f
	
l9808:	
	movf	(do_check_sum@length),w
	addlw	low(-5)
	movwf	(??_do_check_sum+0)+0
	movlw	high(-5)
	skipnc
	movlw	(high(-5)+1)&0ffh
	movwf	((??_do_check_sum+0)+0)+1
	movf	1+(??_do_check_sum+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u12115
	movf	0+(??_do_check_sum+0)+0,w
	subwf	(do_check_sum@i),w
u12115:

	skipc
	goto	u12111
	goto	u12110
u12111:
	goto	l9804
u12110:
	line	69
	
l9810:	
;handle_rs485.c: 68: }
;handle_rs485.c: 69: sum += (BYTE)(uart2_receive_buffer[1] + uart2_receive_buffer[2]);
	movlb 1	; select bank1
	movf	0+(_uart2_receive_buffer)^080h+01h,w
	addwf	0+(_uart2_receive_buffer)^080h+02h,w
	addwf	(do_check_sum@sum),f
	line	70
	
l9812:	
;handle_rs485.c: 70: if (sum == uart2_receive_buffer[length - 0x02])
	movf	(do_check_sum@length),w
	addlw	_uart2_receive_buffer+0FEh&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorwf	(do_check_sum@sum),w
	skipz
	goto	u12121
	goto	u12120
u12121:
	goto	l9820
u12120:
	line	72
	
l9814:	
;handle_rs485.c: 71: {
;handle_rs485.c: 72: return 0x01;
	movlw	(01h)
	goto	l527
	line	76
	
l9820:	
;handle_rs485.c: 74: else
;handle_rs485.c: 75: {
;handle_rs485.c: 76: return 0x00;
	movlw	(0)
	line	78
	
l527:	
	return
	opt stack 0
GLOBAL	__end_of_do_check_sum
	__end_of_do_check_sum:
	signat	_do_check_sum,89
	global	_check_report_the_loss

;; *************** function _check_report_the_loss *****************
;; Defined at:
;;		line 81 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_rs485.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_read_24c02
;; This function is called by:
;;		_handle_rs485
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	81
global __ptext22
__ptext22:	;psect for function _check_report_the_loss
psect	text22
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_rs485.c"
	line	81
	global	__size_of_check_report_the_loss
	__size_of_check_report_the_loss	equ	__end_of_check_report_the_loss-_check_report_the_loss
	
_check_report_the_loss:	
;incstack = 0
	opt	stack 11
; Regs used in _check_report_the_loss: [wreg+status,2+status,0+pclath+cstack]
	line	85
	
l9824:	
;handle_rs485.c: 85: for (BYTE i = 0x00; i < 0x2C; i++)
	clrf	(check_report_the_loss@i)
	line	90
	
l9830:	
;handle_rs485.c: 86: {
;handle_rs485.c: 87: if ((uart2_receive_buffer[4] == read_24c02(0x40 + (i * 0x04) + 0x00)) &&
;handle_rs485.c: 88: (uart2_receive_buffer[5] == read_24c02(0x40 + (i * 0x04) + 0x01)) &&
;handle_rs485.c: 89: (uart2_receive_buffer[6] == read_24c02(0x40 + (i * 0x04) + 0x02)) &&
;handle_rs485.c: 90: (uart2_receive_buffer[7] == read_24c02(0x40 + (i * 0x04) + 0x03)))
	movf	(check_report_the_loss@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	040h
	fcall	_read_24c02
	movlb 1	; select bank1
	xorwf	0+(_uart2_receive_buffer)^080h+04h,w
	skipz
	goto	u12131
	goto	u12130
u12131:
	goto	l9842
u12130:
	
l9832:	
	movf	(check_report_the_loss@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	041h
	fcall	_read_24c02
	movlb 1	; select bank1
	xorwf	0+(_uart2_receive_buffer)^080h+05h,w
	skipz
	goto	u12141
	goto	u12140
u12141:
	goto	l9842
u12140:
	
l9834:	
	movf	(check_report_the_loss@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	042h
	fcall	_read_24c02
	movlb 1	; select bank1
	xorwf	0+(_uart2_receive_buffer)^080h+06h,w
	skipz
	goto	u12151
	goto	u12150
u12151:
	goto	l9842
u12150:
	
l9836:	
	movf	(check_report_the_loss@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	043h
	fcall	_read_24c02
	movlb 1	; select bank1
	xorwf	0+(_uart2_receive_buffer)^080h+07h,w
	skipz
	goto	u12161
	goto	u12160
u12161:
	goto	l9842
u12160:
	line	92
	
l9838:	
;handle_rs485.c: 91: {
;handle_rs485.c: 92: return 0x01;
	movlw	(01h)
	goto	l534
	line	85
	
l9842:	
	incf	(check_report_the_loss@i),f
	
l9844:	
	movlw	(02Ch)
	subwf	(check_report_the_loss@i),w
	skipc
	goto	u12171
	goto	u12170
u12171:
	goto	l9830
u12170:
	line	96
	
l9846:	
;handle_rs485.c: 93: }
;handle_rs485.c: 94: }
;handle_rs485.c: 96: return 0x00;
	movlw	(0)
	line	97
	
l534:	
	return
	opt stack 0
GLOBAL	__end_of_check_report_the_loss
	__end_of_check_report_the_loss:
	signat	_check_report_the_loss,89
	global	_handle_ic_card

;; *************** function _handle_ic_card *****************
;; Defined at:
;;		line 595 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_checkpsw
;;		_checkpsw_super
;;		_handle_beep
;;		_read_card_content
;;		_read_id
;;		_rfcard
;;		_same_id
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	595
global __ptext23
__ptext23:	;psect for function _handle_ic_card
psect	text23
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	595
	global	__size_of_handle_ic_card
	__size_of_handle_ic_card	equ	__end_of_handle_ic_card-_handle_ic_card
	
_handle_ic_card:	
;incstack = 0
	opt	stack 5
; Regs used in _handle_ic_card: [allreg]
	line	599
	
l9728:	
;handle_ic_card.c: 599: if (!rfcard())
	fcall	_rfcard
	iorlw	0
	skipz
	goto	u12031
	goto	u12030
u12031:
	goto	l9764
u12030:
	line	601
	
l9730:	
;handle_ic_card.c: 600: {
;handle_ic_card.c: 601: count = 0x05;
	movlw	(05h)
	movwf	(_count)
	line	602
	
l9732:	
;handle_ic_card.c: 602: if (read_id())
	fcall	_read_id
	xorlw	0&0ffh
	skipnz
	goto	u12041
	goto	u12040
u12041:
	goto	l496
u12040:
	line	604
	
l9734:	
;handle_ic_card.c: 603: {
;handle_ic_card.c: 604: if (!same_id())
	fcall	_same_id
	iorlw	0
	skipz
	goto	u12051
	goto	u12050
u12051:
	goto	l491
u12050:
	line	606
	
l9736:	
# 606 "D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
clrwdt ;# 
psect	text23
	line	607
	
l9738:	
;handle_ic_card.c: 607: card_id[0] = snr_rc500[0];
	movlb 1	; select bank1
	movf	(_snr_rc500)^080h,w
	movlb 0	; select bank0
	movwf	(_card_id)
	line	608
;handle_ic_card.c: 608: card_id[1] = snr_rc500[1];
	movlb 1	; select bank1
	movf	0+(_snr_rc500)^080h+01h,w
	movlb 0	; select bank0
	movwf	0+(_card_id)+01h
	line	609
;handle_ic_card.c: 609: card_id[2] = snr_rc500[2];
	movlb 1	; select bank1
	movf	0+(_snr_rc500)^080h+02h,w
	movlb 0	; select bank0
	movwf	0+(_card_id)+02h
	line	610
;handle_ic_card.c: 610: card_id[3] = snr_rc500[3];
	movlb 1	; select bank1
	movf	0+(_snr_rc500)^080h+03h,w
	movlb 0	; select bank0
	movwf	0+(_card_id)+03h
	line	611
;handle_ic_card.c: 611: ic_card[0] = card_id[3];
	movf	0+(_card_id)+03h,w
	movlb 1	; select bank1
	movwf	(_ic_card)^080h
	line	612
;handle_ic_card.c: 612: ic_card[1] = card_id[2];
	movlb 0	; select bank0
	movf	0+(_card_id)+02h,w
	movlb 1	; select bank1
	movwf	0+(_ic_card)^080h+01h
	line	613
;handle_ic_card.c: 613: ic_card[2] = card_id[1];
	movlb 0	; select bank0
	movf	0+(_card_id)+01h,w
	movlb 1	; select bank1
	movwf	0+(_ic_card)^080h+02h
	line	614
;handle_ic_card.c: 614: ic_card[3] = card_id[0];
	movlb 0	; select bank0
	movf	(_card_id),w
	movlb 1	; select bank1
	movwf	0+(_ic_card)^080h+03h
	line	619
	
l9740:	
;handle_ic_card.c: 619: if (checkpsw())
	fcall	_checkpsw
	xorlw	0&0ffh
	skipnz
	goto	u12061
	goto	u12060
u12061:
	goto	l483
u12060:
	line	621
	
l9742:	
# 621 "D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
clrwdt ;# 
psect	text23
	line	622
	
l9744:	
;handle_ic_card.c: 622: if (read_card_content())
	fcall	_read_card_content
	xorlw	0&0ffh
	skipnz
	goto	u12071
	goto	u12070
u12071:
	goto	l9752
u12070:
	line	624
	
l9746:	
;handle_ic_card.c: 623: {
;handle_ic_card.c: 624: flag_record = 0x01;
	movlb 0	; select bank0
	clrf	(_flag_record)
	incf	(_flag_record),f
	line	625
	
l9748:	
;handle_ic_card.c: 625: handle_beep();
	fcall	_handle_beep
	line	626
	
l9750:	
;handle_ic_card.c: 626: count = 0x05;
	movlw	(05h)
	movwf	(_count)
	line	632
;handle_ic_card.c: 627: }
	
l9752:	
;handle_ic_card.c: 631: }
;handle_ic_card.c: 632: card_type = 0x00;
	movlb 0	; select bank0
	clrf	(_card_type)
	line	633
;handle_ic_card.c: 633: }
	goto	l496
	line	634
	
l483:	
	line	636
# 636 "D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
clrwdt ;# 
psect	text23
	line	637
	
l9754:	
;handle_ic_card.c: 637: if (checkpsw_super())
	fcall	_checkpsw_super
	xorlw	0&0ffh
	skipnz
	goto	u12081
	goto	u12080
u12081:
	goto	l491
u12080:
	line	639
	
l9756:	
;handle_ic_card.c: 638: {
;handle_ic_card.c: 639: if (read_card_content())
	fcall	_read_card_content
	xorlw	0&0ffh
	skipnz
	goto	u12091
	goto	u12090
u12091:
	goto	l9752
u12090:
	goto	l9748
	line	659
;handle_ic_card.c: 656: else
;handle_ic_card.c: 657: {
	
l491:	
	line	660
;handle_ic_card.c: 659: }
;handle_ic_card.c: 660: }
	goto	l496
	line	668
	
l9764:	
;handle_ic_card.c: 666: else
;handle_ic_card.c: 667: {
;handle_ic_card.c: 668: if (count > 0x0A)
	movlw	(0Bh)
	subwf	(_count),w
	skipc
	goto	u12101
	goto	u12100
u12101:
	goto	l9770
u12100:
	line	670
	
l9766:	
;handle_ic_card.c: 669: {
;handle_ic_card.c: 670: card_id[0] = 0x00;
	clrf	(_card_id)
	line	671
;handle_ic_card.c: 671: card_id[1] = 0x00;
	clrf	0+(_card_id)+01h
	line	672
;handle_ic_card.c: 672: card_id[2] = 0x00;
	clrf	0+(_card_id)+02h
	line	673
;handle_ic_card.c: 673: card_id[3] = 0x00;
	clrf	0+(_card_id)+03h
	line	674
	
l9768:	
;handle_ic_card.c: 674: count = 0x05;
	movlw	(05h)
	movwf	(_count)
	line	675
;handle_ic_card.c: 675: }
	goto	l496
	line	678
	
l9770:	
;handle_ic_card.c: 676: else
;handle_ic_card.c: 677: {
;handle_ic_card.c: 678: count++;
	incf	(_count),f
	line	681
	
l496:	
	return
	opt stack 0
GLOBAL	__end_of_handle_ic_card
	__end_of_handle_ic_card:
	signat	_handle_ic_card,88
	global	_same_id

;; *************** function _same_id *****************
;; Defined at:
;;		line 519 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_ic_card
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	519
global __ptext24
__ptext24:	;psect for function _same_id
psect	text24
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	519
	global	__size_of_same_id
	__size_of_same_id	equ	__end_of_same_id-_same_id
	
_same_id:	
;incstack = 0
	opt	stack 13
; Regs used in _same_id: [wreg]
	line	526
	
l9570:	
;handle_ic_card.c: 523: if ((card_id[0] == snr_rc500[0]) &&
;handle_ic_card.c: 524: (card_id[1] == snr_rc500[1]) &&
;handle_ic_card.c: 525: (card_id[2] == snr_rc500[2]) &&
;handle_ic_card.c: 526: (card_id[3] == snr_rc500[3]))
	movf	(_card_id),w
	movlb 1	; select bank1
	xorwf	(_snr_rc500)^080h,w
	skipz
	goto	u11871
	goto	u11870
u11871:
	goto	l9584
u11870:
	
l9572:	
	movlb 0	; select bank0
	movf	0+(_card_id)+01h,w
	movlb 1	; select bank1
	xorwf	0+(_snr_rc500)^080h+01h,w
	skipz
	goto	u11881
	goto	u11880
u11881:
	goto	l9584
u11880:
	
l9574:	
	movlb 0	; select bank0
	movf	0+(_card_id)+02h,w
	movlb 1	; select bank1
	xorwf	0+(_snr_rc500)^080h+02h,w
	skipz
	goto	u11891
	goto	u11890
u11891:
	goto	l9584
u11890:
	
l9576:	
	movlb 0	; select bank0
	movf	0+(_card_id)+03h,w
	movlb 1	; select bank1
	xorwf	0+(_snr_rc500)^080h+03h,w
	skipz
	goto	u11901
	goto	u11900
u11901:
	goto	l9584
u11900:
	line	528
	
l9578:	
;handle_ic_card.c: 527: {
;handle_ic_card.c: 528: return 0x01;
	movlw	(01h)
	goto	l458
	line	532
	
l9584:	
;handle_ic_card.c: 530: else
;handle_ic_card.c: 531: {
;handle_ic_card.c: 532: return 0x00;
	movlw	(0)
	line	534
	
l458:	
	return
	opt stack 0
GLOBAL	__end_of_same_id
	__end_of_same_id:
	signat	_same_id,89
	global	_read_card_content

;; *************** function _read_card_content *****************
;; Defined at:
;;		line 144 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  user_count      2   32[BANK0 ] unsigned short 
;;  data           16   16[BANK0 ] unsigned char [16]
;;  ret             1   35[BANK0 ] unsigned char 
;;  i               1   34[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      20       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      21       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Mf500PiccRead
;;		_Mf500PiccWrite
;;		_check_user_card
;;		_checksum
;;		_deal_floor
;;		_ds1302_get_time
;;		_ds1302_set_time
;;		_read_24c02
;;		_uart1_send_byte
;;		_write_24c02
;; This function is called by:
;;		_handle_ic_card
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	144
global __ptext25
__ptext25:	;psect for function _read_card_content
psect	text25
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	144
	global	__size_of_read_card_content
	__size_of_read_card_content	equ	__end_of_read_card_content-_read_card_content
	
_read_card_content:	
;incstack = 0
	opt	stack 7
; Regs used in _read_card_content: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	148
	
l9096:	
	line	149
;handle_ic_card.c: 149: BYTE ret = 0x00;
	movlb 0	; select bank0
	clrf	(read_card_content@ret)
	line	150
	
l9098:	
;handle_ic_card.c: 150: BYTE data[16] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
	movlw	low(read_card_content@data)
	movwf	fsr1l
	movlw	high(read_card_content@data)
	movwf	fsr1h
	movlw	16
	movwf	(??_read_card_content+0)+0
	movlw	0
u11350:
	movwi	fsr1++
	decfsz	(??_read_card_content+0)+0,f
	goto	u11350
	line	220
	
l9100:	
;handle_ic_card.c: 220: ret = Mf500PiccRead(0x04 * sector_number + 0x00, data);
	movlw	(read_card_content@data)&0ffh
	movwf	(Mf500PiccRead@data1)
	movf	(_sector_number),w
	addwf	wreg,w
	addwf	wreg,w
	fcall	_Mf500PiccRead
	movwf	(read_card_content@ret)
	line	221
	
l9102:	
;handle_ic_card.c: 221: if (ret == 0)
	movf	(read_card_content@ret),f
	skipz
	goto	u11361
	goto	u11360
u11361:
	goto	l9130
u11360:
	line	241
	
l9104:	
;handle_ic_card.c: 222: {
;handle_ic_card.c: 241: if (data[15] == checksum(data, 15))
	movlw	(0Fh)
	movwf	(checksum@length)
	movlw	(read_card_content@data)&0ffh
	fcall	_checksum
	xorwf	0+(read_card_content@data)+0Fh,w
	skipz
	goto	u11371
	goto	u11370
u11371:
	goto	l9130
u11370:
	line	243
	
l9106:	
;handle_ic_card.c: 242: {
;handle_ic_card.c: 243: if (data[0] == 0xA0)
	movf	(read_card_content@data),w
	xorlw	0A0h&0ffh
	skipz
	goto	u11381
	goto	u11380
u11381:
	goto	l9146
u11380:
	line	245
	
l9108:	
;handle_ic_card.c: 244: {
;handle_ic_card.c: 245: card_type = 0x03;
	movlw	(03h)
	movwf	(_card_type)
	line	246
;handle_ic_card.c: 246: if (is_enable)
	movf	(_is_enable),w
	skipz
	goto	u11390
	goto	l9132
u11390:
	line	248
	
l9110:	
;handle_ic_card.c: 247: {
;handle_ic_card.c: 248: if (!check_user_card())
	fcall	_check_user_card
	iorlw	0
	skipz
	goto	u11401
	goto	u11400
u11401:
	goto	l9130
u11400:
	line	250
	
l9112:	
;handle_ic_card.c: 249: {
;handle_ic_card.c: 250: write_24c02(0x00, 0x55);
	movlw	(055h)
	movwf	(write_24c02@data)
	movlw	(0)
	fcall	_write_24c02
	line	251
	
l9114:	
;handle_ic_card.c: 251: is_enable = 0x00;
	movlb 0	; select bank0
	clrf	(_is_enable)
	line	252
	
l9116:	
;handle_ic_card.c: 252: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	253
	
l9118:	
;handle_ic_card.c: 253: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	254
	
l9120:	
;handle_ic_card.c: 254: uart1_send_byte(0xFE);
	movlw	(0FEh)
	fcall	_uart1_send_byte
	line	255
	
l9122:	
;handle_ic_card.c: 255: (RA0 = 0x01);
	movlb 0	; select bank0
	bsf	(96/8),(96)&7	;volatile
	line	256
	
l9124:	
;handle_ic_card.c: 256: RB4 = 0x00;
	bcf	(108/8),(108)&7	;volatile
	line	257
	
l9126:	
;handle_ic_card.c: 257: RB5 = 0x00;
	bcf	(109/8),(109)&7	;volatile
	line	258
	
l9128:	
;handle_ic_card.c: 258: ret = 0x01;
	movlb 0	; select bank0
	clrf	(read_card_content@ret)
	incf	(read_card_content@ret),f
	line	259
;handle_ic_card.c: 259: }
	goto	l9330
	line	262
	
l9130:	
;handle_ic_card.c: 260: else
;handle_ic_card.c: 261: {
;handle_ic_card.c: 262: ret = 0x00;
	clrf	(read_card_content@ret)
	goto	l9330
	line	267
	
l9132:	
;handle_ic_card.c: 265: else
;handle_ic_card.c: 266: {
;handle_ic_card.c: 267: if (!check_user_card())
	fcall	_check_user_card
	iorlw	0
	skipz
	goto	u11411
	goto	u11410
u11411:
	goto	l9130
u11410:
	line	269
	
l9134:	
;handle_ic_card.c: 268: {
;handle_ic_card.c: 269: write_24c02(0x00, 0xAA);
	movlw	(0AAh)
	movwf	(write_24c02@data)
	movlw	(0)
	fcall	_write_24c02
	line	270
	
l9136:	
;handle_ic_card.c: 270: is_enable = 0x01;
	movlb 0	; select bank0
	clrf	(_is_enable)
	incf	(_is_enable),f
	line	271
;handle_ic_card.c: 271: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	272
;handle_ic_card.c: 272: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	273
;handle_ic_card.c: 273: uart1_send_byte(0xFF);
	movlw	(0FFh)
	fcall	_uart1_send_byte
	line	274
	
l9138:	
;handle_ic_card.c: 274: RB4 = 0x01;
	movlb 0	; select bank0
	bsf	(108/8),(108)&7	;volatile
	line	275
	
l9140:	
;handle_ic_card.c: 275: RB5 = 0x01;
	bsf	(109/8),(109)&7	;volatile
	goto	l9128
	line	284
	
l9146:	
;handle_ic_card.c: 284: else if (data[0] == 0xA1)
	movf	(read_card_content@data),w
	xorlw	0A1h&0ffh
	skipz
	goto	u11421
	goto	u11420
u11421:
	goto	l9162
u11420:
	line	286
	
l9148:	
;handle_ic_card.c: 285: {
;handle_ic_card.c: 286: card_type = 0x02;
	movlw	(02h)
	movwf	(_card_type)
	line	287
;handle_ic_card.c: 287: if (is_enable)
	movf	(_is_enable),w
	skipz
	goto	u11430
	goto	l9130
u11430:
	line	289
	
l9150:	
;handle_ic_card.c: 288: {
;handle_ic_card.c: 289: if (!check_user_card())
	fcall	_check_user_card
	iorlw	0
	skipz
	goto	u11441
	goto	u11440
u11441:
	goto	l9130
u11440:
	line	291
	
l9152:	
;handle_ic_card.c: 290: {
;handle_ic_card.c: 291: group = data[1];
	movf	0+(read_card_content@data)+01h,w
	movwf	(_group)
	line	292
	
l9154:	
;handle_ic_card.c: 292: write_24c02(0x01, group);
	movf	(_group),w
	movwf	(write_24c02@data)
	movlw	(01h)
	fcall	_write_24c02
	goto	l9128
	line	305
	
l9162:	
;handle_ic_card.c: 305: else if (data[0] == 0xA2)
	movf	(read_card_content@data),w
	xorlw	0A2h&0ffh
	skipz
	goto	u11451
	goto	u11450
u11451:
	goto	l9178
u11450:
	line	307
	
l9164:	
;handle_ic_card.c: 306: {
;handle_ic_card.c: 307: card_type = 0x06;
	movlw	(06h)
	movwf	(_card_type)
	line	308
;handle_ic_card.c: 308: if (is_enable)
	movf	(_is_enable),w
	skipz
	goto	u11460
	goto	l9130
u11460:
	line	310
	
l9166:	
;handle_ic_card.c: 309: {
;handle_ic_card.c: 310: if (!check_user_card())
	fcall	_check_user_card
	iorlw	0
	skipz
	goto	u11471
	goto	u11470
u11471:
	goto	l9130
u11470:
	line	312
	
l9168:	
;handle_ic_card.c: 311: {
;handle_ic_card.c: 312: year = data[1];
	movf	0+(read_card_content@data)+01h,w
	movwf	(_year)
	line	313
;handle_ic_card.c: 313: month = data[2];
	movf	0+(read_card_content@data)+02h,w
	movwf	(_month)
	line	314
;handle_ic_card.c: 314: day = data[3];
	movf	0+(read_card_content@data)+03h,w
	movwf	(_day)
	line	315
;handle_ic_card.c: 315: hour = data[4];
	movf	0+(read_card_content@data)+04h,w
	movlb 1	; select bank1
	movwf	(_hour)^080h
	line	316
;handle_ic_card.c: 316: minute = data[5];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+05h,w
	movlb 1	; select bank1
	movwf	(_minute)^080h
	line	317
;handle_ic_card.c: 317: second = data[6];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+06h,w
	movlb 1	; select bank1
	movwf	(_second)^080h
	line	318
;handle_ic_card.c: 318: week = data[7];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+07h,w
	movlb 1	; select bank1
	movwf	(_week)^080h
	line	319
	
l9170:	
;handle_ic_card.c: 319: ds1302_set_time();
	fcall	_ds1302_set_time
	goto	l9128
	line	332
	
l9178:	
;handle_ic_card.c: 332: else if (data[0] == 0xA3)
	movf	(read_card_content@data),w
	xorlw	0A3h&0ffh
	skipz
	goto	u11481
	goto	u11480
u11481:
	goto	l9198
u11480:
	line	334
	
l9180:	
;handle_ic_card.c: 333: {
;handle_ic_card.c: 334: card_type = 0x04;
	movlw	(04h)
	movwf	(_card_type)
	line	335
;handle_ic_card.c: 335: if (is_enable)
	movf	(_is_enable),w
	skipz
	goto	u11490
	goto	l9130
u11490:
	line	337
	
l9182:	
;handle_ic_card.c: 336: {
;handle_ic_card.c: 337: if (!check_user_card())
	fcall	_check_user_card
	iorlw	0
	skipz
	goto	u11501
	goto	u11500
u11501:
	goto	l9130
u11500:
	line	339
	
l9184:	
;handle_ic_card.c: 338: {
;handle_ic_card.c: 339: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	340
;handle_ic_card.c: 340: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	341
;handle_ic_card.c: 341: uart1_send_byte(0xFC);
	movlw	(0FCh)
	fcall	_uart1_send_byte
	line	342
	
l9186:	
;handle_ic_card.c: 342: flag_user_card = 0x01;
	movlb 0	; select bank0
	clrf	(_flag_user_card)
	incf	(_flag_user_card),f
	goto	l9124
	line	357
	
l9198:	
;handle_ic_card.c: 357: else if (data[0] == 0xA4)
	movf	(read_card_content@data),w
	xorlw	0A4h&0ffh
	skipz
	goto	u11511
	goto	u11510
u11511:
	goto	l9308
u11510:
	line	359
	
l9200:	
;handle_ic_card.c: 358: {
;handle_ic_card.c: 359: card_type = 0x01;
	clrf	(_card_type)
	incf	(_card_type),f
	line	360
	
l9202:	
;handle_ic_card.c: 360: if (is_enable)
	movf	(_is_enable),w
	skipz
	goto	u11520
	goto	l9294
u11520:
	line	362
	
l9204:	
;handle_ic_card.c: 361: {
;handle_ic_card.c: 362: if (!check_user_card())
	fcall	_check_user_card
	iorlw	0
	skipz
	goto	u11531
	goto	u11530
u11531:
	goto	l9294
u11530:
	line	364
	
l9206:	
;handle_ic_card.c: 363: {
;handle_ic_card.c: 364: user_card[0] = data[1];
	movf	0+(read_card_content@data)+01h,w
	movlb 1	; select bank1
	movwf	(_user_card)^080h
	line	365
	
l9208:	
;handle_ic_card.c: 365: if (user_card[0] == read_24c02(0x01))
	movlw	(01h)
	fcall	_read_24c02
	movlb 1	; select bank1
	xorwf	(_user_card)^080h,w
	skipz
	goto	u11541
	goto	u11540
u11541:
	goto	l9218
u11540:
	line	367
	
l9210:	
;handle_ic_card.c: 366: {
;handle_ic_card.c: 367: user_card[1] = data[2];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+02h,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+01h
	line	368
;handle_ic_card.c: 368: if (user_card[1] == 0x01)
	decf	0+(_user_card)^080h+01h,w
	skipz
	goto	u11551
	goto	u11550
u11551:
	goto	l9230
u11550:
	line	370
	
l9212:	
	line	371
	
l9214:	
;handle_ic_card.c: 371: user_count = data[3] << 0x08 | data[4];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+03h,w
	movwf	(read_card_content@user_count+1)
	movf	0+(read_card_content@data)+04h,w
	movwf	(read_card_content@user_count)
	line	372
	
l9216:	
;handle_ic_card.c: 372: if (user_count == 0x00)
	movf	((read_card_content@user_count+1)),w
	iorwf	((read_card_content@user_count)),w
	skipz
	goto	u11561
	goto	u11560
u11561:
	goto	l9224
u11560:
	line	374
	
l9218:	
;handle_ic_card.c: 373: {
;handle_ic_card.c: 374: return 0x00;
	movlw	(0)
	goto	l418
	line	378
	
l9224:	
;handle_ic_card.c: 376: else
;handle_ic_card.c: 377: {
;handle_ic_card.c: 378: user_count--;
	movlw	low(01h)
	subwf	(read_card_content@user_count),f
	movlw	high(01h)
	subwfb	(read_card_content@user_count+1),f
	line	379
;handle_ic_card.c: 379: data[3] = user_count / 256;
	movf	(read_card_content@user_count+1),w
	movwf	0+(read_card_content@data)+03h
	line	380
;handle_ic_card.c: 380: data[4] = user_count % 256;
	movf	(read_card_content@user_count),w
	movwf	0+(read_card_content@data)+04h
	line	381
	
l9226:	
;handle_ic_card.c: 381: data[15] = checksum(data, 15);
	movlw	(0Fh)
	movwf	(checksum@length)
	movlw	(read_card_content@data)&0ffh
	fcall	_checksum
	movwf	0+(read_card_content@data)+0Fh
	line	382
	
l9228:	
;handle_ic_card.c: 382: Mf500PiccWrite(0x04 * sector_number + 0x00, data);
	movlw	(read_card_content@data)&0ffh
	movwf	(Mf500PiccWrite@data1)
	movf	(_sector_number),w
	addwf	wreg,w
	addwf	wreg,w
	fcall	_Mf500PiccWrite
	goto	l9264
	line	385
	
l9230:	
;handle_ic_card.c: 385: else if (user_card[1] == 0x02)
	movf	0+(_user_card)^080h+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u11571
	goto	u11570
u11571:
	goto	l9262
u11570:
	line	387
	
l9232:	
;handle_ic_card.c: 386: {
;handle_ic_card.c: 387: user_card[2] = data[3];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+03h,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+02h
	line	388
;handle_ic_card.c: 388: user_card[3] = data[4];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+04h,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+03h
	line	389
;handle_ic_card.c: 389: user_card[4] = data[5];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+05h,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+04h
	line	390
;handle_ic_card.c: 390: user_card[5] = data[6];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+06h,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+05h
	line	391
	
l9234:	
;handle_ic_card.c: 391: ds1302_get_time();
	fcall	_ds1302_get_time
	line	395
	
l9236:	
;handle_ic_card.c: 392: if ((year > user_card[2]) ||
;handle_ic_card.c: 393: ((year == user_card[2]) && (month > user_card[3])) ||
;handle_ic_card.c: 394: ((year == user_card[2]) && (month == user_card[3]) && (day > user_card[4])) ||
;handle_ic_card.c: 395: ((year == user_card[2]) && (month == user_card[3]) && (day == user_card[4]) && (hour >= user_card[5])))
	movlb 0	; select bank0
	movf	(_year),w
	movlb 1	; select bank1
	subwf	0+(_user_card)^080h+02h,w
	skipc
	goto	u11581
	goto	u11580
u11581:
	goto	l9218
u11580:
	
l9238:	
	movf	0+(_user_card)^080h+02h,w
	movlb 0	; select bank0
	xorwf	(_year),w
	skipz
	goto	u11591
	goto	u11590
u11591:
	goto	l9242
u11590:
	
l9240:	
	movf	(_month),w
	movlb 1	; select bank1
	subwf	0+(_user_card)^080h+03h,w
	skipc
	goto	u11601
	goto	u11600
u11601:
	goto	l9218
u11600:
	
l9242:	
	movlb 1	; select bank1
	movf	0+(_user_card)^080h+02h,w
	movlb 0	; select bank0
	xorwf	(_year),w
	skipz
	goto	u11611
	goto	u11610
u11611:
	goto	l9248
u11610:
	
l9244:	
	movlb 1	; select bank1
	movf	0+(_user_card)^080h+03h,w
	movlb 0	; select bank0
	xorwf	(_month),w
	skipz
	goto	u11621
	goto	u11620
u11621:
	goto	l9248
u11620:
	
l9246:	
	movf	(_day),w
	movlb 1	; select bank1
	subwf	0+(_user_card)^080h+04h,w
	skipc
	goto	u11631
	goto	u11630
u11631:
	goto	l9218
u11630:
	
l9248:	
	movlb 1	; select bank1
	movf	0+(_user_card)^080h+02h,w
	movlb 0	; select bank0
	xorwf	(_year),w
	skipz
	goto	u11641
	goto	u11640
u11641:
	goto	l9264
u11640:
	
l9250:	
	movlb 1	; select bank1
	movf	0+(_user_card)^080h+03h,w
	movlb 0	; select bank0
	xorwf	(_month),w
	skipz
	goto	u11651
	goto	u11650
u11651:
	goto	l9264
u11650:
	
l9252:	
	movlb 1	; select bank1
	movf	0+(_user_card)^080h+04h,w
	movlb 0	; select bank0
	xorwf	(_day),w
	skipz
	goto	u11661
	goto	u11660
u11661:
	goto	l9264
u11660:
	
l9254:	
	movlb 1	; select bank1
	movf	0+(_user_card)^080h+05h,w
	subwf	(_hour)^080h,w
	skipc
	goto	u11671
	goto	u11670
u11671:
	goto	l9264
u11670:
	goto	l9218
	line	406
	
l9262:	
;handle_ic_card.c: 404: else
;handle_ic_card.c: 405: {
;handle_ic_card.c: 406: user_card[2] = 0x00;
	clrf	0+(_user_card)^080h+02h
	line	407
;handle_ic_card.c: 407: user_card[3] = 0x00;
	clrf	0+(_user_card)^080h+03h
	line	408
;handle_ic_card.c: 408: user_card[4] = 0x00;
	clrf	0+(_user_card)^080h+04h
	line	409
;handle_ic_card.c: 409: user_card[5] = 0x00;
	clrf	0+(_user_card)^080h+05h
	line	411
	
l9264:	
;handle_ic_card.c: 410: }
;handle_ic_card.c: 411: user_card[6] = data[14];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+0Eh,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+06h
	line	412
	
l9266:	
;handle_ic_card.c: 412: user_card[7] = data[13];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+0Dh,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+07h
	line	413
	
l9268:	
;handle_ic_card.c: 413: user_card[8] = data[12];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+0Ch,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+08h
	line	414
	
l9270:	
;handle_ic_card.c: 414: user_card[9] = data[11];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+0Bh,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+09h
	line	415
	
l9272:	
;handle_ic_card.c: 415: user_card[10] = data[10];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+0Ah,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+0Ah
	line	416
	
l9274:	
;handle_ic_card.c: 416: user_card[11] = data[9];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+09h,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+0Bh
	line	417
	
l9276:	
;handle_ic_card.c: 417: user_card[12] = data[8];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+08h,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+0Ch
	line	418
	
l9278:	
;handle_ic_card.c: 418: user_card[13] = data[7];
	movlb 0	; select bank0
	movf	0+(read_card_content@data)+07h,w
	movlb 1	; select bank1
	movwf	0+(_user_card)^080h+0Dh
	line	419
	
l9280:	
;handle_ic_card.c: 419: deal_floor(user_card);
	movlw	(_user_card)&0ffh
	fcall	_deal_floor
	line	420
	
l9282:	
;handle_ic_card.c: 420: flag_user_card = 0x01;
	movlb 0	; select bank0
	clrf	(_flag_user_card)
	incf	(_flag_user_card),f
	line	421
	
l9284:	
;handle_ic_card.c: 421: RB4 = 0x00;
	bcf	(108/8),(108)&7	;volatile
	line	422
	
l9286:	
;handle_ic_card.c: 422: RB5 = 0x00;
	bcf	(109/8),(109)&7	;volatile
	line	423
	
l9288:	
;handle_ic_card.c: 423: ret = 0x01;
	clrf	(read_card_content@ret)
	incf	(read_card_content@ret),f
	line	424
;handle_ic_card.c: 424: }
	goto	l433
	line	432
	
l9294:	
;handle_ic_card.c: 430: else
;handle_ic_card.c: 431: {
;handle_ic_card.c: 432: ret = 0x00;
	clrf	(read_card_content@ret)
	line	438
	
l433:	
	line	439
;handle_ic_card.c: 438: }
;handle_ic_card.c: 439: for (i = 0x00; i < 14; i++)
	clrf	(read_card_content@i)
	line	441
	
l9302:	
;handle_ic_card.c: 440: {
;handle_ic_card.c: 441: user_card[i] = 0x00;
	movf	(read_card_content@i),w
	addlw	_user_card&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	439
	
l9304:	
	incf	(read_card_content@i),f
	
l9306:	
	movlw	(0Eh)
	subwf	(read_card_content@i),w
	skipc
	goto	u11681
	goto	u11680
u11681:
	goto	l9302
u11680:
	goto	l9330
	line	444
	
l9308:	
;handle_ic_card.c: 444: else if (data[0] == 0xA8)
	movf	(read_card_content@data),w
	xorlw	0A8h&0ffh
	skipz
	goto	u11691
	goto	u11690
u11691:
	goto	l9130
u11690:
	line	446
	
l9310:	
;handle_ic_card.c: 445: {
;handle_ic_card.c: 446: card_type = 0x08;
	movlw	(08h)
	movwf	(_card_type)
	line	447
;handle_ic_card.c: 447: if (is_enable)
	movf	(_is_enable),w
	skipz
	goto	u11700
	goto	l9130
u11700:
	line	449
	
l9312:	
;handle_ic_card.c: 448: {
;handle_ic_card.c: 449: if (!check_user_card())
	fcall	_check_user_card
	iorlw	0
	skipz
	goto	u11711
	goto	u11710
u11711:
	goto	l9130
u11710:
	line	451
	
l9314:	
;handle_ic_card.c: 450: {
;handle_ic_card.c: 451: sector_number = data[1];
	movf	0+(read_card_content@data)+01h,w
	movwf	(_sector_number)
	line	452
	
l9316:	
;handle_ic_card.c: 452: write_24c02(0x09, sector_number);
	movf	(_sector_number),w
	movwf	(write_24c02@data)
	movlw	(09h)
	fcall	_write_24c02
	goto	l9128
	line	480
	
l9330:	
;handle_ic_card.c: 478: }
;handle_ic_card.c: 480: return ret;
	movf	(read_card_content@ret),w
	line	481
	
l418:	
	return
	opt stack 0
GLOBAL	__end_of_read_card_content
	__end_of_read_card_content:
	signat	_read_card_content,89
	global	_deal_floor

;; *************** function _deal_floor *****************
;; Defined at:
;;		line 36 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_floor.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     PTR unsigned char 
;;		 -> user_card(14), 
;; Auto vars:     Size  Location     Type
;;  data            1    0[BANK0 ] PTR unsigned char 
;;		 -> user_card(14), 
;;  floor           8    2[BANK0 ] unsigned char [8]
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      10       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1      10       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_ms
;;		_uart1_send_byte
;; This function is called by:
;;		_read_card_content
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_floor.c"
	line	36
global __ptext26
__ptext26:	;psect for function _deal_floor
psect	text26
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_floor.c"
	line	36
	global	__size_of_deal_floor
	__size_of_deal_floor	equ	__end_of_deal_floor-_deal_floor
	
_deal_floor:	
;incstack = 0
	opt	stack 11
; Regs used in _deal_floor: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;deal_floor@data stored from wreg
	line	37
	movlb 0	; select bank0
	movwf	(deal_floor@data)
	line	42
	
l8390:	
;handle_floor.c: 40: BYTE i, floor[8];
;handle_floor.c: 42: for (i = 0; i < 0x08; i++)
	clrf	(deal_floor@i)
	line	44
	
l8396:	
;handle_floor.c: 43: {
;handle_floor.c: 44: floor[i] = data[i + 6];
	movf	(deal_floor@i),w
	addlw	deal_floor@floor&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(deal_floor@i),w
	addwf	(deal_floor@data),w
	movwf	(??_deal_floor+0)+0
	movf	0+(??_deal_floor+0)+0,w
	addlw	06h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	line	42
	
l8398:	
	incf	(deal_floor@i),f
	
l8400:	
	movlw	(08h)
	subwf	(deal_floor@i),w
	skipc
	goto	u9451
	goto	u9450
u9451:
	goto	l8396
u9450:
	line	51
	
l8402:	
;handle_floor.c: 45: }
;handle_floor.c: 48: if ((floor[0] == 0x01 || floor[0] == 0x02 || floor[0] == 0x04 || floor[0] == 0x08 ||
;handle_floor.c: 49: floor[0] == 0x10 || floor[0] == 0x20 || floor[0] == 0x40 || floor[0] == 0x80) &&
;handle_floor.c: 50: floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 &&
;handle_floor.c: 51: floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	decf	(deal_floor@floor),w
	skipnz
	goto	u9461
	goto	u9460
u9461:
	goto	l8418
u9460:
	
l8404:	
	movf	(deal_floor@floor),w
	xorlw	02h&0ffh
	skipnz
	goto	u9471
	goto	u9470
u9471:
	goto	l8418
u9470:
	
l8406:	
	movf	(deal_floor@floor),w
	xorlw	04h&0ffh
	skipnz
	goto	u9481
	goto	u9480
u9481:
	goto	l8418
u9480:
	
l8408:	
	movf	(deal_floor@floor),w
	xorlw	08h&0ffh
	skipnz
	goto	u9491
	goto	u9490
u9491:
	goto	l8418
u9490:
	
l8410:	
	movf	(deal_floor@floor),w
	xorlw	010h&0ffh
	skipnz
	goto	u9501
	goto	u9500
u9501:
	goto	l8418
u9500:
	
l8412:	
	movf	(deal_floor@floor),w
	xorlw	020h&0ffh
	skipnz
	goto	u9511
	goto	u9510
u9511:
	goto	l8418
u9510:
	
l8414:	
	movf	(deal_floor@floor),w
	xorlw	040h&0ffh
	skipnz
	goto	u9521
	goto	u9520
u9521:
	goto	l8418
u9520:
	
l8416:	
	movf	(deal_floor@floor),w
	xorlw	080h&0ffh
	skipz
	goto	u9531
	goto	u9530
u9531:
	goto	l8454
u9530:
	
l8418:	
	movf	0+(deal_floor@floor)+01h,f
	skipz
	goto	u9541
	goto	u9540
u9541:
	goto	l8454
u9540:
	
l8420:	
	movf	0+(deal_floor@floor)+02h,f
	skipz
	goto	u9551
	goto	u9550
u9551:
	goto	l8454
u9550:
	
l8422:	
	movf	0+(deal_floor@floor)+03h,f
	skipz
	goto	u9561
	goto	u9560
u9561:
	goto	l8454
u9560:
	
l8424:	
	movf	0+(deal_floor@floor)+04h,f
	skipz
	goto	u9571
	goto	u9570
u9571:
	goto	l8454
u9570:
	
l8426:	
	movf	0+(deal_floor@floor)+05h,f
	skipz
	goto	u9581
	goto	u9580
u9581:
	goto	l8454
u9580:
	
l8428:	
	movf	0+(deal_floor@floor)+06h,f
	skipz
	goto	u9591
	goto	u9590
u9591:
	goto	l8454
u9590:
	
l8430:	
	movf	0+(deal_floor@floor)+07h,f
	skipz
	goto	u9601
	goto	u9600
u9601:
	goto	l8454
u9600:
	goto	l8452
	line	55
	
l8434:	
	movlw	(01h)
	fcall	_uart1_send_byte
	goto	l289
	line	56
	
l8436:	
	movlw	(02h)
	fcall	_uart1_send_byte
	goto	l289
	line	57
	
l8438:	
	movlw	(04h)
	fcall	_uart1_send_byte
	goto	l289
	line	58
	
l8440:	
	movlw	(08h)
	fcall	_uart1_send_byte
	goto	l289
	line	59
	
l8442:	
	movlw	(011h)
	fcall	_uart1_send_byte
	goto	l289
	line	60
	
l8444:	
	movlw	(012h)
	fcall	_uart1_send_byte
	goto	l289
	line	61
	
l8446:	
	movlw	(014h)
	fcall	_uart1_send_byte
	goto	l289
	line	62
	
l8448:	
	movlw	(018h)
	fcall	_uart1_send_byte
	goto	l289
	line	53
	
l8452:	
	movf	(deal_floor@floor),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte          265     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l8434
	xorlw	2^1	; case 2
	skipnz
	goto	l8436
	xorlw	4^2	; case 4
	skipnz
	goto	l8438
	xorlw	8^4	; case 8
	skipnz
	goto	l8440
	xorlw	16^8	; case 16
	skipnz
	goto	l8442
	xorlw	32^16	; case 32
	skipnz
	goto	l8444
	xorlw	64^32	; case 64
	skipnz
	goto	l8446
	xorlw	128^64	; case 128
	skipnz
	goto	l8448
	goto	l289
	opt asmopt_on

	line	69
	
l8454:	
;handle_floor.c: 66: else if (floor[0] == 0x00 &&
;handle_floor.c: 67: (floor[1] == 0x01 || floor[1] == 0x02 || floor[1] == 0x04 || floor[1] == 0x08 ||
;handle_floor.c: 68: floor[1] == 0x10 || floor[1] == 0x20 || floor[1] == 0x40 || floor[1] == 0x80) &&
;handle_floor.c: 69: floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	movf	(deal_floor@floor),f
	skipz
	goto	u9611
	goto	u9610
u9611:
	goto	l8506
u9610:
	
l8456:	
	decf	0+(deal_floor@floor)+01h,w
	skipnz
	goto	u9621
	goto	u9620
u9621:
	goto	l8472
u9620:
	
l8458:	
	movf	0+(deal_floor@floor)+01h,w
	xorlw	02h&0ffh
	skipnz
	goto	u9631
	goto	u9630
u9631:
	goto	l8472
u9630:
	
l8460:	
	movf	0+(deal_floor@floor)+01h,w
	xorlw	04h&0ffh
	skipnz
	goto	u9641
	goto	u9640
u9641:
	goto	l8472
u9640:
	
l8462:	
	movf	0+(deal_floor@floor)+01h,w
	xorlw	08h&0ffh
	skipnz
	goto	u9651
	goto	u9650
u9651:
	goto	l8472
u9650:
	
l8464:	
	movf	0+(deal_floor@floor)+01h,w
	xorlw	010h&0ffh
	skipnz
	goto	u9661
	goto	u9660
u9661:
	goto	l8472
u9660:
	
l8466:	
	movf	0+(deal_floor@floor)+01h,w
	xorlw	020h&0ffh
	skipnz
	goto	u9671
	goto	u9670
u9671:
	goto	l8472
u9670:
	
l8468:	
	movf	0+(deal_floor@floor)+01h,w
	xorlw	040h&0ffh
	skipnz
	goto	u9681
	goto	u9680
u9681:
	goto	l8472
u9680:
	
l8470:	
	movf	0+(deal_floor@floor)+01h,w
	xorlw	080h&0ffh
	skipz
	goto	u9691
	goto	u9690
u9691:
	goto	l8506
u9690:
	
l8472:	
	movf	0+(deal_floor@floor)+02h,f
	skipz
	goto	u9701
	goto	u9700
u9701:
	goto	l8506
u9700:
	
l8474:	
	movf	0+(deal_floor@floor)+03h,f
	skipz
	goto	u9711
	goto	u9710
u9711:
	goto	l8506
u9710:
	
l8476:	
	movf	0+(deal_floor@floor)+04h,f
	skipz
	goto	u9721
	goto	u9720
u9721:
	goto	l8506
u9720:
	
l8478:	
	movf	0+(deal_floor@floor)+05h,f
	skipz
	goto	u9731
	goto	u9730
u9731:
	goto	l8506
u9730:
	
l8480:	
	movf	0+(deal_floor@floor)+06h,f
	skipz
	goto	u9741
	goto	u9740
u9741:
	goto	l8506
u9740:
	
l8482:	
	movf	0+(deal_floor@floor)+07h,f
	skipz
	goto	u9751
	goto	u9750
u9751:
	goto	l8506
u9750:
	goto	l8504
	line	73
	
l8486:	
	movlw	(021h)
	fcall	_uart1_send_byte
	goto	l289
	line	74
	
l8488:	
	movlw	(022h)
	fcall	_uart1_send_byte
	goto	l289
	line	75
	
l8490:	
	movlw	(024h)
	fcall	_uart1_send_byte
	goto	l289
	line	76
	
l8492:	
	movlw	(028h)
	fcall	_uart1_send_byte
	goto	l289
	line	77
	
l8494:	
	movlw	(031h)
	fcall	_uart1_send_byte
	goto	l289
	line	78
	
l8496:	
	movlw	(032h)
	fcall	_uart1_send_byte
	goto	l289
	line	79
	
l8498:	
	movlw	(034h)
	fcall	_uart1_send_byte
	goto	l289
	line	80
	
l8500:	
	movlw	(038h)
	fcall	_uart1_send_byte
	goto	l289
	line	71
	
l8504:	
	movf	0+(deal_floor@floor)+01h,w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte          265     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l8486
	xorlw	2^1	; case 2
	skipnz
	goto	l8488
	xorlw	4^2	; case 4
	skipnz
	goto	l8490
	xorlw	8^4	; case 8
	skipnz
	goto	l8492
	xorlw	16^8	; case 16
	skipnz
	goto	l8494
	xorlw	32^16	; case 32
	skipnz
	goto	l8496
	xorlw	64^32	; case 64
	skipnz
	goto	l8498
	xorlw	128^64	; case 128
	skipnz
	goto	l8500
	goto	l289
	opt asmopt_on

	line	87
	
l8506:	
;handle_floor.c: 84: else if (floor[0] == 0x00 && floor[1] == 0x00 &&
;handle_floor.c: 85: (floor[2] == 0x01 || floor[2] == 0x02 || floor[2] == 0x04 || floor[2] == 0x08 ||
;handle_floor.c: 86: floor[2] == 0x10 || floor[2] == 0x20 || floor[2] == 0x40 || floor[2] == 0x80) &&
;handle_floor.c: 87: floor[3] == 0x00 && floor[4] == 0x00 && floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	movf	(deal_floor@floor),f
	skipz
	goto	u9761
	goto	u9760
u9761:
	goto	l8558
u9760:
	
l8508:	
	movf	0+(deal_floor@floor)+01h,f
	skipz
	goto	u9771
	goto	u9770
u9771:
	goto	l8558
u9770:
	
l8510:	
	decf	0+(deal_floor@floor)+02h,w
	skipnz
	goto	u9781
	goto	u9780
u9781:
	goto	l8526
u9780:
	
l8512:	
	movf	0+(deal_floor@floor)+02h,w
	xorlw	02h&0ffh
	skipnz
	goto	u9791
	goto	u9790
u9791:
	goto	l8526
u9790:
	
l8514:	
	movf	0+(deal_floor@floor)+02h,w
	xorlw	04h&0ffh
	skipnz
	goto	u9801
	goto	u9800
u9801:
	goto	l8526
u9800:
	
l8516:	
	movf	0+(deal_floor@floor)+02h,w
	xorlw	08h&0ffh
	skipnz
	goto	u9811
	goto	u9810
u9811:
	goto	l8526
u9810:
	
l8518:	
	movf	0+(deal_floor@floor)+02h,w
	xorlw	010h&0ffh
	skipnz
	goto	u9821
	goto	u9820
u9821:
	goto	l8526
u9820:
	
l8520:	
	movf	0+(deal_floor@floor)+02h,w
	xorlw	020h&0ffh
	skipnz
	goto	u9831
	goto	u9830
u9831:
	goto	l8526
u9830:
	
l8522:	
	movf	0+(deal_floor@floor)+02h,w
	xorlw	040h&0ffh
	skipnz
	goto	u9841
	goto	u9840
u9841:
	goto	l8526
u9840:
	
l8524:	
	movf	0+(deal_floor@floor)+02h,w
	xorlw	080h&0ffh
	skipz
	goto	u9851
	goto	u9850
u9851:
	goto	l8558
u9850:
	
l8526:	
	movf	0+(deal_floor@floor)+03h,f
	skipz
	goto	u9861
	goto	u9860
u9861:
	goto	l8558
u9860:
	
l8528:	
	movf	0+(deal_floor@floor)+04h,f
	skipz
	goto	u9871
	goto	u9870
u9871:
	goto	l8558
u9870:
	
l8530:	
	movf	0+(deal_floor@floor)+05h,f
	skipz
	goto	u9881
	goto	u9880
u9881:
	goto	l8558
u9880:
	
l8532:	
	movf	0+(deal_floor@floor)+06h,f
	skipz
	goto	u9891
	goto	u9890
u9891:
	goto	l8558
u9890:
	
l8534:	
	movf	0+(deal_floor@floor)+07h,f
	skipz
	goto	u9901
	goto	u9900
u9901:
	goto	l8558
u9900:
	goto	l8556
	line	91
	
l8538:	
	movlw	(041h)
	fcall	_uart1_send_byte
	goto	l289
	line	92
	
l8540:	
	movlw	(042h)
	fcall	_uart1_send_byte
	goto	l289
	line	93
	
l8542:	
	movlw	(044h)
	fcall	_uart1_send_byte
	goto	l289
	line	94
	
l8544:	
	movlw	(048h)
	fcall	_uart1_send_byte
	goto	l289
	line	95
	
l8546:	
	movlw	(051h)
	fcall	_uart1_send_byte
	goto	l289
	line	96
	
l8548:	
	movlw	(052h)
	fcall	_uart1_send_byte
	goto	l289
	line	97
	
l8550:	
	movlw	(054h)
	fcall	_uart1_send_byte
	goto	l289
	line	98
	
l8552:	
	movlw	(058h)
	fcall	_uart1_send_byte
	goto	l289
	line	89
	
l8556:	
	movf	0+(deal_floor@floor)+02h,w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte          265     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l8538
	xorlw	2^1	; case 2
	skipnz
	goto	l8540
	xorlw	4^2	; case 4
	skipnz
	goto	l8542
	xorlw	8^4	; case 8
	skipnz
	goto	l8544
	xorlw	16^8	; case 16
	skipnz
	goto	l8546
	xorlw	32^16	; case 32
	skipnz
	goto	l8548
	xorlw	64^32	; case 64
	skipnz
	goto	l8550
	xorlw	128^64	; case 128
	skipnz
	goto	l8552
	goto	l289
	opt asmopt_on

	line	105
	
l8558:	
;handle_floor.c: 102: else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 &&
;handle_floor.c: 103: (floor[3] == 0x01 || floor[3] == 0x02 || floor[3] == 0x04 || floor[3] == 0x08 ||
;handle_floor.c: 104: floor[3] == 0x10 || floor[3] == 0x20 || floor[3] == 0x40 || floor[3] == 0x80)
;handle_floor.c: 105: && floor[4] == 0x00 && floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	movf	(deal_floor@floor),f
	skipz
	goto	u9911
	goto	u9910
u9911:
	goto	l8610
u9910:
	
l8560:	
	movf	0+(deal_floor@floor)+01h,f
	skipz
	goto	u9921
	goto	u9920
u9921:
	goto	l8610
u9920:
	
l8562:	
	movf	0+(deal_floor@floor)+02h,f
	skipz
	goto	u9931
	goto	u9930
u9931:
	goto	l8610
u9930:
	
l8564:	
	decf	0+(deal_floor@floor)+03h,w
	skipnz
	goto	u9941
	goto	u9940
u9941:
	goto	l8580
u9940:
	
l8566:	
	movf	0+(deal_floor@floor)+03h,w
	xorlw	02h&0ffh
	skipnz
	goto	u9951
	goto	u9950
u9951:
	goto	l8580
u9950:
	
l8568:	
	movf	0+(deal_floor@floor)+03h,w
	xorlw	04h&0ffh
	skipnz
	goto	u9961
	goto	u9960
u9961:
	goto	l8580
u9960:
	
l8570:	
	movf	0+(deal_floor@floor)+03h,w
	xorlw	08h&0ffh
	skipnz
	goto	u9971
	goto	u9970
u9971:
	goto	l8580
u9970:
	
l8572:	
	movf	0+(deal_floor@floor)+03h,w
	xorlw	010h&0ffh
	skipnz
	goto	u9981
	goto	u9980
u9981:
	goto	l8580
u9980:
	
l8574:	
	movf	0+(deal_floor@floor)+03h,w
	xorlw	020h&0ffh
	skipnz
	goto	u9991
	goto	u9990
u9991:
	goto	l8580
u9990:
	
l8576:	
	movf	0+(deal_floor@floor)+03h,w
	xorlw	040h&0ffh
	skipnz
	goto	u10001
	goto	u10000
u10001:
	goto	l8580
u10000:
	
l8578:	
	movf	0+(deal_floor@floor)+03h,w
	xorlw	080h&0ffh
	skipz
	goto	u10011
	goto	u10010
u10011:
	goto	l8610
u10010:
	
l8580:	
	movf	0+(deal_floor@floor)+04h,f
	skipz
	goto	u10021
	goto	u10020
u10021:
	goto	l8610
u10020:
	
l8582:	
	movf	0+(deal_floor@floor)+05h,f
	skipz
	goto	u10031
	goto	u10030
u10031:
	goto	l8610
u10030:
	
l8584:	
	movf	0+(deal_floor@floor)+06h,f
	skipz
	goto	u10041
	goto	u10040
u10041:
	goto	l8610
u10040:
	
l8586:	
	movf	0+(deal_floor@floor)+07h,f
	skipz
	goto	u10051
	goto	u10050
u10051:
	goto	l8610
u10050:
	goto	l8608
	line	109
	
l8590:	
	movlw	(061h)
	fcall	_uart1_send_byte
	goto	l289
	line	110
	
l8592:	
	movlw	(062h)
	fcall	_uart1_send_byte
	goto	l289
	line	111
	
l8594:	
	movlw	(064h)
	fcall	_uart1_send_byte
	goto	l289
	line	112
	
l8596:	
	movlw	(068h)
	fcall	_uart1_send_byte
	goto	l289
	line	113
	
l8598:	
	movlw	(071h)
	fcall	_uart1_send_byte
	goto	l289
	line	114
	
l8600:	
	movlw	(072h)
	fcall	_uart1_send_byte
	goto	l289
	line	115
	
l8602:	
	movlw	(074h)
	fcall	_uart1_send_byte
	goto	l289
	line	116
	
l8604:	
	movlw	(078h)
	fcall	_uart1_send_byte
	goto	l289
	line	107
	
l8608:	
	movf	0+(deal_floor@floor)+03h,w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte          265     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l8590
	xorlw	2^1	; case 2
	skipnz
	goto	l8592
	xorlw	4^2	; case 4
	skipnz
	goto	l8594
	xorlw	8^4	; case 8
	skipnz
	goto	l8596
	xorlw	16^8	; case 16
	skipnz
	goto	l8598
	xorlw	32^16	; case 32
	skipnz
	goto	l8600
	xorlw	64^32	; case 64
	skipnz
	goto	l8602
	xorlw	128^64	; case 128
	skipnz
	goto	l8604
	goto	l289
	opt asmopt_on

	line	123
	
l8610:	
;handle_floor.c: 120: else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 &&
;handle_floor.c: 121: (floor[4] == 0x01 || floor[4] == 0x02 || floor[4] == 0x04 || floor[4] == 0x08 ||
;handle_floor.c: 122: floor[4] == 0x10 || floor[4] == 0x20 || floor[4] == 0x40 || floor[4] == 0x80)
;handle_floor.c: 123: && floor[5] == 0x00 && floor[6] == 0x00 && floor[7] == 0x00)
	movf	(deal_floor@floor),f
	skipz
	goto	u10061
	goto	u10060
u10061:
	goto	l8662
u10060:
	
l8612:	
	movf	0+(deal_floor@floor)+01h,f
	skipz
	goto	u10071
	goto	u10070
u10071:
	goto	l8662
u10070:
	
l8614:	
	movf	0+(deal_floor@floor)+02h,f
	skipz
	goto	u10081
	goto	u10080
u10081:
	goto	l8662
u10080:
	
l8616:	
	movf	0+(deal_floor@floor)+03h,f
	skipz
	goto	u10091
	goto	u10090
u10091:
	goto	l8662
u10090:
	
l8618:	
	decf	0+(deal_floor@floor)+04h,w
	skipnz
	goto	u10101
	goto	u10100
u10101:
	goto	l8634
u10100:
	
l8620:	
	movf	0+(deal_floor@floor)+04h,w
	xorlw	02h&0ffh
	skipnz
	goto	u10111
	goto	u10110
u10111:
	goto	l8634
u10110:
	
l8622:	
	movf	0+(deal_floor@floor)+04h,w
	xorlw	04h&0ffh
	skipnz
	goto	u10121
	goto	u10120
u10121:
	goto	l8634
u10120:
	
l8624:	
	movf	0+(deal_floor@floor)+04h,w
	xorlw	08h&0ffh
	skipnz
	goto	u10131
	goto	u10130
u10131:
	goto	l8634
u10130:
	
l8626:	
	movf	0+(deal_floor@floor)+04h,w
	xorlw	010h&0ffh
	skipnz
	goto	u10141
	goto	u10140
u10141:
	goto	l8634
u10140:
	
l8628:	
	movf	0+(deal_floor@floor)+04h,w
	xorlw	020h&0ffh
	skipnz
	goto	u10151
	goto	u10150
u10151:
	goto	l8634
u10150:
	
l8630:	
	movf	0+(deal_floor@floor)+04h,w
	xorlw	040h&0ffh
	skipnz
	goto	u10161
	goto	u10160
u10161:
	goto	l8634
u10160:
	
l8632:	
	movf	0+(deal_floor@floor)+04h,w
	xorlw	080h&0ffh
	skipz
	goto	u10171
	goto	u10170
u10171:
	goto	l8662
u10170:
	
l8634:	
	movf	0+(deal_floor@floor)+05h,f
	skipz
	goto	u10181
	goto	u10180
u10181:
	goto	l8662
u10180:
	
l8636:	
	movf	0+(deal_floor@floor)+06h,f
	skipz
	goto	u10191
	goto	u10190
u10191:
	goto	l8662
u10190:
	
l8638:	
	movf	0+(deal_floor@floor)+07h,f
	skipz
	goto	u10201
	goto	u10200
u10201:
	goto	l8662
u10200:
	goto	l8660
	line	127
	
l8642:	
	movlw	(081h)
	fcall	_uart1_send_byte
	goto	l289
	line	128
	
l8644:	
	movlw	(082h)
	fcall	_uart1_send_byte
	goto	l289
	line	129
	
l8646:	
	movlw	(084h)
	fcall	_uart1_send_byte
	goto	l289
	line	130
	
l8648:	
	movlw	(088h)
	fcall	_uart1_send_byte
	goto	l289
	line	131
	
l8650:	
	movlw	(091h)
	fcall	_uart1_send_byte
	goto	l289
	line	132
	
l8652:	
	movlw	(092h)
	fcall	_uart1_send_byte
	goto	l289
	line	133
	
l8654:	
	movlw	(094h)
	fcall	_uart1_send_byte
	goto	l289
	line	134
	
l8656:	
	movlw	(098h)
	fcall	_uart1_send_byte
	goto	l289
	line	125
	
l8660:	
	movf	0+(deal_floor@floor)+04h,w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte          265     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l8642
	xorlw	2^1	; case 2
	skipnz
	goto	l8644
	xorlw	4^2	; case 4
	skipnz
	goto	l8646
	xorlw	8^4	; case 8
	skipnz
	goto	l8648
	xorlw	16^8	; case 16
	skipnz
	goto	l8650
	xorlw	32^16	; case 32
	skipnz
	goto	l8652
	xorlw	64^32	; case 64
	skipnz
	goto	l8654
	xorlw	128^64	; case 128
	skipnz
	goto	l8656
	goto	l289
	opt asmopt_on

	line	141
	
l8662:	
;handle_floor.c: 138: else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 &&
;handle_floor.c: 139: (floor[5] == 0x01 || floor[5] == 0x02 || floor[5] == 0x04 || floor[5] == 0x08 ||
;handle_floor.c: 140: floor[5] == 0x10 || floor[5] == 0x20 || floor[5] == 0x40 || floor[5] == 0x80) &&
;handle_floor.c: 141: floor[6] == 0x00 && floor[7] == 0x00)
	movf	(deal_floor@floor),f
	skipz
	goto	u10211
	goto	u10210
u10211:
	goto	l8714
u10210:
	
l8664:	
	movf	0+(deal_floor@floor)+01h,f
	skipz
	goto	u10221
	goto	u10220
u10221:
	goto	l8714
u10220:
	
l8666:	
	movf	0+(deal_floor@floor)+02h,f
	skipz
	goto	u10231
	goto	u10230
u10231:
	goto	l8714
u10230:
	
l8668:	
	movf	0+(deal_floor@floor)+03h,f
	skipz
	goto	u10241
	goto	u10240
u10241:
	goto	l8714
u10240:
	
l8670:	
	movf	0+(deal_floor@floor)+04h,f
	skipz
	goto	u10251
	goto	u10250
u10251:
	goto	l8714
u10250:
	
l8672:	
	decf	0+(deal_floor@floor)+05h,w
	skipnz
	goto	u10261
	goto	u10260
u10261:
	goto	l8688
u10260:
	
l8674:	
	movf	0+(deal_floor@floor)+05h,w
	xorlw	02h&0ffh
	skipnz
	goto	u10271
	goto	u10270
u10271:
	goto	l8688
u10270:
	
l8676:	
	movf	0+(deal_floor@floor)+05h,w
	xorlw	04h&0ffh
	skipnz
	goto	u10281
	goto	u10280
u10281:
	goto	l8688
u10280:
	
l8678:	
	movf	0+(deal_floor@floor)+05h,w
	xorlw	08h&0ffh
	skipnz
	goto	u10291
	goto	u10290
u10291:
	goto	l8688
u10290:
	
l8680:	
	movf	0+(deal_floor@floor)+05h,w
	xorlw	010h&0ffh
	skipnz
	goto	u10301
	goto	u10300
u10301:
	goto	l8688
u10300:
	
l8682:	
	movf	0+(deal_floor@floor)+05h,w
	xorlw	020h&0ffh
	skipnz
	goto	u10311
	goto	u10310
u10311:
	goto	l8688
u10310:
	
l8684:	
	movf	0+(deal_floor@floor)+05h,w
	xorlw	040h&0ffh
	skipnz
	goto	u10321
	goto	u10320
u10321:
	goto	l8688
u10320:
	
l8686:	
	movf	0+(deal_floor@floor)+05h,w
	xorlw	080h&0ffh
	skipz
	goto	u10331
	goto	u10330
u10331:
	goto	l8714
u10330:
	
l8688:	
	movf	0+(deal_floor@floor)+06h,f
	skipz
	goto	u10341
	goto	u10340
u10341:
	goto	l8714
u10340:
	
l8690:	
	movf	0+(deal_floor@floor)+07h,f
	skipz
	goto	u10351
	goto	u10350
u10351:
	goto	l8714
u10350:
	goto	l8712
	line	145
	
l8694:	
	movlw	(0A1h)
	fcall	_uart1_send_byte
	goto	l289
	line	146
	
l8696:	
	movlw	(0A2h)
	fcall	_uart1_send_byte
	goto	l289
	line	147
	
l8698:	
	movlw	(0A4h)
	fcall	_uart1_send_byte
	goto	l289
	line	148
	
l8700:	
	movlw	(0A8h)
	fcall	_uart1_send_byte
	goto	l289
	line	149
	
l8702:	
	movlw	(0B1h)
	fcall	_uart1_send_byte
	goto	l289
	line	150
	
l8704:	
	movlw	(0B2h)
	fcall	_uart1_send_byte
	goto	l289
	line	151
	
l8706:	
	movlw	(0B4h)
	fcall	_uart1_send_byte
	goto	l289
	line	152
	
l8708:	
	movlw	(0B8h)
	fcall	_uart1_send_byte
	goto	l289
	line	143
	
l8712:	
	movf	0+(deal_floor@floor)+05h,w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte          265     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l8694
	xorlw	2^1	; case 2
	skipnz
	goto	l8696
	xorlw	4^2	; case 4
	skipnz
	goto	l8698
	xorlw	8^4	; case 8
	skipnz
	goto	l8700
	xorlw	16^8	; case 16
	skipnz
	goto	l8702
	xorlw	32^16	; case 32
	skipnz
	goto	l8704
	xorlw	64^32	; case 64
	skipnz
	goto	l8706
	xorlw	128^64	; case 128
	skipnz
	goto	l8708
	goto	l289
	opt asmopt_on

	line	159
	
l8714:	
;handle_floor.c: 156: else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && floor[5] == 0x00 &&
;handle_floor.c: 157: (floor[6] == 0x01 || floor[6] == 0x02 || floor[6] == 0x04 || floor[6] == 0x08 ||
;handle_floor.c: 158: floor[6] == 0x10 || floor[6] == 0x20 || floor[6] == 0x40 || floor[6] == 0x80) &&
;handle_floor.c: 159: floor[7] == 0x00)
	movf	(deal_floor@floor),f
	skipz
	goto	u10361
	goto	u10360
u10361:
	goto	l8766
u10360:
	
l8716:	
	movf	0+(deal_floor@floor)+01h,f
	skipz
	goto	u10371
	goto	u10370
u10371:
	goto	l8766
u10370:
	
l8718:	
	movf	0+(deal_floor@floor)+02h,f
	skipz
	goto	u10381
	goto	u10380
u10381:
	goto	l8766
u10380:
	
l8720:	
	movf	0+(deal_floor@floor)+03h,f
	skipz
	goto	u10391
	goto	u10390
u10391:
	goto	l8766
u10390:
	
l8722:	
	movf	0+(deal_floor@floor)+04h,f
	skipz
	goto	u10401
	goto	u10400
u10401:
	goto	l8766
u10400:
	
l8724:	
	movf	0+(deal_floor@floor)+05h,f
	skipz
	goto	u10411
	goto	u10410
u10411:
	goto	l8766
u10410:
	
l8726:	
	decf	0+(deal_floor@floor)+06h,w
	skipnz
	goto	u10421
	goto	u10420
u10421:
	goto	l8742
u10420:
	
l8728:	
	movf	0+(deal_floor@floor)+06h,w
	xorlw	02h&0ffh
	skipnz
	goto	u10431
	goto	u10430
u10431:
	goto	l8742
u10430:
	
l8730:	
	movf	0+(deal_floor@floor)+06h,w
	xorlw	04h&0ffh
	skipnz
	goto	u10441
	goto	u10440
u10441:
	goto	l8742
u10440:
	
l8732:	
	movf	0+(deal_floor@floor)+06h,w
	xorlw	08h&0ffh
	skipnz
	goto	u10451
	goto	u10450
u10451:
	goto	l8742
u10450:
	
l8734:	
	movf	0+(deal_floor@floor)+06h,w
	xorlw	010h&0ffh
	skipnz
	goto	u10461
	goto	u10460
u10461:
	goto	l8742
u10460:
	
l8736:	
	movf	0+(deal_floor@floor)+06h,w
	xorlw	020h&0ffh
	skipnz
	goto	u10471
	goto	u10470
u10471:
	goto	l8742
u10470:
	
l8738:	
	movf	0+(deal_floor@floor)+06h,w
	xorlw	040h&0ffh
	skipnz
	goto	u10481
	goto	u10480
u10481:
	goto	l8742
u10480:
	
l8740:	
	movf	0+(deal_floor@floor)+06h,w
	xorlw	080h&0ffh
	skipz
	goto	u10491
	goto	u10490
u10491:
	goto	l8766
u10490:
	
l8742:	
	movf	0+(deal_floor@floor)+07h,f
	skipz
	goto	u10501
	goto	u10500
u10501:
	goto	l8766
u10500:
	goto	l8764
	line	163
	
l8746:	
	movlw	(0C1h)
	fcall	_uart1_send_byte
	goto	l289
	line	164
	
l8748:	
	movlw	(0C2h)
	fcall	_uart1_send_byte
	goto	l289
	line	165
	
l8750:	
	movlw	(0C4h)
	fcall	_uart1_send_byte
	goto	l289
	line	166
	
l8752:	
	movlw	(0C8h)
	fcall	_uart1_send_byte
	goto	l289
	line	167
	
l8754:	
	movlw	(0D1h)
	fcall	_uart1_send_byte
	goto	l289
	line	168
	
l8756:	
	movlw	(0D2h)
	fcall	_uart1_send_byte
	goto	l289
	line	169
	
l8758:	
	movlw	(0D4h)
	fcall	_uart1_send_byte
	goto	l289
	line	170
	
l8760:	
	movlw	(0D8h)
	fcall	_uart1_send_byte
	goto	l289
	line	161
	
l8764:	
	movf	0+(deal_floor@floor)+06h,w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte          265     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l8746
	xorlw	2^1	; case 2
	skipnz
	goto	l8748
	xorlw	4^2	; case 4
	skipnz
	goto	l8750
	xorlw	8^4	; case 8
	skipnz
	goto	l8752
	xorlw	16^8	; case 16
	skipnz
	goto	l8754
	xorlw	32^16	; case 32
	skipnz
	goto	l8756
	xorlw	64^32	; case 64
	skipnz
	goto	l8758
	xorlw	128^64	; case 128
	skipnz
	goto	l8760
	goto	l289
	opt asmopt_on

	line	176
	
l8766:	
;handle_floor.c: 174: else if (floor[0] == 0x00 && floor[1] == 0x00 && floor[2] == 0x00 && floor[3] == 0x00 && floor[4] == 0x00 && floor[5] == 0x00 && floor[6] == 0x00 &&
;handle_floor.c: 175: (floor[7] == 0x01 || floor[7] == 0x02 || floor[7] == 0x04 || floor[7] == 0x08 ||
;handle_floor.c: 176: floor[7] == 0x10 || floor[7] == 0x20 || floor[7] == 0x40 || floor[7] == 0x80))
	movf	(deal_floor@floor),f
	skipz
	goto	u10511
	goto	u10510
u10511:
	goto	l210
u10510:
	
l8768:	
	movf	0+(deal_floor@floor)+01h,f
	skipz
	goto	u10521
	goto	u10520
u10521:
	goto	l210
u10520:
	
l8770:	
	movf	0+(deal_floor@floor)+02h,f
	skipz
	goto	u10531
	goto	u10530
u10531:
	goto	l210
u10530:
	
l8772:	
	movf	0+(deal_floor@floor)+03h,f
	skipz
	goto	u10541
	goto	u10540
u10541:
	goto	l210
u10540:
	
l8774:	
	movf	0+(deal_floor@floor)+04h,f
	skipz
	goto	u10551
	goto	u10550
u10551:
	goto	l210
u10550:
	
l8776:	
	movf	0+(deal_floor@floor)+05h,f
	skipz
	goto	u10561
	goto	u10560
u10561:
	goto	l210
u10560:
	
l8778:	
	movf	0+(deal_floor@floor)+06h,f
	skipz
	goto	u10571
	goto	u10570
u10571:
	goto	l210
u10570:
	
l8780:	
	decf	0+(deal_floor@floor)+07h,w
	skipnz
	goto	u10581
	goto	u10580
u10581:
	goto	l8814
u10580:
	
l8782:	
	movf	0+(deal_floor@floor)+07h,w
	xorlw	02h&0ffh
	skipnz
	goto	u10591
	goto	u10590
u10591:
	goto	l8814
u10590:
	
l8784:	
	movf	0+(deal_floor@floor)+07h,w
	xorlw	04h&0ffh
	skipnz
	goto	u10601
	goto	u10600
u10601:
	goto	l8814
u10600:
	
l8786:	
	movf	0+(deal_floor@floor)+07h,w
	xorlw	08h&0ffh
	skipnz
	goto	u10611
	goto	u10610
u10611:
	goto	l8814
u10610:
	
l8788:	
	movf	0+(deal_floor@floor)+07h,w
	xorlw	010h&0ffh
	skipnz
	goto	u10621
	goto	u10620
u10621:
	goto	l8814
u10620:
	
l8790:	
	movf	0+(deal_floor@floor)+07h,w
	xorlw	020h&0ffh
	skipnz
	goto	u10631
	goto	u10630
u10631:
	goto	l8814
u10630:
	
l8792:	
	movf	0+(deal_floor@floor)+07h,w
	xorlw	040h&0ffh
	skipnz
	goto	u10641
	goto	u10640
u10641:
	goto	l8814
u10640:
	
l8794:	
	movf	0+(deal_floor@floor)+07h,w
	xorlw	080h&0ffh
	skipz
	goto	u10651
	goto	u10650
u10651:
	goto	l210
u10650:
	goto	l8814
	line	180
	
l8796:	
	movlw	(0E1h)
	fcall	_uart1_send_byte
	goto	l289
	line	181
	
l8798:	
	movlw	(0E2h)
	fcall	_uart1_send_byte
	goto	l289
	line	182
	
l8800:	
	movlw	(0E4h)
	fcall	_uart1_send_byte
	goto	l289
	line	183
	
l8802:	
	movlw	(0E8h)
	fcall	_uart1_send_byte
	goto	l289
	line	184
	
l8804:	
	movlw	(0F1h)
	fcall	_uart1_send_byte
	goto	l289
	line	185
	
l8806:	
	movlw	(0F2h)
	fcall	_uart1_send_byte
	goto	l289
	line	186
	
l8808:	
	movlw	(0F4h)
	fcall	_uart1_send_byte
	goto	l289
	line	187
	
l8810:	
	movlw	(0F8h)
	fcall	_uart1_send_byte
	goto	l289
	line	178
	
l8814:	
	movf	0+(deal_floor@floor)+07h,w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte          265     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l8796
	xorlw	2^1	; case 2
	skipnz
	goto	l8798
	xorlw	4^2	; case 4
	skipnz
	goto	l8800
	xorlw	8^4	; case 8
	skipnz
	goto	l8802
	xorlw	16^8	; case 16
	skipnz
	goto	l8804
	xorlw	32^16	; case 32
	skipnz
	goto	l8806
	xorlw	64^32	; case 64
	skipnz
	goto	l8808
	xorlw	128^64	; case 128
	skipnz
	goto	l8810
	goto	l289
	opt asmopt_on

	line	191
	
l210:	
	line	193
;handle_floor.c: 191: else
;handle_floor.c: 192: {
;handle_floor.c: 193: if (floor[0] & 0x01)
	btfss	(deal_floor@floor),(0)&7
	goto	u10661
	goto	u10660
u10661:
	goto	l8818
u10660:
	line	195
	
l8816:	
;handle_floor.c: 194: {
;handle_floor.c: 195: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	196
;handle_floor.c: 196: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	197
;handle_floor.c: 197: uart1_send_byte(0x01);
	movlw	(01h)
	fcall	_uart1_send_byte
	line	198
;handle_floor.c: 198: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	200
	
l8818:	
;handle_floor.c: 199: }
;handle_floor.c: 200: if (floor[0] & 0x02)
	movlb 0	; select bank0
	btfss	(deal_floor@floor),(1)&7
	goto	u10671
	goto	u10670
u10671:
	goto	l8822
u10670:
	line	202
	
l8820:	
;handle_floor.c: 201: {
;handle_floor.c: 202: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	203
;handle_floor.c: 203: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	204
;handle_floor.c: 204: uart1_send_byte(0x02);
	movlw	(02h)
	fcall	_uart1_send_byte
	line	205
;handle_floor.c: 205: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	207
	
l8822:	
;handle_floor.c: 206: }
;handle_floor.c: 207: if (floor[0] & 0x04)
	movlb 0	; select bank0
	btfss	(deal_floor@floor),(2)&7
	goto	u10681
	goto	u10680
u10681:
	goto	l8826
u10680:
	line	209
	
l8824:	
;handle_floor.c: 208: {
;handle_floor.c: 209: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	210
;handle_floor.c: 210: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	211
;handle_floor.c: 211: uart1_send_byte(0x04);
	movlw	(04h)
	fcall	_uart1_send_byte
	line	212
;handle_floor.c: 212: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	214
	
l8826:	
;handle_floor.c: 213: }
;handle_floor.c: 214: if (floor[0] & 0x08)
	movlb 0	; select bank0
	btfss	(deal_floor@floor),(3)&7
	goto	u10691
	goto	u10690
u10691:
	goto	l8830
u10690:
	line	216
	
l8828:	
;handle_floor.c: 215: {
;handle_floor.c: 216: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	217
;handle_floor.c: 217: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	218
;handle_floor.c: 218: uart1_send_byte(0x08);
	movlw	(08h)
	fcall	_uart1_send_byte
	line	219
;handle_floor.c: 219: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	221
	
l8830:	
;handle_floor.c: 220: }
;handle_floor.c: 221: if (floor[0] & 0x10)
	movlb 0	; select bank0
	btfss	(deal_floor@floor),(4)&7
	goto	u10701
	goto	u10700
u10701:
	goto	l8834
u10700:
	line	223
	
l8832:	
;handle_floor.c: 222: {
;handle_floor.c: 223: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	224
;handle_floor.c: 224: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	225
;handle_floor.c: 225: uart1_send_byte(0x11);
	movlw	(011h)
	fcall	_uart1_send_byte
	line	226
;handle_floor.c: 226: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	228
	
l8834:	
;handle_floor.c: 227: }
;handle_floor.c: 228: if (floor[0] & 0x20)
	movlb 0	; select bank0
	btfss	(deal_floor@floor),(5)&7
	goto	u10711
	goto	u10710
u10711:
	goto	l8838
u10710:
	line	230
	
l8836:	
;handle_floor.c: 229: {
;handle_floor.c: 230: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	231
;handle_floor.c: 231: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	232
;handle_floor.c: 232: uart1_send_byte(0x12);
	movlw	(012h)
	fcall	_uart1_send_byte
	line	233
;handle_floor.c: 233: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	235
	
l8838:	
;handle_floor.c: 234: }
;handle_floor.c: 235: if (floor[0] & 0x40)
	movlb 0	; select bank0
	btfss	(deal_floor@floor),(6)&7
	goto	u10721
	goto	u10720
u10721:
	goto	l8842
u10720:
	line	237
	
l8840:	
;handle_floor.c: 236: {
;handle_floor.c: 237: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	238
;handle_floor.c: 238: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	239
;handle_floor.c: 239: uart1_send_byte(0x14);
	movlw	(014h)
	fcall	_uart1_send_byte
	line	240
;handle_floor.c: 240: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	242
	
l8842:	
;handle_floor.c: 241: }
;handle_floor.c: 242: if (floor[0] & 0x80)
	movlb 0	; select bank0
	btfss	(deal_floor@floor),(7)&7
	goto	u10731
	goto	u10730
u10731:
	goto	l8846
u10730:
	line	244
	
l8844:	
;handle_floor.c: 243: {
;handle_floor.c: 244: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	245
;handle_floor.c: 245: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	246
;handle_floor.c: 246: uart1_send_byte(0x18);
	movlw	(018h)
	fcall	_uart1_send_byte
	line	247
;handle_floor.c: 247: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	250
	
l8846:	
;handle_floor.c: 248: }
;handle_floor.c: 250: if (floor[1] & 0x01)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+01h,(0)&7
	goto	u10741
	goto	u10740
u10741:
	goto	l8850
u10740:
	line	252
	
l8848:	
;handle_floor.c: 251: {
;handle_floor.c: 252: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	253
;handle_floor.c: 253: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	254
;handle_floor.c: 254: uart1_send_byte(0x21);
	movlw	(021h)
	fcall	_uart1_send_byte
	line	255
;handle_floor.c: 255: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	257
	
l8850:	
;handle_floor.c: 256: }
;handle_floor.c: 257: if (floor[1] & 0x02)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+01h,(1)&7
	goto	u10751
	goto	u10750
u10751:
	goto	l8854
u10750:
	line	259
	
l8852:	
;handle_floor.c: 258: {
;handle_floor.c: 259: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	260
;handle_floor.c: 260: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	261
;handle_floor.c: 261: uart1_send_byte(0x22);
	movlw	(022h)
	fcall	_uart1_send_byte
	line	262
;handle_floor.c: 262: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	264
	
l8854:	
;handle_floor.c: 263: }
;handle_floor.c: 264: if (floor[1] & 0x04)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+01h,(2)&7
	goto	u10761
	goto	u10760
u10761:
	goto	l8858
u10760:
	line	266
	
l8856:	
;handle_floor.c: 265: {
;handle_floor.c: 266: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	267
;handle_floor.c: 267: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	268
;handle_floor.c: 268: uart1_send_byte(0x24);
	movlw	(024h)
	fcall	_uart1_send_byte
	line	269
;handle_floor.c: 269: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	271
	
l8858:	
;handle_floor.c: 270: }
;handle_floor.c: 271: if (floor[1] & 0x08)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+01h,(3)&7
	goto	u10771
	goto	u10770
u10771:
	goto	l8862
u10770:
	line	273
	
l8860:	
;handle_floor.c: 272: {
;handle_floor.c: 273: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	274
;handle_floor.c: 274: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	275
;handle_floor.c: 275: uart1_send_byte(0x28);
	movlw	(028h)
	fcall	_uart1_send_byte
	line	276
;handle_floor.c: 276: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	278
	
l8862:	
;handle_floor.c: 277: }
;handle_floor.c: 278: if (floor[1] & 0x10)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+01h,(4)&7
	goto	u10781
	goto	u10780
u10781:
	goto	l8866
u10780:
	line	280
	
l8864:	
;handle_floor.c: 279: {
;handle_floor.c: 280: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	281
;handle_floor.c: 281: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	282
;handle_floor.c: 282: uart1_send_byte(0x31);
	movlw	(031h)
	fcall	_uart1_send_byte
	line	283
;handle_floor.c: 283: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	285
	
l8866:	
;handle_floor.c: 284: }
;handle_floor.c: 285: if (floor[1] & 0x20)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+01h,(5)&7
	goto	u10791
	goto	u10790
u10791:
	goto	l8870
u10790:
	line	287
	
l8868:	
;handle_floor.c: 286: {
;handle_floor.c: 287: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	288
;handle_floor.c: 288: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	289
;handle_floor.c: 289: uart1_send_byte(0x32);
	movlw	(032h)
	fcall	_uart1_send_byte
	line	290
;handle_floor.c: 290: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	292
	
l8870:	
;handle_floor.c: 291: }
;handle_floor.c: 292: if (floor[1] & 0x40)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+01h,(6)&7
	goto	u10801
	goto	u10800
u10801:
	goto	l8874
u10800:
	line	294
	
l8872:	
;handle_floor.c: 293: {
;handle_floor.c: 294: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	295
;handle_floor.c: 295: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	296
;handle_floor.c: 296: uart1_send_byte(0x34);
	movlw	(034h)
	fcall	_uart1_send_byte
	line	297
;handle_floor.c: 297: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	299
	
l8874:	
;handle_floor.c: 298: }
;handle_floor.c: 299: if (floor[1] & 0x80)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+01h,(7)&7
	goto	u10811
	goto	u10810
u10811:
	goto	l8878
u10810:
	line	301
	
l8876:	
;handle_floor.c: 300: {
;handle_floor.c: 301: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	302
;handle_floor.c: 302: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	303
;handle_floor.c: 303: uart1_send_byte(0x38);
	movlw	(038h)
	fcall	_uart1_send_byte
	line	304
;handle_floor.c: 304: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	307
	
l8878:	
;handle_floor.c: 305: }
;handle_floor.c: 307: if (floor[2] & 0x01)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+02h,(0)&7
	goto	u10821
	goto	u10820
u10821:
	goto	l8882
u10820:
	line	309
	
l8880:	
;handle_floor.c: 308: {
;handle_floor.c: 309: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	310
;handle_floor.c: 310: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	311
;handle_floor.c: 311: uart1_send_byte(0x41);
	movlw	(041h)
	fcall	_uart1_send_byte
	line	312
;handle_floor.c: 312: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	314
	
l8882:	
;handle_floor.c: 313: }
;handle_floor.c: 314: if (floor[2] & 0x02)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+02h,(1)&7
	goto	u10831
	goto	u10830
u10831:
	goto	l8886
u10830:
	line	316
	
l8884:	
;handle_floor.c: 315: {
;handle_floor.c: 316: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	317
;handle_floor.c: 317: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	318
;handle_floor.c: 318: uart1_send_byte(0x42);
	movlw	(042h)
	fcall	_uart1_send_byte
	line	319
;handle_floor.c: 319: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	321
	
l8886:	
;handle_floor.c: 320: }
;handle_floor.c: 321: if (floor[2] & 0x04)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+02h,(2)&7
	goto	u10841
	goto	u10840
u10841:
	goto	l8890
u10840:
	line	323
	
l8888:	
;handle_floor.c: 322: {
;handle_floor.c: 323: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	324
;handle_floor.c: 324: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	325
;handle_floor.c: 325: uart1_send_byte(0x44);
	movlw	(044h)
	fcall	_uart1_send_byte
	line	326
;handle_floor.c: 326: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	328
	
l8890:	
;handle_floor.c: 327: }
;handle_floor.c: 328: if (floor[2] & 0x08)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+02h,(3)&7
	goto	u10851
	goto	u10850
u10851:
	goto	l8894
u10850:
	line	330
	
l8892:	
;handle_floor.c: 329: {
;handle_floor.c: 330: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	331
;handle_floor.c: 331: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	332
;handle_floor.c: 332: uart1_send_byte(0x48);
	movlw	(048h)
	fcall	_uart1_send_byte
	line	333
;handle_floor.c: 333: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	335
	
l8894:	
;handle_floor.c: 334: }
;handle_floor.c: 335: if (floor[2] & 0x10)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+02h,(4)&7
	goto	u10861
	goto	u10860
u10861:
	goto	l8898
u10860:
	line	337
	
l8896:	
;handle_floor.c: 336: {
;handle_floor.c: 337: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	338
;handle_floor.c: 338: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	339
;handle_floor.c: 339: uart1_send_byte(0x51);
	movlw	(051h)
	fcall	_uart1_send_byte
	line	340
;handle_floor.c: 340: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	342
	
l8898:	
;handle_floor.c: 341: }
;handle_floor.c: 342: if (floor[2] & 0x20)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+02h,(5)&7
	goto	u10871
	goto	u10870
u10871:
	goto	l8902
u10870:
	line	344
	
l8900:	
;handle_floor.c: 343: {
;handle_floor.c: 344: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	345
;handle_floor.c: 345: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	346
;handle_floor.c: 346: uart1_send_byte(0x52);
	movlw	(052h)
	fcall	_uart1_send_byte
	line	347
;handle_floor.c: 347: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	349
	
l8902:	
;handle_floor.c: 348: }
;handle_floor.c: 349: if (floor[2] & 0x40)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+02h,(6)&7
	goto	u10881
	goto	u10880
u10881:
	goto	l8906
u10880:
	line	351
	
l8904:	
;handle_floor.c: 350: {
;handle_floor.c: 351: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	352
;handle_floor.c: 352: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	353
;handle_floor.c: 353: uart1_send_byte(0x54);
	movlw	(054h)
	fcall	_uart1_send_byte
	line	354
;handle_floor.c: 354: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	356
	
l8906:	
;handle_floor.c: 355: }
;handle_floor.c: 356: if (floor[2] & 0x80)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+02h,(7)&7
	goto	u10891
	goto	u10890
u10891:
	goto	l8910
u10890:
	line	358
	
l8908:	
;handle_floor.c: 357: {
;handle_floor.c: 358: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	359
;handle_floor.c: 359: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	360
;handle_floor.c: 360: uart1_send_byte(0x58);
	movlw	(058h)
	fcall	_uart1_send_byte
	line	361
;handle_floor.c: 361: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	364
	
l8910:	
;handle_floor.c: 362: }
;handle_floor.c: 364: if (floor[3] & 0x01)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+03h,(0)&7
	goto	u10901
	goto	u10900
u10901:
	goto	l8914
u10900:
	line	366
	
l8912:	
;handle_floor.c: 365: {
;handle_floor.c: 366: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	367
;handle_floor.c: 367: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	368
;handle_floor.c: 368: uart1_send_byte(0x61);
	movlw	(061h)
	fcall	_uart1_send_byte
	line	369
;handle_floor.c: 369: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	371
	
l8914:	
;handle_floor.c: 370: }
;handle_floor.c: 371: if (floor[3] & 0x02)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+03h,(1)&7
	goto	u10911
	goto	u10910
u10911:
	goto	l8918
u10910:
	line	373
	
l8916:	
;handle_floor.c: 372: {
;handle_floor.c: 373: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	374
;handle_floor.c: 374: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	375
;handle_floor.c: 375: uart1_send_byte(0x62);
	movlw	(062h)
	fcall	_uart1_send_byte
	line	376
;handle_floor.c: 376: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	378
	
l8918:	
;handle_floor.c: 377: }
;handle_floor.c: 378: if (floor[3] & 0x04)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+03h,(2)&7
	goto	u10921
	goto	u10920
u10921:
	goto	l8922
u10920:
	line	380
	
l8920:	
;handle_floor.c: 379: {
;handle_floor.c: 380: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	381
;handle_floor.c: 381: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	382
;handle_floor.c: 382: uart1_send_byte(0x64);
	movlw	(064h)
	fcall	_uart1_send_byte
	line	383
;handle_floor.c: 383: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	385
	
l8922:	
;handle_floor.c: 384: }
;handle_floor.c: 385: if (floor[3] & 0x08)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+03h,(3)&7
	goto	u10931
	goto	u10930
u10931:
	goto	l8926
u10930:
	line	387
	
l8924:	
;handle_floor.c: 386: {
;handle_floor.c: 387: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	388
;handle_floor.c: 388: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	389
;handle_floor.c: 389: uart1_send_byte(0x68);
	movlw	(068h)
	fcall	_uart1_send_byte
	line	390
;handle_floor.c: 390: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	392
	
l8926:	
;handle_floor.c: 391: }
;handle_floor.c: 392: if (floor[3] & 0x10)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+03h,(4)&7
	goto	u10941
	goto	u10940
u10941:
	goto	l8930
u10940:
	line	394
	
l8928:	
;handle_floor.c: 393: {
;handle_floor.c: 394: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	395
;handle_floor.c: 395: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	396
;handle_floor.c: 396: uart1_send_byte(0x71);
	movlw	(071h)
	fcall	_uart1_send_byte
	line	397
;handle_floor.c: 397: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	399
	
l8930:	
;handle_floor.c: 398: }
;handle_floor.c: 399: if (floor[3] & 0x20)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+03h,(5)&7
	goto	u10951
	goto	u10950
u10951:
	goto	l8934
u10950:
	line	401
	
l8932:	
;handle_floor.c: 400: {
;handle_floor.c: 401: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	402
;handle_floor.c: 402: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	403
;handle_floor.c: 403: uart1_send_byte(0x72);
	movlw	(072h)
	fcall	_uart1_send_byte
	line	404
;handle_floor.c: 404: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	406
	
l8934:	
;handle_floor.c: 405: }
;handle_floor.c: 406: if (floor[3] & 0x40)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+03h,(6)&7
	goto	u10961
	goto	u10960
u10961:
	goto	l8938
u10960:
	line	408
	
l8936:	
;handle_floor.c: 407: {
;handle_floor.c: 408: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	409
;handle_floor.c: 409: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	410
;handle_floor.c: 410: uart1_send_byte(0x74);
	movlw	(074h)
	fcall	_uart1_send_byte
	line	411
;handle_floor.c: 411: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	413
	
l8938:	
;handle_floor.c: 412: }
;handle_floor.c: 413: if (floor[3] & 0x80)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+03h,(7)&7
	goto	u10971
	goto	u10970
u10971:
	goto	l8942
u10970:
	line	415
	
l8940:	
;handle_floor.c: 414: {
;handle_floor.c: 415: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	416
;handle_floor.c: 416: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	417
;handle_floor.c: 417: uart1_send_byte(0x78);
	movlw	(078h)
	fcall	_uart1_send_byte
	line	418
;handle_floor.c: 418: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	421
	
l8942:	
;handle_floor.c: 419: }
;handle_floor.c: 421: if (floor[4] & 0x01)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+04h,(0)&7
	goto	u10981
	goto	u10980
u10981:
	goto	l8946
u10980:
	line	423
	
l8944:	
;handle_floor.c: 422: {
;handle_floor.c: 423: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	424
;handle_floor.c: 424: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	425
;handle_floor.c: 425: uart1_send_byte(0x81);
	movlw	(081h)
	fcall	_uart1_send_byte
	line	426
;handle_floor.c: 426: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	428
	
l8946:	
;handle_floor.c: 427: }
;handle_floor.c: 428: if (floor[4] & 0x02)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+04h,(1)&7
	goto	u10991
	goto	u10990
u10991:
	goto	l8950
u10990:
	line	430
	
l8948:	
;handle_floor.c: 429: {
;handle_floor.c: 430: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	431
;handle_floor.c: 431: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	432
;handle_floor.c: 432: uart1_send_byte(0x82);
	movlw	(082h)
	fcall	_uart1_send_byte
	line	433
;handle_floor.c: 433: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	435
	
l8950:	
;handle_floor.c: 434: }
;handle_floor.c: 435: if (floor[4] & 0x04)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+04h,(2)&7
	goto	u11001
	goto	u11000
u11001:
	goto	l8954
u11000:
	line	437
	
l8952:	
;handle_floor.c: 436: {
;handle_floor.c: 437: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	438
;handle_floor.c: 438: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	439
;handle_floor.c: 439: uart1_send_byte(0x84);
	movlw	(084h)
	fcall	_uart1_send_byte
	line	440
;handle_floor.c: 440: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	442
	
l8954:	
;handle_floor.c: 441: }
;handle_floor.c: 442: if (floor[4] & 0x08)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+04h,(3)&7
	goto	u11011
	goto	u11010
u11011:
	goto	l8958
u11010:
	line	444
	
l8956:	
;handle_floor.c: 443: {
;handle_floor.c: 444: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	445
;handle_floor.c: 445: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	446
;handle_floor.c: 446: uart1_send_byte(0x88);
	movlw	(088h)
	fcall	_uart1_send_byte
	line	447
;handle_floor.c: 447: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	449
	
l8958:	
;handle_floor.c: 448: }
;handle_floor.c: 449: if (floor[4] & 0x10)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+04h,(4)&7
	goto	u11021
	goto	u11020
u11021:
	goto	l8962
u11020:
	line	451
	
l8960:	
;handle_floor.c: 450: {
;handle_floor.c: 451: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	452
;handle_floor.c: 452: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	453
;handle_floor.c: 453: uart1_send_byte(0x91);
	movlw	(091h)
	fcall	_uart1_send_byte
	line	454
;handle_floor.c: 454: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	456
	
l8962:	
;handle_floor.c: 455: }
;handle_floor.c: 456: if (floor[4] & 0x20)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+04h,(5)&7
	goto	u11031
	goto	u11030
u11031:
	goto	l8966
u11030:
	line	458
	
l8964:	
;handle_floor.c: 457: {
;handle_floor.c: 458: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	459
;handle_floor.c: 459: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	460
;handle_floor.c: 460: uart1_send_byte(0x92);
	movlw	(092h)
	fcall	_uart1_send_byte
	line	461
;handle_floor.c: 461: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	463
	
l8966:	
;handle_floor.c: 462: }
;handle_floor.c: 463: if (floor[4] & 0x40)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+04h,(6)&7
	goto	u11041
	goto	u11040
u11041:
	goto	l8970
u11040:
	line	465
	
l8968:	
;handle_floor.c: 464: {
;handle_floor.c: 465: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	466
;handle_floor.c: 466: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	467
;handle_floor.c: 467: uart1_send_byte(0x94);
	movlw	(094h)
	fcall	_uart1_send_byte
	line	468
;handle_floor.c: 468: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	470
	
l8970:	
;handle_floor.c: 469: }
;handle_floor.c: 470: if (floor[4] & 0x80)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+04h,(7)&7
	goto	u11051
	goto	u11050
u11051:
	goto	l8974
u11050:
	line	472
	
l8972:	
;handle_floor.c: 471: {
;handle_floor.c: 472: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	473
;handle_floor.c: 473: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	474
;handle_floor.c: 474: uart1_send_byte(0x98);
	movlw	(098h)
	fcall	_uart1_send_byte
	line	475
;handle_floor.c: 475: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	478
	
l8974:	
;handle_floor.c: 476: }
;handle_floor.c: 478: if (floor[5] & 0x01)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+05h,(0)&7
	goto	u11061
	goto	u11060
u11061:
	goto	l8978
u11060:
	line	480
	
l8976:	
;handle_floor.c: 479: {
;handle_floor.c: 480: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	481
;handle_floor.c: 481: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	482
;handle_floor.c: 482: uart1_send_byte(0xA1);
	movlw	(0A1h)
	fcall	_uart1_send_byte
	line	483
;handle_floor.c: 483: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	485
	
l8978:	
;handle_floor.c: 484: }
;handle_floor.c: 485: if (floor[5] & 0x02)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+05h,(1)&7
	goto	u11071
	goto	u11070
u11071:
	goto	l8982
u11070:
	line	487
	
l8980:	
;handle_floor.c: 486: {
;handle_floor.c: 487: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	488
;handle_floor.c: 488: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	489
;handle_floor.c: 489: uart1_send_byte(0xA2);
	movlw	(0A2h)
	fcall	_uart1_send_byte
	line	490
;handle_floor.c: 490: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	492
	
l8982:	
;handle_floor.c: 491: }
;handle_floor.c: 492: if (floor[5] & 0x04)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+05h,(2)&7
	goto	u11081
	goto	u11080
u11081:
	goto	l8986
u11080:
	line	494
	
l8984:	
;handle_floor.c: 493: {
;handle_floor.c: 494: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	495
;handle_floor.c: 495: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	496
;handle_floor.c: 496: uart1_send_byte(0xA4);
	movlw	(0A4h)
	fcall	_uart1_send_byte
	line	497
;handle_floor.c: 497: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	499
	
l8986:	
;handle_floor.c: 498: }
;handle_floor.c: 499: if (floor[5] & 0x08)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+05h,(3)&7
	goto	u11091
	goto	u11090
u11091:
	goto	l8990
u11090:
	line	501
	
l8988:	
;handle_floor.c: 500: {
;handle_floor.c: 501: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	502
;handle_floor.c: 502: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	503
;handle_floor.c: 503: uart1_send_byte(0xA8);
	movlw	(0A8h)
	fcall	_uart1_send_byte
	line	504
;handle_floor.c: 504: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	506
	
l8990:	
;handle_floor.c: 505: }
;handle_floor.c: 506: if (floor[5] & 0x10)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+05h,(4)&7
	goto	u11101
	goto	u11100
u11101:
	goto	l8994
u11100:
	line	508
	
l8992:	
;handle_floor.c: 507: {
;handle_floor.c: 508: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	509
;handle_floor.c: 509: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	510
;handle_floor.c: 510: uart1_send_byte(0xB1);
	movlw	(0B1h)
	fcall	_uart1_send_byte
	line	511
;handle_floor.c: 511: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	513
	
l8994:	
;handle_floor.c: 512: }
;handle_floor.c: 513: if (floor[5] & 0x20)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+05h,(5)&7
	goto	u11111
	goto	u11110
u11111:
	goto	l8998
u11110:
	line	515
	
l8996:	
;handle_floor.c: 514: {
;handle_floor.c: 515: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	516
;handle_floor.c: 516: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	517
;handle_floor.c: 517: uart1_send_byte(0xB2);
	movlw	(0B2h)
	fcall	_uart1_send_byte
	line	518
;handle_floor.c: 518: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	520
	
l8998:	
;handle_floor.c: 519: }
;handle_floor.c: 520: if (floor[5] & 0x40)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+05h,(6)&7
	goto	u11121
	goto	u11120
u11121:
	goto	l9002
u11120:
	line	522
	
l9000:	
;handle_floor.c: 521: {
;handle_floor.c: 522: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	523
;handle_floor.c: 523: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	524
;handle_floor.c: 524: uart1_send_byte(0xB4);
	movlw	(0B4h)
	fcall	_uart1_send_byte
	line	525
;handle_floor.c: 525: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	527
	
l9002:	
;handle_floor.c: 526: }
;handle_floor.c: 527: if (floor[5] & 0x80)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+05h,(7)&7
	goto	u11131
	goto	u11130
u11131:
	goto	l9006
u11130:
	line	529
	
l9004:	
;handle_floor.c: 528: {
;handle_floor.c: 529: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	530
;handle_floor.c: 530: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	531
;handle_floor.c: 531: uart1_send_byte(0xB8);
	movlw	(0B8h)
	fcall	_uart1_send_byte
	line	532
;handle_floor.c: 532: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	535
	
l9006:	
;handle_floor.c: 533: }
;handle_floor.c: 535: if (floor[6] & 0x01)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+06h,(0)&7
	goto	u11141
	goto	u11140
u11141:
	goto	l9010
u11140:
	line	537
	
l9008:	
;handle_floor.c: 536: {
;handle_floor.c: 537: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	538
;handle_floor.c: 538: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	539
;handle_floor.c: 539: uart1_send_byte(0xC1);
	movlw	(0C1h)
	fcall	_uart1_send_byte
	line	540
;handle_floor.c: 540: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	542
	
l9010:	
;handle_floor.c: 541: }
;handle_floor.c: 542: if (floor[6] & 0x02)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+06h,(1)&7
	goto	u11151
	goto	u11150
u11151:
	goto	l9014
u11150:
	line	544
	
l9012:	
;handle_floor.c: 543: {
;handle_floor.c: 544: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	545
;handle_floor.c: 545: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	546
;handle_floor.c: 546: uart1_send_byte(0xC2);
	movlw	(0C2h)
	fcall	_uart1_send_byte
	line	547
;handle_floor.c: 547: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	549
	
l9014:	
;handle_floor.c: 548: }
;handle_floor.c: 549: if (floor[6] & 0x04)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+06h,(2)&7
	goto	u11161
	goto	u11160
u11161:
	goto	l9018
u11160:
	line	551
	
l9016:	
;handle_floor.c: 550: {
;handle_floor.c: 551: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	552
;handle_floor.c: 552: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	553
;handle_floor.c: 553: uart1_send_byte(0xC4);
	movlw	(0C4h)
	fcall	_uart1_send_byte
	line	554
;handle_floor.c: 554: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	556
	
l9018:	
;handle_floor.c: 555: }
;handle_floor.c: 556: if (floor[6] & 0x08)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+06h,(3)&7
	goto	u11171
	goto	u11170
u11171:
	goto	l9022
u11170:
	line	558
	
l9020:	
;handle_floor.c: 557: {
;handle_floor.c: 558: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	559
;handle_floor.c: 559: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	560
;handle_floor.c: 560: uart1_send_byte(0xC8);
	movlw	(0C8h)
	fcall	_uart1_send_byte
	line	561
;handle_floor.c: 561: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	563
	
l9022:	
;handle_floor.c: 562: }
;handle_floor.c: 563: if (floor[6] & 0x10)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+06h,(4)&7
	goto	u11181
	goto	u11180
u11181:
	goto	l9026
u11180:
	line	565
	
l9024:	
;handle_floor.c: 564: {
;handle_floor.c: 565: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	566
;handle_floor.c: 566: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	567
;handle_floor.c: 567: uart1_send_byte(0xD1);
	movlw	(0D1h)
	fcall	_uart1_send_byte
	line	568
;handle_floor.c: 568: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	570
	
l9026:	
;handle_floor.c: 569: }
;handle_floor.c: 570: if (floor[6] & 0x20)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+06h,(5)&7
	goto	u11191
	goto	u11190
u11191:
	goto	l9030
u11190:
	line	572
	
l9028:	
;handle_floor.c: 571: {
;handle_floor.c: 572: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	573
;handle_floor.c: 573: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	574
;handle_floor.c: 574: uart1_send_byte(0xD2);
	movlw	(0D2h)
	fcall	_uart1_send_byte
	line	575
;handle_floor.c: 575: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	577
	
l9030:	
;handle_floor.c: 576: }
;handle_floor.c: 577: if (floor[6] & 0x40)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+06h,(6)&7
	goto	u11201
	goto	u11200
u11201:
	goto	l9034
u11200:
	line	579
	
l9032:	
;handle_floor.c: 578: {
;handle_floor.c: 579: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	580
;handle_floor.c: 580: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	581
;handle_floor.c: 581: uart1_send_byte(0xD4);
	movlw	(0D4h)
	fcall	_uart1_send_byte
	line	582
;handle_floor.c: 582: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	584
	
l9034:	
;handle_floor.c: 583: }
;handle_floor.c: 584: if (floor[6] & 0x80)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+06h,(7)&7
	goto	u11211
	goto	u11210
u11211:
	goto	l9038
u11210:
	line	586
	
l9036:	
;handle_floor.c: 585: {
;handle_floor.c: 586: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	587
;handle_floor.c: 587: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	588
;handle_floor.c: 588: uart1_send_byte(0xD8);
	movlw	(0D8h)
	fcall	_uart1_send_byte
	line	589
;handle_floor.c: 589: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	592
	
l9038:	
;handle_floor.c: 590: }
;handle_floor.c: 592: if (floor[7] & 0x01)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+07h,(0)&7
	goto	u11221
	goto	u11220
u11221:
	goto	l9042
u11220:
	line	594
	
l9040:	
;handle_floor.c: 593: {
;handle_floor.c: 594: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	595
;handle_floor.c: 595: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	596
;handle_floor.c: 596: uart1_send_byte(0xE1);
	movlw	(0E1h)
	fcall	_uart1_send_byte
	line	597
;handle_floor.c: 597: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	599
	
l9042:	
;handle_floor.c: 598: }
;handle_floor.c: 599: if (floor[7] & 0x02)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+07h,(1)&7
	goto	u11231
	goto	u11230
u11231:
	goto	l9046
u11230:
	line	601
	
l9044:	
;handle_floor.c: 600: {
;handle_floor.c: 601: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	602
;handle_floor.c: 602: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	603
;handle_floor.c: 603: uart1_send_byte(0xE2);
	movlw	(0E2h)
	fcall	_uart1_send_byte
	line	604
;handle_floor.c: 604: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	606
	
l9046:	
;handle_floor.c: 605: }
;handle_floor.c: 606: if (floor[7] & 0x04)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+07h,(2)&7
	goto	u11241
	goto	u11240
u11241:
	goto	l9050
u11240:
	line	608
	
l9048:	
;handle_floor.c: 607: {
;handle_floor.c: 608: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	609
;handle_floor.c: 609: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	610
;handle_floor.c: 610: uart1_send_byte(0xE4);
	movlw	(0E4h)
	fcall	_uart1_send_byte
	line	611
;handle_floor.c: 611: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	613
	
l9050:	
;handle_floor.c: 612: }
;handle_floor.c: 613: if (floor[7] & 0x08)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+07h,(3)&7
	goto	u11251
	goto	u11250
u11251:
	goto	l9054
u11250:
	line	615
	
l9052:	
;handle_floor.c: 614: {
;handle_floor.c: 615: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	616
;handle_floor.c: 616: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	617
;handle_floor.c: 617: uart1_send_byte(0xE8);
	movlw	(0E8h)
	fcall	_uart1_send_byte
	line	618
;handle_floor.c: 618: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	620
	
l9054:	
;handle_floor.c: 619: }
;handle_floor.c: 620: if (floor[7] & 0x10)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+07h,(4)&7
	goto	u11261
	goto	u11260
u11261:
	goto	l9058
u11260:
	line	622
	
l9056:	
;handle_floor.c: 621: {
;handle_floor.c: 622: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	623
;handle_floor.c: 623: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	624
;handle_floor.c: 624: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	625
;handle_floor.c: 625: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	627
	
l9058:	
;handle_floor.c: 626: }
;handle_floor.c: 627: if (floor[7] & 0x20)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+07h,(5)&7
	goto	u11271
	goto	u11270
u11271:
	goto	l9062
u11270:
	line	629
	
l9060:	
;handle_floor.c: 628: {
;handle_floor.c: 629: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	630
;handle_floor.c: 630: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	631
;handle_floor.c: 631: uart1_send_byte(0xF2);
	movlw	(0F2h)
	fcall	_uart1_send_byte
	line	632
;handle_floor.c: 632: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	634
	
l9062:	
;handle_floor.c: 633: }
;handle_floor.c: 634: if (floor[7] & 0x40)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+07h,(6)&7
	goto	u11281
	goto	u11280
u11281:
	goto	l9066
u11280:
	line	636
	
l9064:	
;handle_floor.c: 635: {
;handle_floor.c: 636: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	637
;handle_floor.c: 637: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	638
;handle_floor.c: 638: uart1_send_byte(0xF4);
	movlw	(0F4h)
	fcall	_uart1_send_byte
	line	639
;handle_floor.c: 639: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	641
	
l9066:	
;handle_floor.c: 640: }
;handle_floor.c: 641: if (floor[7] & 0x80)
	movlb 0	; select bank0
	btfss	0+(deal_floor@floor)+07h,(7)&7
	goto	u11291
	goto	u11290
u11291:
	goto	l289
u11290:
	line	643
	
l9068:	
;handle_floor.c: 642: {
;handle_floor.c: 643: uart1_send_byte(0xF0);
	movlw	(0F0h)
	fcall	_uart1_send_byte
	line	644
;handle_floor.c: 644: uart1_send_byte(0xF1);
	movlw	(0F1h)
	fcall	_uart1_send_byte
	line	645
;handle_floor.c: 645: uart1_send_byte(0xF8);
	movlw	(0F8h)
	fcall	_uart1_send_byte
	line	646
;handle_floor.c: 646: delay_ms(150);
	movlw	096h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	649
	
l289:	
	return
	opt stack 0
GLOBAL	__end_of_deal_floor
	__end_of_deal_floor:
	signat	_deal_floor,4216
	global	_checksum

;; *************** function _checksum *****************
;; Defined at:
;;		line 113 in file "D:\WORKproject\AJ-BLE-IC\source\application\other.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     PTR unsigned char 
;;		 -> read_card_content@data(16), 
;;  length          1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    3[COMMON] PTR unsigned char 
;;		 -> read_card_content@data(16), 
;;  i               1    5[COMMON] unsigned char 
;;  sum             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_card_content
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\application\other.c"
	line	113
global __ptext27
__ptext27:	;psect for function _checksum
psect	text27
	file	"D:\WORKproject\AJ-BLE-IC\source\application\other.c"
	line	113
	global	__size_of_checksum
	__size_of_checksum	equ	__end_of_checksum-_checksum
	
_checksum:	
;incstack = 0
	opt	stack 12
; Regs used in _checksum: [wreg+fsr1l+fsr1h+status,2+status,0]
;checksum@data stored from wreg
	line	114
	movwf	(checksum@data)
	line	118
	
l9416:	
;other.c: 118: BYTE i = 0x00;
	clrf	(checksum@i)
	line	119
;other.c: 119: BYTE sum = 0x00;
	clrf	(checksum@sum)
	line	121
;other.c: 121: for (i = 0x00; i < length; i++)
	clrf	(checksum@i)
	goto	l9422
	line	123
	
l9418:	
;other.c: 122: {
;other.c: 123: sum += data[i];
	movf	(checksum@i),w
	addwf	(checksum@data),w
	movwf	(??_checksum+0)+0
	movf	0+(??_checksum+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addwf	(checksum@sum),f
	line	121
	
l9420:	
	incf	(checksum@i),f
	
l9422:	
	movf	(checksum@length),w
	subwf	(checksum@i),w
	skipc
	goto	u11791
	goto	u11790
u11791:
	goto	l9418
u11790:
	line	126
	
l9424:	
;other.c: 124: }
;other.c: 126: return sum;
	movf	(checksum@sum),w
	line	127
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_checksum
	__end_of_checksum:
	signat	_checksum,8313
	global	_check_user_card

;; *************** function _check_user_card *****************
;; Defined at:
;;		line 123 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_read_24c02
;; This function is called by:
;;		_read_card_content
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	123
global __ptext28
__ptext28:	;psect for function _check_user_card
psect	text28
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	123
	global	__size_of_check_user_card
	__size_of_check_user_card	equ	__end_of_check_user_card-_check_user_card
	
_check_user_card:	
;incstack = 0
	opt	stack 10
; Regs used in _check_user_card: [wreg+status,2+status,0+pclath+cstack]
	line	129
	
l9070:	
;handle_ic_card.c: 127: BYTE i;
;handle_ic_card.c: 129: for (i = 0x00; i < 0x2C; i++)
	clrf	(check_user_card@i)
	line	134
	
l9076:	
;handle_ic_card.c: 130: {
;handle_ic_card.c: 131: if ((card_id[3] == read_24c02(0x40 + (i * 0x04) + 0x00)) &&
;handle_ic_card.c: 132: (card_id[2] == read_24c02(0x40 + (i * 0x04) + 0x01)) &&
;handle_ic_card.c: 133: (card_id[1] == read_24c02(0x40 + (i * 0x04) + 0x02)) &&
;handle_ic_card.c: 134: (card_id[0] == read_24c02(0x40 + (i * 0x04) + 0x03)))
	movf	(check_user_card@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	040h
	fcall	_read_24c02
	movlb 0	; select bank0
	xorwf	0+(_card_id)+03h,w
	skipz
	goto	u11301
	goto	u11300
u11301:
	goto	l9088
u11300:
	
l9078:	
	movf	(check_user_card@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	041h
	fcall	_read_24c02
	movlb 0	; select bank0
	xorwf	0+(_card_id)+02h,w
	skipz
	goto	u11311
	goto	u11310
u11311:
	goto	l9088
u11310:
	
l9080:	
	movf	(check_user_card@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	042h
	fcall	_read_24c02
	movlb 0	; select bank0
	xorwf	0+(_card_id)+01h,w
	skipz
	goto	u11321
	goto	u11320
u11321:
	goto	l9088
u11320:
	
l9082:	
	movf	(check_user_card@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	043h
	fcall	_read_24c02
	movlb 0	; select bank0
	xorwf	(_card_id),w
	skipz
	goto	u11331
	goto	u11330
u11331:
	goto	l9088
u11330:
	line	136
	
l9084:	
;handle_ic_card.c: 135: {
;handle_ic_card.c: 136: return 0x01;
	movlw	(01h)
	goto	l379
	line	129
	
l9088:	
	incf	(check_user_card@i),f
	
l9090:	
	movlw	(02Ch)
	subwf	(check_user_card@i),w
	skipc
	goto	u11341
	goto	u11340
u11341:
	goto	l9076
u11340:
	line	140
	
l9092:	
;handle_ic_card.c: 137: }
;handle_ic_card.c: 138: }
;handle_ic_card.c: 140: return 0x00;
	movlw	(0)
	line	141
	
l379:	
	return
	opt stack 0
GLOBAL	__end_of_check_user_card
	__end_of_check_user_card:
	signat	_check_user_card,89
	global	_Mf500PiccWrite

;; *************** function _Mf500PiccWrite *****************
;; Defined at:
;;		line 956 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  data1           1   10[BANK0 ] PTR unsigned char 
;;		 -> read_card_content@data(16), 
;; Auto vars:     Size  Location     Type
;;  addr            1   11[BANK0 ] unsigned char 
;;  ret_status      1   12[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_FlushFIFO
;;		_PcdSetTmo
;;		_PcdSingleResponseCmd
;;		_WriteRC
;;		_memcpy
;; This function is called by:
;;		_read_card_content
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	956
global __ptext29
__ptext29:	;psect for function _Mf500PiccWrite
psect	text29
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	956
	global	__size_of_Mf500PiccWrite
	__size_of_Mf500PiccWrite	equ	__end_of_Mf500PiccWrite-_Mf500PiccWrite
	
_Mf500PiccWrite:	
;incstack = 0
	opt	stack 7
; Regs used in _Mf500PiccWrite: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;Mf500PiccWrite@addr stored from wreg
	line	957
	movwf	(Mf500PiccWrite@addr)
	line	961
	
l9428:	
	line	963
	
l9430:	
;mfrc500.c: 963: FlushFIFO();
	fcall	_FlushFIFO
	line	964
	
l9432:	
;mfrc500.c: 964: PcdSetTmo(4);
	movlw	04h
	movwf	(PcdSetTmo@tmoLength)
	clrf	(PcdSetTmo@tmoLength+1)
	fcall	_PcdSetTmo
	line	966
	
l9434:	
;mfrc500.c: 966: WriteRC(0x22, 0x07);
	movlw	(07h)
	movwf	(WriteRC@data)
	movlw	(022h)
	fcall	_WriteRC
	line	967
	
l9436:	
;mfrc500.c: 967: MInfo.cmd = 0; MInfo.status = 0; MInfo.irqSource = 0; MInfo.nBytesSent = 0; MInfo.nBytesToSend = 0; MInfo.nBytesReceived = 0; MInfo.nBitsReceived = 0; MInfo.collPos = 0;;
	movlb 0	; select bank0
	clrf	(_MInfo)
	
l9438:	
	clrf	0+(_MInfo)+01h
	
l9440:	
	clrf	0+(_MInfo)+06h
	
l9442:	
	clrf	0+(_MInfo)+02h
	
l9444:	
	clrf	0+(_MInfo)+03h
	
l9446:	
	clrf	0+(_MInfo)+04h
	
l9448:	
	clrf	0+(_MInfo)+05h
	
l9450:	
	clrf	0+(_MInfo)+07h
	line	968
	
l9452:	
;mfrc500.c: 968: MSndBuffer[0] = 0xA0;
	movlw	(0A0h)
	movlb 1	; select bank1
	movwf	(_MSndBuffer)^080h
	line	969
	
l9454:	
;mfrc500.c: 969: MSndBuffer[1] = addr;
	movlb 0	; select bank0
	movf	(Mf500PiccWrite@addr),w
	movlb 1	; select bank1
	movwf	0+(_MSndBuffer)^080h+01h
	line	970
	
l9456:	
;mfrc500.c: 970: MInfo.nBytesToSend = 0x02;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	0+(_MInfo)+03h
	line	971
	
l9458:	
;mfrc500.c: 971: ret_status = PcdSingleResponseCmd(0x1e);
	movlw	(01Eh)
	fcall	_PcdSingleResponseCmd
	movwf	(Mf500PiccWrite@ret_status)
	line	972
	
l9460:	
;mfrc500.c: 972: if (ret_status != (-1))
	incf	(Mf500PiccWrite@ret_status),w
	skipnz
	goto	u11801
	goto	u11800
u11801:
	goto	l9478
u11800:
	line	974
	
l9462:	
;mfrc500.c: 973: {
;mfrc500.c: 974: if (MInfo.nBitsReceived != 4)
	movf	0+(_MInfo)+05h,w
	xorlw	04h&0ffh
	skipnz
	goto	u11811
	goto	u11810
u11811:
	goto	l9466
u11810:
	line	976
	
l9464:	
;mfrc500.c: 975: {
;mfrc500.c: 976: ret_status = (-11);
	movlw	(-11)
	movwf	(Mf500PiccWrite@ret_status)
	line	977
;mfrc500.c: 977: }
	goto	l9478
	line	980
	
l9466:	
;mfrc500.c: 978: else
;mfrc500.c: 979: {
;mfrc500.c: 980: MRcvBuffer[0] &= 0x0f;
	movlw	(0Fh)
	movlb 2	; select bank2
	andwf	(_MRcvBuffer)^0100h,f
	line	981
;mfrc500.c: 981: switch(MRcvBuffer[0])
	goto	l9476
	line	984
	
l9468:	
;mfrc500.c: 984: ret_status = (-10);
	movlw	(-10)
	movlb 0	; select bank0
	movwf	(Mf500PiccWrite@ret_status)
	line	985
;mfrc500.c: 985: break;
	goto	l9478
	line	987
	
l9470:	
;mfrc500.c: 987: ret_status = 0;
	movlb 0	; select bank0
	clrf	(Mf500PiccWrite@ret_status)
	line	988
;mfrc500.c: 988: break;
	goto	l9478
	line	990
	
l9472:	
;mfrc500.c: 990: ret_status = (-6);
	movlw	(-6)
	movlb 0	; select bank0
	movwf	(Mf500PiccWrite@ret_status)
	line	991
;mfrc500.c: 991: break;
	goto	l9478
	line	981
	
l9476:	
	movf	(_MRcvBuffer)^0100h,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           28     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9468
	xorlw	10^0	; case 10
	skipnz
	goto	l9470
	goto	l9472
	opt asmopt_on

	line	995
	
l9478:	
;mfrc500.c: 993: }
;mfrc500.c: 994: }
;mfrc500.c: 995: if (ret_status == 0)
	movf	(Mf500PiccWrite@ret_status),f
	skipz
	goto	u11821
	goto	u11820
u11821:
	goto	l1097
u11820:
	line	997
	
l9480:	
;mfrc500.c: 996: {
;mfrc500.c: 997: FlushFIFO();
	fcall	_FlushFIFO
	line	998
	
l9482:	
;mfrc500.c: 998: PcdSetTmo(3);
	movlw	03h
	movwf	(PcdSetTmo@tmoLength)
	clrf	(PcdSetTmo@tmoLength+1)
	fcall	_PcdSetTmo
	line	999
	
l9484:	
;mfrc500.c: 999: MInfo.cmd = 0; MInfo.status = 0; MInfo.irqSource = 0; MInfo.nBytesSent = 0; MInfo.nBytesToSend = 0; MInfo.nBytesReceived = 0; MInfo.nBitsReceived = 0; MInfo.collPos = 0;;
	movlb 0	; select bank0
	clrf	(_MInfo)
	
l9486:	
	clrf	0+(_MInfo)+01h
	
l9488:	
	clrf	0+(_MInfo)+06h
	
l9490:	
	clrf	0+(_MInfo)+02h
	
l9492:	
	clrf	0+(_MInfo)+03h
	
l9494:	
	clrf	0+(_MInfo)+04h
	
l9496:	
	clrf	0+(_MInfo)+05h
	
l9498:	
	clrf	0+(_MInfo)+07h
	line	1000
	
l9500:	
;mfrc500.c: 1000: memcpy(MSndBuffer, data1, 16);
	movf	(Mf500PiccWrite@data1),w
	movwf	(memcpy@s1)
	movlw	(0x0/2)
	movwf	(memcpy@s1+1)
	movlw	010h
	movwf	(memcpy@n)
	clrf	(memcpy@n+1)
	movlw	(_MSndBuffer)&0ffh
	fcall	_memcpy
	line	1001
	
l9502:	
;mfrc500.c: 1001: MInfo.nBytesToSend = 16;
	movlw	(010h)
	movwf	0+(_MInfo)+03h
	line	1002
	
l9504:	
;mfrc500.c: 1002: ret_status = PcdSingleResponseCmd(0x1e);
	movlw	(01Eh)
	fcall	_PcdSingleResponseCmd
	movwf	(Mf500PiccWrite@ret_status)
	line	1003
	
l9506:	
;mfrc500.c: 1003: if (ret_status != (-1))
	incf	(Mf500PiccWrite@ret_status),w
	skipnz
	goto	u11831
	goto	u11830
u11831:
	goto	l9524
u11830:
	line	1005
	
l9508:	
;mfrc500.c: 1004: {
;mfrc500.c: 1005: if (MInfo.nBitsReceived != 4)
	movf	0+(_MInfo)+05h,w
	xorlw	04h&0ffh
	skipnz
	goto	u11841
	goto	u11840
u11841:
	goto	l9512
u11840:
	line	1007
	
l9510:	
	line	1008
;mfrc500.c: 1008: }
	goto	l9524
	line	1011
	
l9512:	
;mfrc500.c: 1009: else
;mfrc500.c: 1010: {
;mfrc500.c: 1011: MRcvBuffer[0] &= 0x0f;
	movlw	(0Fh)
	movlb 2	; select bank2
	andwf	(_MRcvBuffer)^0100h,f
	line	1012
;mfrc500.c: 1012: switch(MRcvBuffer[0])
	goto	l9522
	line	1015
	
l9514:	
	line	1016
;mfrc500.c: 1016: break;
	goto	l9524
	line	1018
	
l9516:	
	line	1019
;mfrc500.c: 1019: break;
	goto	l9524
	line	1021
	
l9518:	
	line	1022
;mfrc500.c: 1022: break;
	goto	l9524
	line	1012
	
l9522:	
	movf	(_MRcvBuffer)^0100h,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           28     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9514
	xorlw	10^0	; case 10
	skipnz
	goto	l9516
	goto	l9518
	opt asmopt_on

	line	1026
	
l9524:	
;mfrc500.c: 1024: }
;mfrc500.c: 1025: }
;mfrc500.c: 1026: PcdSetTmo(1);
	clrf	(PcdSetTmo@tmoLength)
	incf	(PcdSetTmo@tmoLength),f
	clrf	(PcdSetTmo@tmoLength+1)
	fcall	_PcdSetTmo
	line	1030
	
l1097:	
	return
	opt stack 0
GLOBAL	__end_of_Mf500PiccWrite
	__end_of_Mf500PiccWrite:
	signat	_Mf500PiccWrite,8313
	global	_Mf500PiccRead

;; *************** function _Mf500PiccRead *****************
;; Defined at:
;;		line 895 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  data1           1   10[BANK0 ] PTR unsigned char 
;;		 -> read_card_content@data(16), 
;; Auto vars:     Size  Location     Type
;;  addr            1   12[BANK0 ] unsigned char 
;;  i               1   14[BANK0 ] unsigned char 
;;  ret_status      1   13[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_FlushFIFO
;;		_PcdSetTmo
;;		_PcdSingleResponseCmd
;;		_WriteRC
;;		_memcpy
;; This function is called by:
;;		_read_card_content
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	line	895
global __ptext30
__ptext30:	;psect for function _Mf500PiccRead
psect	text30
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	895
	global	__size_of_Mf500PiccRead
	__size_of_Mf500PiccRead	equ	__end_of_Mf500PiccRead-_Mf500PiccRead
	
_Mf500PiccRead:	
;incstack = 0
	opt	stack 7
; Regs used in _Mf500PiccRead: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;Mf500PiccRead@addr stored from wreg
	line	896
	movwf	(Mf500PiccRead@addr)
	line	902
	
l9334:	
	line	904
	
l9336:	
;mfrc500.c: 904: FlushFIFO();
	fcall	_FlushFIFO
	line	905
	
l9338:	
;mfrc500.c: 905: PcdSetTmo(4);
	movlw	04h
	movwf	(PcdSetTmo@tmoLength)
	clrf	(PcdSetTmo@tmoLength+1)
	fcall	_PcdSetTmo
	line	906
	
l9340:	
;mfrc500.c: 906: WriteRC(0x22, 0xF);
	movlw	(0Fh)
	movwf	(WriteRC@data)
	movlw	(022h)
	fcall	_WriteRC
	line	907
	
l9342:	
;mfrc500.c: 907: MInfo.cmd = 0; MInfo.status = 0; MInfo.irqSource = 0; MInfo.nBytesSent = 0; MInfo.nBytesToSend = 0; MInfo.nBytesReceived = 0; MInfo.nBitsReceived = 0; MInfo.collPos = 0;;
	movlb 0	; select bank0
	clrf	(_MInfo)
	
l9344:	
	clrf	0+(_MInfo)+01h
	
l9346:	
	clrf	0+(_MInfo)+06h
	
l9348:	
	clrf	0+(_MInfo)+02h
	
l9350:	
	clrf	0+(_MInfo)+03h
	
l9352:	
	clrf	0+(_MInfo)+04h
	
l9354:	
	clrf	0+(_MInfo)+05h
	
l9356:	
	clrf	0+(_MInfo)+07h
	line	908
	
l9358:	
;mfrc500.c: 908: MSndBuffer[0] = 0x30;
	movlw	(030h)
	movlb 1	; select bank1
	movwf	(_MSndBuffer)^080h
	line	909
	
l9360:	
;mfrc500.c: 909: MSndBuffer[1] = addr;
	movlb 0	; select bank0
	movf	(Mf500PiccRead@addr),w
	movlb 1	; select bank1
	movwf	0+(_MSndBuffer)^080h+01h
	line	910
	
l9362:	
;mfrc500.c: 910: MInfo.nBytesToSend = 2;
	movlw	(02h)
	movlb 0	; select bank0
	movwf	0+(_MInfo)+03h
	line	911
	
l9364:	
;mfrc500.c: 911: ret_status = PcdSingleResponseCmd(0x1e);
	movlw	(01Eh)
	fcall	_PcdSingleResponseCmd
	movwf	(Mf500PiccRead@ret_status)
	line	912
	
l9366:	
;mfrc500.c: 912: if (ret_status != 0)
	movf	(Mf500PiccRead@ret_status),w
	skipz
	goto	u11720
	goto	l9392
u11720:
	line	914
	
l9368:	
;mfrc500.c: 913: {
;mfrc500.c: 914: if (ret_status != (-1))
	incf	(Mf500PiccRead@ret_status),w
	skipnz
	goto	u11731
	goto	u11730
u11731:
	goto	l9380
u11730:
	line	916
	
l9370:	
;mfrc500.c: 915: {
;mfrc500.c: 916: if (MInfo.nBitsReceived == 4)
	movf	0+(_MInfo)+05h,w
	xorlw	04h&0ffh
	skipz
	goto	u11741
	goto	u11740
u11741:
	goto	l9380
u11740:
	line	918
	
l9372:	
;mfrc500.c: 917: {
;mfrc500.c: 918: MRcvBuffer[0] &= 0x0f;
	movlw	(0Fh)
	movlb 2	; select bank2
	andwf	(_MRcvBuffer)^0100h,f
	line	919
	
l9374:	
;mfrc500.c: 919: if ((MRcvBuffer[0] & 0x0a) == 0)
	movf	(_MRcvBuffer)^0100h,w
	andlw	0Ah
	btfss	status,2
	goto	u11751
	goto	u11750
u11751:
	goto	l9378
u11750:
	line	921
	
l9376:	
;mfrc500.c: 920: {
;mfrc500.c: 921: ret_status = (-10);
	movlw	(-10)
	movlb 0	; select bank0
	movwf	(Mf500PiccRead@ret_status)
	line	922
;mfrc500.c: 922: }
	goto	l9380
	line	925
	
l9378:	
;mfrc500.c: 923: else
;mfrc500.c: 924: {
;mfrc500.c: 925: ret_status = (-6);
	movlw	(-6)
	movlb 0	; select bank0
	movwf	(Mf500PiccRead@ret_status)
	line	929
	
l9380:	
;mfrc500.c: 926: }
;mfrc500.c: 927: }
;mfrc500.c: 928: }
;mfrc500.c: 929: for (i = 0; i < 16; i++)
	clrf	(Mf500PiccRead@i)
	line	931
	
l9386:	
;mfrc500.c: 930: {
;mfrc500.c: 931: data1[i] = 0;
	movf	(Mf500PiccRead@i),w
	addwf	(Mf500PiccRead@data1),w
	movwf	(??_Mf500PiccRead+0)+0
	movf	0+(??_Mf500PiccRead+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	929
	
l9388:	
	incf	(Mf500PiccRead@i),f
	
l9390:	
	movlw	(010h)
	subwf	(Mf500PiccRead@i),w
	skipc
	goto	u11761
	goto	u11760
u11761:
	goto	l9386
u11760:
	goto	l9410
	line	937
	
l9392:	
;mfrc500.c: 934: else
;mfrc500.c: 935: {
;mfrc500.c: 937: if (MInfo.nBytesReceived != 16)
	movf	0+(_MInfo)+04h,w
	xorlw	010h&0ffh
	skipnz
	goto	u11771
	goto	u11770
u11771:
	goto	l9408
u11770:
	line	939
	
l9394:	
;mfrc500.c: 938: {
;mfrc500.c: 939: ret_status = (-12);
	movlw	(-12)
	movwf	(Mf500PiccRead@ret_status)
	line	940
	
l9396:	
;mfrc500.c: 940: for (i = 0; i < 16; i++)
	clrf	(Mf500PiccRead@i)
	line	942
	
l9402:	
;mfrc500.c: 941: {
;mfrc500.c: 942: data1[i] = 0x00;
	movf	(Mf500PiccRead@i),w
	addwf	(Mf500PiccRead@data1),w
	movwf	(??_Mf500PiccRead+0)+0
	movf	0+(??_Mf500PiccRead+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	940
	
l9404:	
	incf	(Mf500PiccRead@i),f
	
l9406:	
	movlw	(010h)
	subwf	(Mf500PiccRead@i),w
	skipc
	goto	u11781
	goto	u11780
u11781:
	goto	l9402
u11780:
	goto	l9410
	line	947
	
l9408:	
;mfrc500.c: 945: else
;mfrc500.c: 946: {
;mfrc500.c: 947: memcpy(data1, MRcvBuffer, 16);
	movlw	low(_MRcvBuffer)
	movwf	(memcpy@s1)
	movlw	high(_MRcvBuffer)
	movwf	(memcpy@s1+1)
	movlw	010h
	movwf	(memcpy@n)
	clrf	(memcpy@n+1)
	movf	(Mf500PiccRead@data1),w
	fcall	_memcpy
	line	950
	
l9410:	
;mfrc500.c: 948: }
;mfrc500.c: 949: }
;mfrc500.c: 950: PcdSetTmo(1);
	clrf	(PcdSetTmo@tmoLength)
	incf	(PcdSetTmo@tmoLength),f
	clrf	(PcdSetTmo@tmoLength+1)
	fcall	_PcdSetTmo
	line	952
	
l9412:	
;mfrc500.c: 952: return ret_status;
	movlb 0	; select bank0
	movf	(Mf500PiccRead@ret_status),w
	line	953
	
l1077:	
	return
	opt stack 0
GLOBAL	__end_of_Mf500PiccRead
	__end_of_Mf500PiccRead:
	signat	_Mf500PiccRead,8313
	global	_handle_beep

;; *************** function _handle_beep *****************
;; Defined at:
;;		line 73 in file "D:\WORKproject\AJ-BLE-IC\source\driver\beep.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_handle_ic_card
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\beep.c"
	line	73
global __ptext31
__ptext31:	;psect for function _handle_beep
psect	text31
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\beep.c"
	line	73
	global	__size_of_handle_beep
	__size_of_handle_beep	equ	__end_of_handle_beep-_handle_beep
	
_handle_beep:	
;incstack = 0
	opt	stack 12
; Regs used in _handle_beep: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	77
	
l9772:	
;beep.c: 77: switch (card_type)
	goto	l9792
	line	79
;beep.c: 78: {
;beep.c: 79: case 0x01 :
	
l666:	
	line	80
;beep.c: 80: (RC5 = 0x00);
	bcf	(117/8),(117)&7	;volatile
	line	81
	
l9774:	
;beep.c: 81: delay_ms(100);
	movlw	064h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	82
	
l9776:	
;beep.c: 82: (RC5 = 0x01);
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	83
;beep.c: 83: break;
	goto	l676
	line	77
	
l9792:	
	movlb 0	; select bank0
	movf	(_card_type),w
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 8
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           25     9 (fixed)
; simple_byte           25    13 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-1
	skipc
goto l676
	movwf fsr0l
	movlw	8
	subwf	fsr0l,w
skipnc
goto l676
movlp high(S11076)
	lslf fsr0l,w
	addlw low(S11076)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S11076:
	ljmp	l666
	ljmp	l666
	ljmp	l666
	ljmp	l666
	ljmp	l676
	ljmp	l676
	ljmp	l676
	ljmp	l676
psect	text31

	line	109
	
l676:	
	return
	opt stack 0
GLOBAL	__end_of_handle_beep
	__end_of_handle_beep:
	signat	_handle_beep,88
	global	_checkpsw_super

;; *************** function _checkpsw_super *****************
;; Defined at:
;;		line 537 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_Mf500PiccAuthState
;;		_Mf500PiccLoadKey
;;		_read_id
;;		_rfcard
;; This function is called by:
;;		_handle_ic_card
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	537
global __ptext32
__ptext32:	;psect for function _checkpsw_super
psect	text32
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	537
	global	__size_of_checkpsw_super
	__size_of_checkpsw_super	equ	__end_of_checkpsw_super-_checkpsw_super
	
_checkpsw_super:	
;incstack = 0
	opt	stack 5
; Regs used in _checkpsw_super: [allreg]
	line	541
	
l9588:	
;handle_ic_card.c: 541: if (!rfcard())
	fcall	_rfcard
	iorlw	0
	skipz
	goto	u11911
	goto	u11910
u11911:
	goto	l9602
u11910:
	line	543
	
l9590:	
;handle_ic_card.c: 542: {
;handle_ic_card.c: 543: if (read_id())
	fcall	_read_id
	xorlw	0&0ffh
	skipnz
	goto	u11921
	goto	u11920
u11921:
	goto	l9602
u11920:
	line	545
	
l9592:	
;handle_ic_card.c: 544: {
;handle_ic_card.c: 545: if (Mf500PiccLoadKey(keys_super) == 0)
	movlw	(_keys_super)&0ffh
	fcall	_Mf500PiccLoadKey
	iorlw	0
	skipz
	goto	u11931
	goto	u11930
u11931:
	goto	l9602
u11930:
	line	547
	
l9594:	
;handle_ic_card.c: 546: {
;handle_ic_card.c: 547: if (Mf500PiccAuthState(0x60, snr_rc500, 4 * sector_number) == 0)
	movlw	(_snr_rc500)&0ffh
	movwf	(Mf500PiccAuthState@snr)
	movf	(_sector_number),w
	addwf	wreg,w
	addwf	wreg,w
	movwf	(Mf500PiccAuthState@block)
	movlw	(060h)
	fcall	_Mf500PiccAuthState
	iorlw	0
	skipz
	goto	u11941
	goto	u11940
u11941:
	goto	l9602
u11940:
	line	549
	
l9596:	
;handle_ic_card.c: 548: {
;handle_ic_card.c: 549: return 0x01;
	movlw	(01h)
	goto	l466
	line	553
	
l9602:	
;handle_ic_card.c: 551: else
;handle_ic_card.c: 552: {
;handle_ic_card.c: 553: return 0x00;
	movlw	(0)
	line	570
	
l466:	
	return
	opt stack 0
GLOBAL	__end_of_checkpsw_super
	__end_of_checkpsw_super:
	signat	_checkpsw_super,89
	global	_rfcard

;; *************** function _rfcard *****************
;; Defined at:
;;		line 484 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ret             1   33[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Mf500PiccAnticoll
;;		_Mf500PiccRequest
;; This function is called by:
;;		_checkpsw_super
;;		_handle_ic_card
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	line	484
global __ptext33
__ptext33:	;psect for function _rfcard
psect	text33
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	484
	global	__size_of_rfcard
	__size_of_rfcard	equ	__end_of_rfcard-_rfcard
	
_rfcard:	
;incstack = 0
	opt	stack 6
; Regs used in _rfcard: [allreg]
	line	488
	
l9528:	
	line	490
	
l9530:	
	movlw	(_tt1)&0ffh
	movlb 0	; select bank0
	movwf	(Mf500PiccRequest@atq)
	movlw	(026h)
	fcall	_Mf500PiccRequest
	line	491
	
l9532:	
;handle_ic_card.c: 491: ret = Mf500PiccAnticoll(0, snr_rc500);
	movlw	(_snr_rc500)&0ffh
	movwf	(Mf500PiccAnticoll@snr)
	movlw	(0)
	fcall	_Mf500PiccAnticoll
	movwf	(rfcard@ret)
	line	492
	
l9534:	
;handle_ic_card.c: 492: if (ret != 0)
	movf	(rfcard@ret),w
	skipz
	goto	u11850
	goto	l9542
u11850:
	line	494
	
l9536:	
;handle_ic_card.c: 493: {
;handle_ic_card.c: 494: return 0x01;
	movlw	(01h)
	goto	l448
	line	500
	
l9542:	
;handle_ic_card.c: 498: }
;handle_ic_card.c: 500: return 0x00;
	movlw	(0)
	line	501
	
l448:	
	return
	opt stack 0
GLOBAL	__end_of_rfcard
	__end_of_rfcard:
	signat	_rfcard,89
	global	_Mf500PiccRequest

;; *************** function _Mf500PiccRequest *****************
;; Defined at:
;;		line 614 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  req_code        1    wreg     unsigned char 
;;  atq             1   13[BANK0 ] PTR unsigned char 
;;		 -> tt1(2), 
;; Auto vars:     Size  Location     Type
;;  req_code        1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Mf500PiccCommonRequest
;; This function is called by:
;;		_rfcard
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	614
global __ptext34
__ptext34:	;psect for function _Mf500PiccRequest
psect	text34
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	614
	global	__size_of_Mf500PiccRequest
	__size_of_Mf500PiccRequest	equ	__end_of_Mf500PiccRequest-_Mf500PiccRequest
	
_Mf500PiccRequest:	
;incstack = 0
	opt	stack 6
; Regs used in _Mf500PiccRequest: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;Mf500PiccRequest@req_code stored from wreg
	line	615
	movwf	(Mf500PiccRequest@req_code)
	line	619
	
l9546:	
;mfrc500.c: 619: return Mf500PiccCommonRequest(req_code, atq);
	movf	(Mf500PiccRequest@atq),w
	movwf	(Mf500PiccCommonRequest@atq)
	movf	(Mf500PiccRequest@req_code),w
	fcall	_Mf500PiccCommonRequest
	line	620
	
l993:	
	return
	opt stack 0
GLOBAL	__end_of_Mf500PiccRequest
	__end_of_Mf500PiccRequest:
	signat	_Mf500PiccRequest,8313
	global	_Mf500PiccCommonRequest

;; *************** function _Mf500PiccCommonRequest *****************
;; Defined at:
;;		line 574 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  req_code        1    wreg     unsigned char 
;;  atq             1   10[BANK0 ] PTR unsigned char 
;;		 -> tt1(2), 
;; Auto vars:     Size  Location     Type
;;  req_code        1   11[BANK0 ] unsigned char 
;;  ret_status      1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_PcdSetTmo
;;		_PcdSingleResponseCmd
;;		_WriteRC
;;		_memcpy
;; This function is called by:
;;		_Mf500PiccRequest
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	line	574
global __ptext35
__ptext35:	;psect for function _Mf500PiccCommonRequest
psect	text35
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	574
	global	__size_of_Mf500PiccCommonRequest
	__size_of_Mf500PiccCommonRequest	equ	__end_of_Mf500PiccCommonRequest-_Mf500PiccCommonRequest
	
_Mf500PiccCommonRequest:	
;incstack = 0
	opt	stack 6
; Regs used in _Mf500PiccCommonRequest: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;Mf500PiccCommonRequest@req_code stored from wreg
	line	575
	movwf	(Mf500PiccCommonRequest@req_code)
	line	579
	
l10574:	
	line	581
	
l10576:	
;mfrc500.c: 581: PcdSetTmo(106);
	movlw	06Ah
	movwf	(PcdSetTmo@tmoLength)
	clrf	(PcdSetTmo@tmoLength+1)
	fcall	_PcdSetTmo
	line	583
	
l10578:	
;mfrc500.c: 583: WriteRC(0x22, 0x03);
	movlw	(03h)
	movwf	(WriteRC@data)
	movlw	(022h)
	fcall	_WriteRC
	line	584
	
l10580:	
;mfrc500.c: 584: WriteRC(0x09, 0x08);
	movlw	(08h)
	movwf	(WriteRC@data)
	movlw	(09h)
	fcall	_WriteRC
	line	586
	
l10582:	
;mfrc500.c: 586: WriteRC(0x0F, 0x07);
	movlw	(07h)
	movwf	(WriteRC@data)
	movlw	(0Fh)
	fcall	_WriteRC
	line	588
	
l10584:	
;mfrc500.c: 588: MInfo.cmd = 0; MInfo.status = 0; MInfo.irqSource = 0; MInfo.nBytesSent = 0; MInfo.nBytesToSend = 0; MInfo.nBytesReceived = 0; MInfo.nBitsReceived = 0; MInfo.collPos = 0;;
	movlb 0	; select bank0
	clrf	(_MInfo)
	
l10586:	
	clrf	0+(_MInfo)+01h
	
l10588:	
	clrf	0+(_MInfo)+06h
	
l10590:	
	clrf	0+(_MInfo)+02h
	
l10592:	
	clrf	0+(_MInfo)+03h
	
l10594:	
	clrf	0+(_MInfo)+04h
	
l10596:	
	clrf	0+(_MInfo)+05h
	
l10598:	
	clrf	0+(_MInfo)+07h
	line	590
	
l10600:	
;mfrc500.c: 590: MSndBuffer[0] = req_code;
	movf	(Mf500PiccCommonRequest@req_code),w
	movlb 1	; select bank1
	movwf	(_MSndBuffer)^080h
	line	591
	
l10602:	
;mfrc500.c: 591: MInfo.nBytesToSend = 0x01;
	movlb 0	; select bank0
	clrf	0+(_MInfo)+03h
	incf	0+(_MInfo)+03h,f
	line	592
	
l10604:	
;mfrc500.c: 592: ret_status = PcdSingleResponseCmd(0x1e);
	movlw	(01Eh)
	fcall	_PcdSingleResponseCmd
	movwf	(Mf500PiccCommonRequest@ret_status)
	line	593
	
l10606:	
;mfrc500.c: 593: if (ret_status)
	movf	(Mf500PiccCommonRequest@ret_status),w
	skipz
	goto	u12900
	goto	l10610
u12900:
	line	595
	
l10608:	
;mfrc500.c: 594: {
;mfrc500.c: 595: *atq = 0x00;
	movf	(Mf500PiccCommonRequest@atq),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	596
;mfrc500.c: 596: }
	goto	l10618
	line	599
	
l10610:	
;mfrc500.c: 597: else
;mfrc500.c: 598: {
;mfrc500.c: 599: if (MInfo.nBitsReceived != 0x10)
	movf	0+(_MInfo)+05h,w
	xorlw	010h&0ffh
	skipnz
	goto	u12911
	goto	u12910
u12911:
	goto	l10614
u12910:
	line	601
	
l10612:	
;mfrc500.c: 600: {
;mfrc500.c: 601: ret_status = (-11);
	movlw	(0F5h)
	movwf	(Mf500PiccCommonRequest@ret_status)
	line	602
;mfrc500.c: 602: }
	goto	l10618
	line	605
	
l10614:	
;mfrc500.c: 603: else
;mfrc500.c: 604: {
;mfrc500.c: 605: ret_status = 0;
	clrf	(Mf500PiccCommonRequest@ret_status)
	line	606
	
l10616:	
;mfrc500.c: 606: memcpy(atq, MRcvBuffer, 0x02);
	movlw	low(_MRcvBuffer)
	movwf	(memcpy@s1)
	movlw	high(_MRcvBuffer)
	movwf	(memcpy@s1+1)
	movlw	02h
	movwf	(memcpy@n)
	clrf	(memcpy@n+1)
	movf	(Mf500PiccCommonRequest@atq),w
	fcall	_memcpy
	line	610
	
l10618:	
;mfrc500.c: 607: }
;mfrc500.c: 608: }
;mfrc500.c: 610: return ret_status;
	movf	(Mf500PiccCommonRequest@ret_status),w
	line	611
	
l990:	
	return
	opt stack 0
GLOBAL	__end_of_Mf500PiccCommonRequest
	__end_of_Mf500PiccCommonRequest:
	signat	_Mf500PiccCommonRequest,8313
	global	_Mf500PiccAnticoll

;; *************** function _Mf500PiccAnticoll *****************
;; Defined at:
;;		line 741 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  bcnt            1    wreg     unsigned char 
;;  snr             1   31[BANK0 ] PTR unsigned char 
;;		 -> snr_rc500(4), 
;; Auto vars:     Size  Location     Type
;;  bcnt            1   32[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Mf500PiccCascAnticoll
;; This function is called by:
;;		_rfcard
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	line	741
global __ptext36
__ptext36:	;psect for function _Mf500PiccAnticoll
psect	text36
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	741
	global	__size_of_Mf500PiccAnticoll
	__size_of_Mf500PiccAnticoll	equ	__end_of_Mf500PiccAnticoll-_Mf500PiccAnticoll
	
_Mf500PiccAnticoll:	
;incstack = 0
	opt	stack 6
; Regs used in _Mf500PiccAnticoll: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;Mf500PiccAnticoll@bcnt stored from wreg
	line	742
	movwf	(Mf500PiccAnticoll@bcnt)
	line	746
	
l9550:	
;mfrc500.c: 746: return Mf500PiccCascAnticoll(0x93, bcnt, snr);
	movf	(Mf500PiccAnticoll@bcnt),w
	movwf	(Mf500PiccCascAnticoll@bcnt)
	movf	(Mf500PiccAnticoll@snr),w
	movwf	(Mf500PiccCascAnticoll@snr)
	movlw	(093h)
	fcall	_Mf500PiccCascAnticoll
	line	747
	
l1032:	
	return
	opt stack 0
GLOBAL	__end_of_Mf500PiccAnticoll
	__end_of_Mf500PiccAnticoll:
	signat	_Mf500PiccAnticoll,8313
	global	_Mf500PiccCascAnticoll

;; *************** function _Mf500PiccCascAnticoll *****************
;; Defined at:
;;		line 623 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  select_code     1    wreg     unsigned char 
;;  bcnt            1   10[BANK0 ] unsigned char 
;;  snr             1   11[BANK0 ] PTR unsigned char 
;;		 -> snr_rc500(4), 
;; Auto vars:     Size  Location     Type
;;  select_code     1   16[BANK0 ] unsigned char 
;;  snr_in          4   23[BANK0 ] unsigned char [4]
;;  i               1   30[BANK0 ] unsigned char 
;;  nbits           1   29[BANK0 ] unsigned char 
;;  ret_status      1   28[BANK0 ] char 
;;  nbytes          1   27[BANK0 ] unsigned char 
;;  byteOffset      1   22[BANK0 ] unsigned char 
;;  complete        1   21[BANK0 ] unsigned char 
;;  dummyShift1     1   20[BANK0 ] unsigned char 
;;  dummyShift2     1   19[BANK0 ] unsigned char 
;;  snr_check       1   18[BANK0 ] unsigned char 
;;  snr_crc         1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      15       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      21       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ClearBitMask
;;		_PcdSetTmo
;;		_PcdSingleResponseCmd
;;		_WriteRC
;;		___awdiv
;;		_memcpy
;; This function is called by:
;;		_Mf500PiccAnticoll
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	line	623
global __ptext37
__ptext37:	;psect for function _Mf500PiccCascAnticoll
psect	text37
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	623
	global	__size_of_Mf500PiccCascAnticoll
	__size_of_Mf500PiccCascAnticoll	equ	__end_of_Mf500PiccCascAnticoll-_Mf500PiccCascAnticoll
	
_Mf500PiccCascAnticoll:	
;incstack = 0
	opt	stack 6
; Regs used in _Mf500PiccCascAnticoll: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;Mf500PiccCascAnticoll@select_code stored from wreg
	line	624
	movwf	(Mf500PiccCascAnticoll@select_code)
	line	629
	
l10632:	
;mfrc500.c: 629: signed char ret_status = 0;
	clrf	(Mf500PiccCascAnticoll@ret_status)
	line	632
;mfrc500.c: 632: unsigned char nbits = 0;
	clrf	(Mf500PiccCascAnticoll@nbits)
	line	633
;mfrc500.c: 633: unsigned char complete = 0;
	clrf	(Mf500PiccCascAnticoll@complete)
	line	634
;mfrc500.c: 634: unsigned char i = 0;
	clrf	(Mf500PiccCascAnticoll@i)
	line	635
;mfrc500.c: 635: unsigned char byteOffset = 0;
	clrf	(Mf500PiccCascAnticoll@byteOffset)
	line	641
	
l10634:	
;mfrc500.c: 636: unsigned char snr_crc;
;mfrc500.c: 637: unsigned char snr_check;
;mfrc500.c: 638: unsigned char dummyShift1;
;mfrc500.c: 639: unsigned char dummyShift2;
;mfrc500.c: 641: PcdSetTmo(106);
	movlw	06Ah
	movwf	(PcdSetTmo@tmoLength)
	clrf	(PcdSetTmo@tmoLength+1)
	fcall	_PcdSetTmo
	line	642
	
l10636:	
;mfrc500.c: 642: memcpy(snr_in, snr, 4);
	movlb 0	; select bank0
	movf	(Mf500PiccCascAnticoll@snr),w
	movwf	(memcpy@s1)
	movlw	(0x0/2)
	movwf	(memcpy@s1+1)
	movlw	04h
	movwf	(memcpy@n)
	clrf	(memcpy@n+1)
	movlw	(Mf500PiccCascAnticoll@snr_in)&0ffh
	fcall	_memcpy
	line	643
	
l10638:	
;mfrc500.c: 643: WriteRC(0x1A, 0x28);
	movlw	(028h)
	movwf	(WriteRC@data)
	movlw	(01Ah)
	fcall	_WriteRC
	line	644
	
l10640:	
;mfrc500.c: 644: ClearBitMask(0x09, 0x08);
	movlw	(08h)
	movwf	(ClearBitMask@mask)
	movlw	(09h)
	fcall	_ClearBitMask
	line	645
	
l10642:	
;mfrc500.c: 645: complete = 0;
	movlb 0	; select bank0
	clrf	(Mf500PiccCascAnticoll@complete)
	line	646
;mfrc500.c: 646: while (!complete && (ret_status == 0) )
	goto	l10740
	line	648
	
l10644:	
;mfrc500.c: 647: {
;mfrc500.c: 648: MInfo.cmd = 0; MInfo.status = 0; MInfo.irqSource = 0; MInfo.nBytesSent = 0; MInfo.nBytesToSend = 0; MInfo.nBytesReceived = 0; MInfo.nBitsReceived = 0; MInfo.collPos = 0;;
	clrf	(_MInfo)
	clrf	0+(_MInfo)+01h
	clrf	0+(_MInfo)+06h
	clrf	0+(_MInfo)+02h
	clrf	0+(_MInfo)+03h
	clrf	0+(_MInfo)+04h
	clrf	0+(_MInfo)+05h
	clrf	0+(_MInfo)+07h
	line	649
	
l10646:	
;mfrc500.c: 649: WriteRC(0x22,0x03);
	movlw	(03h)
	movwf	(WriteRC@data)
	movlw	(022h)
	fcall	_WriteRC
	line	650
	
l10648:	
;mfrc500.c: 650: nbits = bcnt % 8;
	movlb 0	; select bank0
	movf	(Mf500PiccCascAnticoll@bcnt),w
	movwf	(Mf500PiccCascAnticoll@nbits)
	
l10650:	
	movlw	(07h)
	andwf	(Mf500PiccCascAnticoll@nbits),f
	line	651
	
l10652:	
;mfrc500.c: 651: if (nbits)
	movf	(Mf500PiccCascAnticoll@nbits),w
	skipz
	goto	u12930
	goto	l10664
u12930:
	line	653
	
l10654:	
;mfrc500.c: 652: {
;mfrc500.c: 653: WriteRC(0x0F,nbits << 4 | nbits);
	swapf	(Mf500PiccCascAnticoll@nbits),w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(Mf500PiccCascAnticoll@nbits),w
	movwf	(WriteRC@data)
	movlw	(0Fh)
	fcall	_WriteRC
	line	654
	
l10656:	
;mfrc500.c: 654: nbytes = bcnt / 8 + 1;
	movlb 0	; select bank0
	movf	(Mf500PiccCascAnticoll@bcnt),w
	movwf	(??_Mf500PiccCascAnticoll+0)+0
	lsrf	(??_Mf500PiccCascAnticoll+0)+0,f
	lsrf	(??_Mf500PiccCascAnticoll+0)+0,f
	lsrf	(??_Mf500PiccCascAnticoll+0)+0,f
	movf	0+(??_Mf500PiccCascAnticoll+0)+0,w
	addlw	01h
	movwf	(Mf500PiccCascAnticoll@nbytes)
	line	655
	
l10658:	
;mfrc500.c: 655: if (nbits == 7)
	movf	(Mf500PiccCascAnticoll@nbits),w
	xorlw	07h&0ffh
	skipz
	goto	u12941
	goto	u12940
u12941:
	goto	l10666
u12940:
	line	657
	
l10660:	
;mfrc500.c: 656: {
;mfrc500.c: 657: MInfo.cmd = 0x93;
	movlw	(093h)
	movwf	(_MInfo)
	line	658
	
l10662:	
;mfrc500.c: 658: WriteRC(0x0F,nbits);
	movf	(Mf500PiccCascAnticoll@nbits),w
	movwf	(WriteRC@data)
	movlw	(0Fh)
	fcall	_WriteRC
	goto	l10666
	line	663
	
l10664:	
;mfrc500.c: 661: else
;mfrc500.c: 662: {
;mfrc500.c: 663: nbytes = bcnt / 8;
	movf	(Mf500PiccCascAnticoll@bcnt),w
	movwf	(??_Mf500PiccCascAnticoll+0)+0
	lsrf	(??_Mf500PiccCascAnticoll+0)+0,f
	lsrf	(??_Mf500PiccCascAnticoll+0)+0,f
	lsrf	(??_Mf500PiccCascAnticoll+0)+0,f
	movf	0+(??_Mf500PiccCascAnticoll+0)+0,w
	movwf	(Mf500PiccCascAnticoll@nbytes)
	line	665
	
l10666:	
;mfrc500.c: 664: }
;mfrc500.c: 665: MSndBuffer[0] = select_code;
	movlb 0	; select bank0
	movf	(Mf500PiccCascAnticoll@select_code),w
	movlb 1	; select bank1
	movwf	(_MSndBuffer)^080h
	line	666
	
l10668:	
;mfrc500.c: 666: MSndBuffer[1] = 0x20 + ((bcnt/8) << 4) + nbits;
	movlb 0	; select bank0
	movf	(Mf500PiccCascAnticoll@bcnt),w
	movwf	(??_Mf500PiccCascAnticoll+0)+0
	lsrf	(??_Mf500PiccCascAnticoll+0)+0,f
	lsrf	(??_Mf500PiccCascAnticoll+0)+0,f
	lsrf	(??_Mf500PiccCascAnticoll+0)+0,f
	movf	0+(??_Mf500PiccCascAnticoll+0)+0,w
	swapf	wreg,f
	andlw	(0ffh shl 4) & 0ffh
	addwf	(Mf500PiccCascAnticoll@nbits),w
	addlw	020h
	movlb 1	; select bank1
	movwf	0+(_MSndBuffer)^080h+01h
	line	667
	
l10670:	
;mfrc500.c: 667: for (i = 0; i < nbytes; i++)
	movlb 0	; select bank0
	clrf	(Mf500PiccCascAnticoll@i)
	goto	l10676
	line	669
	
l10672:	
;mfrc500.c: 668: {
;mfrc500.c: 669: MSndBuffer[i + 2] = snr_in[i];
	movf	(Mf500PiccCascAnticoll@i),w
	addlw	_MSndBuffer+02h&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(Mf500PiccCascAnticoll@i),w
	addlw	Mf500PiccCascAnticoll@snr_in&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	line	667
	
l10674:	
	incf	(Mf500PiccCascAnticoll@i),f
	
l10676:	
	movf	(Mf500PiccCascAnticoll@nbytes),w
	subwf	(Mf500PiccCascAnticoll@i),w
	skipc
	goto	u12951
	goto	u12950
u12951:
	goto	l10672
u12950:
	line	671
	
l10678:	
;mfrc500.c: 670: }
;mfrc500.c: 671: MInfo.nBytesToSend = 2 + nbytes;
	movf	(Mf500PiccCascAnticoll@nbytes),w
	addlw	02h
	movwf	0+(_MInfo)+03h
	line	672
	
l10680:	
;mfrc500.c: 672: ret_status = PcdSingleResponseCmd(0x1e);
	movlw	(01Eh)
	fcall	_PcdSingleResponseCmd
	movwf	(Mf500PiccCascAnticoll@ret_status)
	line	673
	
l10682:	
;mfrc500.c: 673: if (nbits == 7)
	movf	(Mf500PiccCascAnticoll@nbits),w
	xorlw	07h&0ffh
	skipz
	goto	u12961
	goto	u12960
u12961:
	goto	l10702
u12960:
	line	675
	
l10684:	
;mfrc500.c: 674: {
;mfrc500.c: 675: dummyShift1 = 0x00;
	clrf	(Mf500PiccCascAnticoll@dummyShift1)
	line	676
;mfrc500.c: 676: for (i = 0; i < MInfo.nBytesReceived; i++)
	clrf	(Mf500PiccCascAnticoll@i)
	goto	l10694
	line	678
	
l10686:	
;mfrc500.c: 677: {
;mfrc500.c: 678: dummyShift2 = MRcvBuffer[i];
	movf	(Mf500PiccCascAnticoll@i),w
	addlw	_MRcvBuffer&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(Mf500PiccCascAnticoll@dummyShift2)
	line	679
	
l10688:	
;mfrc500.c: 679: MRcvBuffer[i] = (dummyShift1 >> (i+1)) | (MRcvBuffer[i] << (7-i));
	movf	(Mf500PiccCascAnticoll@i),w
	addlw	_MRcvBuffer&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	(Mf500PiccCascAnticoll@i),w
	addlw	_MRcvBuffer&0ffh
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	movwf	(??_Mf500PiccCascAnticoll+0)+0
	movf	(Mf500PiccCascAnticoll@i),w
	sublw	07h
	incf	wreg,f
	goto	u12974
u12975:
	lslf	(??_Mf500PiccCascAnticoll+0)+0,f
u12974:
	decfsz	wreg,f
	goto	u12975
	movf	(Mf500PiccCascAnticoll@dummyShift1),w
	movwf	(??_Mf500PiccCascAnticoll+1)+0
	movf	(Mf500PiccCascAnticoll@i),w
	addlw	01h
	incf	wreg,f
	goto	u12984
u12985:
	lsrf	(??_Mf500PiccCascAnticoll+1)+0,f
u12984:
	decfsz	wreg,f
	goto	u12985
	movf	0+(??_Mf500PiccCascAnticoll+1)+0,w
	iorwf	0+(??_Mf500PiccCascAnticoll+0)+0,w
	movwf	indf1
	line	680
	
l10690:	
;mfrc500.c: 680: dummyShift1 = dummyShift2;
	movf	(Mf500PiccCascAnticoll@dummyShift2),w
	movwf	(Mf500PiccCascAnticoll@dummyShift1)
	line	676
	
l10692:	
	incf	(Mf500PiccCascAnticoll@i),f
	
l10694:	
	movf	0+(_MInfo)+04h,w
	subwf	(Mf500PiccCascAnticoll@i),w
	skipc
	goto	u12991
	goto	u12990
u12991:
	goto	l10686
u12990:
	line	682
	
l10696:	
;mfrc500.c: 681: }
;mfrc500.c: 682: MInfo.nBitsReceived -= MInfo.nBytesReceived;
	movf	0+(_MInfo)+04h,w
	subwf	0+(_MInfo)+05h,f
	line	683
	
l10698:	
;mfrc500.c: 683: if ( MInfo.collPos )
	movf	0+(_MInfo)+07h,w
	skipz
	goto	u13000
	goto	l10702
u13000:
	line	684
	
l10700:	
;mfrc500.c: 684: MInfo.collPos += 7 - (MInfo.collPos + 6) / 9;
	movf	0+(_MInfo)+07h,w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	movlw	06h
	addwf	(___awdiv@dividend),f
	skipnc
	incf	(___awdiv@dividend+1),f
	movlw	09h
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	sublw	07h
	addwf	0+(_MInfo)+07h,f
	line	686
	
l10702:	
;mfrc500.c: 685: }
;mfrc500.c: 686: if ( (ret_status == 0) || (ret_status == (-24)))
	movf	(Mf500PiccCascAnticoll@ret_status),w
	skipz
	goto	u13010
	goto	l10706
u13010:
	
l10704:	
	movf	(Mf500PiccCascAnticoll@ret_status),w
	xorlw	-24&0ffh
	skipz
	goto	u13021
	goto	u13020
u13021:
	goto	l10740
u13020:
	line	688
	
l10706:	
;mfrc500.c: 687: {
;mfrc500.c: 688: if ( MInfo.nBitsReceived != (40 - bcnt) )
	movlw	high(028h)
	movwf	(??_Mf500PiccCascAnticoll+0)+0+1
	movf	(Mf500PiccCascAnticoll@bcnt),w
	sublw	low(028h)
	movwf	(??_Mf500PiccCascAnticoll+0)+0
	skipc
	decf	(??_Mf500PiccCascAnticoll+0)+0+1,f
	movf	0+(_MInfo)+05h,w
	movwf	(??_Mf500PiccCascAnticoll+2)+0
	clrf	(??_Mf500PiccCascAnticoll+2)+0+1
	movf	1+(??_Mf500PiccCascAnticoll+0)+0,w
	xorwf	1+(??_Mf500PiccCascAnticoll+2)+0,w
	skipz
	goto	u13035
	movf	0+(??_Mf500PiccCascAnticoll+0)+0,w
	xorwf	0+(??_Mf500PiccCascAnticoll+2)+0,w
u13035:

	skipnz
	goto	u13031
	goto	u13030
u13031:
	goto	l10710
u13030:
	line	690
	
l10708:	
;mfrc500.c: 689: {
;mfrc500.c: 690: ret_status = (-11);
	movlw	(-11)
	movwf	(Mf500PiccCascAnticoll@ret_status)
	line	691
;mfrc500.c: 691: }
	goto	l10740
	line	694
	
l10710:	
;mfrc500.c: 692: else
;mfrc500.c: 693: {
;mfrc500.c: 694: byteOffset = 0;
	clrf	(Mf500PiccCascAnticoll@byteOffset)
	line	695
	
l10712:	
;mfrc500.c: 695: if (nbits != 0)
	movf	(Mf500PiccCascAnticoll@nbits),w
	skipz
	goto	u13040
	goto	l10718
u13040:
	line	697
	
l10714:	
;mfrc500.c: 696: {
;mfrc500.c: 697: snr_in[nbytes - 1] = snr_in[nbytes - 1] | MRcvBuffer[0];
	movf	(Mf500PiccCascAnticoll@nbytes),w
	addlw	0FFh
	addlw	Mf500PiccCascAnticoll@snr_in&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(Mf500PiccCascAnticoll@nbytes),w
	addlw	0FFh
	addlw	Mf500PiccCascAnticoll@snr_in&0ffh
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movlb 2	; select bank2
	iorwf	(_MRcvBuffer)^0100h,w
	movwf	indf1
	line	698
	
l10716:	
;mfrc500.c: 698: byteOffset = 1;
	movlb 0	; select bank0
	clrf	(Mf500PiccCascAnticoll@byteOffset)
	incf	(Mf500PiccCascAnticoll@byteOffset),f
	line	700
	
l10718:	
;mfrc500.c: 699: }
;mfrc500.c: 700: for (i = 0; i < (4 - nbytes); i++)
	clrf	(Mf500PiccCascAnticoll@i)
	goto	l10724
	line	702
	
l10720:	
;mfrc500.c: 701: {
;mfrc500.c: 702: snr_in[nbytes + i] = MRcvBuffer[i + byteOffset];
	movlw	(Mf500PiccCascAnticoll@snr_in)&0ffh
	movlb 0	; select bank0
	addwf	(Mf500PiccCascAnticoll@i),w
	movwf	(??_Mf500PiccCascAnticoll+0)+0
	movf	(Mf500PiccCascAnticoll@nbytes),w
	addwf	0+(??_Mf500PiccCascAnticoll+0)+0,w
	movwf	(??_Mf500PiccCascAnticoll+1)+0
	movf	0+(??_Mf500PiccCascAnticoll+1)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(_MRcvBuffer)&0ffh
	addwf	(Mf500PiccCascAnticoll@byteOffset),w
	movwf	(??_Mf500PiccCascAnticoll+2)+0
	movf	(Mf500PiccCascAnticoll@i),w
	addwf	0+(??_Mf500PiccCascAnticoll+2)+0,w
	movwf	(??_Mf500PiccCascAnticoll+3)+0
	movf	0+(??_Mf500PiccCascAnticoll+3)+0,w
	movwf	fsr0l
	movlw 1	; select bank2/3
	movwf fsr0h	
	
	movf	indf0,w
	movwf	indf1
	line	700
	
l10722:	
	incf	(Mf500PiccCascAnticoll@i),f
	
l10724:	
	movlw	high(04h)
	movwf	(??_Mf500PiccCascAnticoll+0)+0+1
	movf	(Mf500PiccCascAnticoll@nbytes),w
	sublw	low(04h)
	movwf	(??_Mf500PiccCascAnticoll+0)+0
	skipc
	decf	(??_Mf500PiccCascAnticoll+0)+0+1,f
	movf	1+(??_Mf500PiccCascAnticoll+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u13055
	movf	0+(??_Mf500PiccCascAnticoll+0)+0,w
	subwf	(Mf500PiccCascAnticoll@i),w
u13055:

	skipc
	goto	u13051
	goto	u13050
u13051:
	goto	l10720
u13050:
	line	704
	
l10726:	
;mfrc500.c: 703: }
;mfrc500.c: 704: if (ret_status != (-24) )
	movlb 0	; select bank0
	movf	(Mf500PiccCascAnticoll@ret_status),w
	xorlw	-24&0ffh
	skipnz
	goto	u13061
	goto	u13060
u13061:
	goto	l10736
u13060:
	line	706
	
l10728:	
;mfrc500.c: 705: {
;mfrc500.c: 706: snr_crc = snr_in[0] ^ snr_in[1] ^ snr_in[2] ^ snr_in[3];
	movf	0+(Mf500PiccCascAnticoll@snr_in)+01h,w
	xorwf	0+(Mf500PiccCascAnticoll@snr_in)+02h,w
	xorwf	0+(Mf500PiccCascAnticoll@snr_in)+03h,w
	xorwf	(Mf500PiccCascAnticoll@snr_in),w
	movwf	(Mf500PiccCascAnticoll@snr_crc)
	line	707
	
l10730:	
;mfrc500.c: 707: snr_check = MRcvBuffer[MInfo.nBytesReceived - 1];
	movf	0+(_MInfo)+04h,w
	addlw	_MRcvBuffer+0FFh&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movwf	(Mf500PiccCascAnticoll@snr_check)
	line	708
	
l10732:	
;mfrc500.c: 708: if (snr_crc != snr_check)
	movf	(Mf500PiccCascAnticoll@snr_crc),w
	xorwf	(Mf500PiccCascAnticoll@snr_check),w
	skipnz
	goto	u13071
	goto	u13070
u13071:
	goto	l1019
u13070:
	line	710
	
l10734:	
;mfrc500.c: 709: {
;mfrc500.c: 710: ret_status = (-8);
	movlw	(-8)
	movwf	(Mf500PiccCascAnticoll@ret_status)
	line	711
;mfrc500.c: 711: }
	goto	l10740
	line	712
	
l1019:	
	line	714
;mfrc500.c: 712: else
;mfrc500.c: 713: {
;mfrc500.c: 714: complete = 1;
	clrf	(Mf500PiccCascAnticoll@complete)
	incf	(Mf500PiccCascAnticoll@complete),f
	goto	l10740
	line	719
	
l10736:	
;mfrc500.c: 717: else
;mfrc500.c: 718: {
;mfrc500.c: 719: bcnt = bcnt + MInfo.collPos - nbits;
	movf	(Mf500PiccCascAnticoll@nbits),w
	subwf	0+(_MInfo)+07h,w
	addwf	(Mf500PiccCascAnticoll@bcnt),f
	line	720
	
l10738:	
;mfrc500.c: 720: ret_status = 0;
	clrf	(Mf500PiccCascAnticoll@ret_status)
	line	646
	
l10740:	
	movf	(Mf500PiccCascAnticoll@complete),f
	skipz
	goto	u13081
	goto	u13080
u13081:
	goto	l10744
u13080:
	
l10742:	
	movf	(Mf500PiccCascAnticoll@ret_status),w
	skipz
	goto	u13090
	goto	l10644
u13090:
	line	725
	
l10744:	
;mfrc500.c: 721: }
;mfrc500.c: 722: }
;mfrc500.c: 723: }
;mfrc500.c: 724: }
;mfrc500.c: 725: if (ret_status == 0)
	movf	(Mf500PiccCascAnticoll@ret_status),f
	skipz
	goto	u13101
	goto	u13100
u13101:
	goto	l10748
u13100:
	line	727
	
l10746:	
;mfrc500.c: 726: {
;mfrc500.c: 727: memcpy(snr, snr_in, 4);
	movlw	low(Mf500PiccCascAnticoll@snr_in)
	movwf	(memcpy@s1)
	movlw	high(Mf500PiccCascAnticoll@snr_in)
	movwf	(memcpy@s1+1)
	movlw	04h
	movwf	(memcpy@n)
	clrf	(memcpy@n+1)
	movf	(Mf500PiccCascAnticoll@snr),w
	fcall	_memcpy
	line	728
;mfrc500.c: 728: }
	goto	l10762
	line	731
	
l10748:	
;mfrc500.c: 729: else
;mfrc500.c: 730: {
;mfrc500.c: 731: for (i = 0; i < 4; i++)
	clrf	(Mf500PiccCascAnticoll@i)
	line	732
	
l10754:	
;mfrc500.c: 732: snr[i] = 0;
	movf	(Mf500PiccCascAnticoll@i),w
	addwf	(Mf500PiccCascAnticoll@snr),w
	movwf	(??_Mf500PiccCascAnticoll+0)+0
	movf	0+(??_Mf500PiccCascAnticoll+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	731
	
l10756:	
	incf	(Mf500PiccCascAnticoll@i),f
	
l10758:	
	movlw	(04h)
	subwf	(Mf500PiccCascAnticoll@i),w
	skipc
	goto	u13111
	goto	u13110
u13111:
	goto	l10754
u13110:
	line	733
	
l10760:	
;mfrc500.c: 733: memcpy(snr, "0000", 4);
	movlw	low(STR_1|8000h)
	movwf	(memcpy@s1)
	movlw	high(STR_1|8000h)
	movwf	((memcpy@s1))+1
	movlw	04h
	movwf	(memcpy@n)
	clrf	(memcpy@n+1)
	movf	(Mf500PiccCascAnticoll@snr),w
	fcall	_memcpy
	line	735
	
l10762:	
;mfrc500.c: 734: }
;mfrc500.c: 735: ClearBitMask(0x1A, 0x20);
	movlw	(020h)
	movwf	(ClearBitMask@mask)
	movlw	(01Ah)
	fcall	_ClearBitMask
	line	737
	
l10764:	
;mfrc500.c: 737: return ret_status;
	movlb 0	; select bank0
	movf	(Mf500PiccCascAnticoll@ret_status),w
	line	738
	
l1029:	
	return
	opt stack 0
GLOBAL	__end_of_Mf500PiccCascAnticoll
	__end_of_Mf500PiccCascAnticoll:
	signat	_Mf500PiccCascAnticoll,12409
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    1[COMMON] int 
;;  dividend        2    3[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    1[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mf500PiccCascAnticoll
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awdiv.c"
	line	6
global __ptext38
__ptext38:	;psect for function ___awdiv
psect	text38
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 10
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l10992:	
	clrf	(___awdiv@sign)
	line	15
	
l10994:	
	btfss	(___awdiv@divisor+1),7
	goto	u13261
	goto	u13260
u13261:
	goto	l11000
u13260:
	line	16
	
l10996:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l10998:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l11000:	
	btfss	(___awdiv@dividend+1),7
	goto	u13271
	goto	u13270
u13271:
	goto	l11006
u13270:
	line	20
	
l11002:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l11004:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l11006:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l11008:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u13281
	goto	u13280
u13281:
	goto	l11028
u13280:
	line	25
	
l11010:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l11014
	line	27
	
l11012:	
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l11014:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u13291
	goto	u13290
u13291:
	goto	l11012
u13290:
	line	31
	
l11016:	
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l11018:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u13305
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u13305:
	skipc
	goto	u13301
	goto	u13300
u13301:
	goto	l11024
u13300:
	line	33
	
l11020:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	34
	
l11022:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l11024:	
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l11026:	
	decfsz	(___awdiv@counter),f
	goto	u13311
	goto	u13310
u13311:
	goto	l11016
u13310:
	line	39
	
l11028:	
	movf	(___awdiv@sign),w
	skipz
	goto	u13320
	goto	l11032
u13320:
	line	40
	
l11030:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l11032:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l1549:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_read_id

;; *************** function _read_id *****************
;; Defined at:
;;		line 503 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Mf500PiccSelect
;; This function is called by:
;;		_checkpsw_super
;;		_handle_ic_card
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	503
global __ptext39
__ptext39:	;psect for function _read_id
psect	text39
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	503
	global	__size_of_read_id
	__size_of_read_id	equ	__end_of_read_id-_read_id
	
_read_id:	
;incstack = 0
	opt	stack 6
; Regs used in _read_id: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	508
	
l9554:	
;handle_ic_card.c: 508: if (Mf500PiccSelect(snr_rc500) == 0)
	movlw	(_snr_rc500)&0ffh
	fcall	_Mf500PiccSelect
	iorlw	0
	skipz
	goto	u11861
	goto	u11860
u11861:
	goto	l9562
u11860:
	line	510
	
l9556:	
;handle_ic_card.c: 509: {
;handle_ic_card.c: 510: return 0x01;
	movlw	(01h)
	goto	l453
	line	514
	
l9562:	
;handle_ic_card.c: 512: else
;handle_ic_card.c: 513: {
;handle_ic_card.c: 514: return 0x00;
	movlw	(0)
	line	516
	
l453:	
	return
	opt stack 0
GLOBAL	__end_of_read_id
	__end_of_read_id:
	signat	_read_id,89
	global	_Mf500PiccSelect

;; *************** function _Mf500PiccSelect *****************
;; Defined at:
;;		line 785 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  snr             1    wreg     PTR unsigned char 
;;		 -> snr_rc500(4), 
;; Auto vars:     Size  Location     Type
;;  snr             1   13[BANK0 ] PTR unsigned char 
;;		 -> snr_rc500(4), 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Mf500PiccCascSelect
;; This function is called by:
;;		_read_id
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	785
global __ptext40
__ptext40:	;psect for function _Mf500PiccSelect
psect	text40
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	785
	global	__size_of_Mf500PiccSelect
	__size_of_Mf500PiccSelect	equ	__end_of_Mf500PiccSelect-_Mf500PiccSelect
	
_Mf500PiccSelect:	
;incstack = 0
	opt	stack 6
; Regs used in _Mf500PiccSelect: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;Mf500PiccSelect@snr stored from wreg
	line	786
	movwf	(Mf500PiccSelect@snr)
	line	791
	
l9566:	
;mfrc500.c: 791: return Mf500PiccCascSelect(0x93, snr);
	movf	(Mf500PiccSelect@snr),w
	movwf	(Mf500PiccCascSelect@snr)
	movlw	(093h)
	fcall	_Mf500PiccCascSelect
	line	792
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_Mf500PiccSelect
	__end_of_Mf500PiccSelect:
	signat	_Mf500PiccSelect,4217
	global	_Mf500PiccCascSelect

;; *************** function _Mf500PiccCascSelect *****************
;; Defined at:
;;		line 750 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  select_code     1    wreg     unsigned char 
;;  snr             1   10[BANK0 ] PTR unsigned char 
;;		 -> snr_rc500(4), 
;; Auto vars:     Size  Location     Type
;;  select_code     1   11[BANK0 ] unsigned char 
;;  ret_status      1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ClearBitMask
;;		_PcdSetTmo
;;		_PcdSingleResponseCmd
;;		_WriteRC
;;		_memcpy
;; This function is called by:
;;		_Mf500PiccSelect
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	line	750
global __ptext41
__ptext41:	;psect for function _Mf500PiccCascSelect
psect	text41
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	750
	global	__size_of_Mf500PiccCascSelect
	__size_of_Mf500PiccCascSelect	equ	__end_of_Mf500PiccCascSelect-_Mf500PiccCascSelect
	
_Mf500PiccCascSelect:	
;incstack = 0
	opt	stack 6
; Regs used in _Mf500PiccCascSelect: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;Mf500PiccCascSelect@select_code stored from wreg
	line	751
	movwf	(Mf500PiccCascSelect@select_code)
	line	756
	
l10768:	
	line	758
	
l10770:	
;mfrc500.c: 758: PcdSetTmo(106);
	movlw	06Ah
	movwf	(PcdSetTmo@tmoLength)
	clrf	(PcdSetTmo@tmoLength+1)
	fcall	_PcdSetTmo
	line	759
	
l10772:	
;mfrc500.c: 759: WriteRC(0x22, 0x0F);
	movlw	(0Fh)
	movwf	(WriteRC@data)
	movlw	(022h)
	fcall	_WriteRC
	line	760
	
l10774:	
;mfrc500.c: 760: ClearBitMask(0x09, 0x08);
	movlw	(08h)
	movwf	(ClearBitMask@mask)
	movlw	(09h)
	fcall	_ClearBitMask
	line	761
	
l10776:	
;mfrc500.c: 761: MInfo.cmd = 0; MInfo.status = 0; MInfo.irqSource = 0; MInfo.nBytesSent = 0; MInfo.nBytesToSend = 0; MInfo.nBytesReceived = 0; MInfo.nBitsReceived = 0; MInfo.collPos = 0;;
	movlb 0	; select bank0
	clrf	(_MInfo)
	
l10778:	
	clrf	0+(_MInfo)+01h
	
l10780:	
	clrf	0+(_MInfo)+06h
	
l10782:	
	clrf	0+(_MInfo)+02h
	
l10784:	
	clrf	0+(_MInfo)+03h
	
l10786:	
	clrf	0+(_MInfo)+04h
	
l10788:	
	clrf	0+(_MInfo)+05h
	
l10790:	
	clrf	0+(_MInfo)+07h
	line	762
	
l10792:	
;mfrc500.c: 762: MSndBuffer[0] = select_code;
	movf	(Mf500PiccCascSelect@select_code),w
	movlb 1	; select bank1
	movwf	(_MSndBuffer)^080h
	line	763
	
l10794:	
;mfrc500.c: 763: MSndBuffer[1] = 0x70;
	movlw	(070h)
	movwf	0+(_MSndBuffer)^080h+01h
	line	764
	
l10796:	
;mfrc500.c: 764: memcpy(MSndBuffer + 2, snr, 4);
	movlb 0	; select bank0
	movf	(Mf500PiccCascSelect@snr),w
	movwf	(memcpy@s1)
	movlw	(0x0/2)
	movwf	(memcpy@s1+1)
	movlw	04h
	movwf	(memcpy@n)
	clrf	(memcpy@n+1)
	movlw	(_MSndBuffer+02h)&0ffh
	fcall	_memcpy
	line	765
	
l10798:	
;mfrc500.c: 765: MSndBuffer[6] = MSndBuffer[2] ^ MSndBuffer[3] ^ MSndBuffer[4] ^ MSndBuffer[5];
	movlb 1	; select bank1
	movf	0+(_MSndBuffer)^080h+02h,w
	xorwf	0+(_MSndBuffer)^080h+03h,w
	xorwf	0+(_MSndBuffer)^080h+04h,w
	xorwf	0+(_MSndBuffer)^080h+05h,w
	movwf	0+(_MSndBuffer)^080h+06h
	line	766
	
l10800:	
;mfrc500.c: 766: MInfo.nBytesToSend = 0x07;
	movlw	(07h)
	movlb 0	; select bank0
	movwf	0+(_MInfo)+03h
	line	767
	
l10802:	
;mfrc500.c: 767: ret_status = PcdSingleResponseCmd(0x1e);
	movlw	(01Eh)
	fcall	_PcdSingleResponseCmd
	movwf	(Mf500PiccCascSelect@ret_status)
	line	769
	
l10804:	
;mfrc500.c: 769: if (ret_status == 0)
	movf	(Mf500PiccCascSelect@ret_status),f
	skipz
	goto	u13121
	goto	u13120
u13121:
	goto	l10810
u13120:
	line	771
	
l10806:	
;mfrc500.c: 770: {
;mfrc500.c: 771: if (MInfo.nBitsReceived != 8)
	movf	0+(_MInfo)+05h,w
	xorlw	08h&0ffh
	skipnz
	goto	u13131
	goto	u13130
u13131:
	goto	l10810
u13130:
	line	773
	
l10808:	
;mfrc500.c: 772: {
;mfrc500.c: 773: ret_status = (-11);
	movlw	(0F5h)
	movwf	(Mf500PiccCascSelect@ret_status)
	line	781
;mfrc500.c: 774: }
	
l10810:	
;mfrc500.c: 778: }
;mfrc500.c: 779: }
;mfrc500.c: 781: return ret_status;
	movf	(Mf500PiccCascSelect@ret_status),w
	line	782
	
l1038:	
	return
	opt stack 0
GLOBAL	__end_of_Mf500PiccCascSelect
	__end_of_Mf500PiccCascSelect:
	signat	_Mf500PiccCascSelect,8313
	global	_ClearBitMask

;; *************** function _ClearBitMask *****************
;; Defined at:
;;		line 153 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  reg             1    wreg     unsigned char 
;;  mask            1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  reg             1    8[COMMON] unsigned char 
;;  tmp             1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ReadRC
;;		_WriteRC
;; This function is called by:
;;		_PcdRfReset
;;		_RC500Config
;;		_Mf500PiccCascAnticoll
;;		_Mf500PiccCascSelect
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1
	line	153
global __ptext42
__ptext42:	;psect for function _ClearBitMask
psect	text42
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	153
	global	__size_of_ClearBitMask
	__size_of_ClearBitMask	equ	__end_of_ClearBitMask-_ClearBitMask
	
_ClearBitMask:	
;incstack = 0
	opt	stack 9
; Regs used in _ClearBitMask: [wreg+status,2+status,0+pclath+cstack]
;ClearBitMask@reg stored from wreg
	line	154
	movwf	(ClearBitMask@reg)
	line	158
	
l10204:	
	line	160
	
l10206:	
;mfrc500.c: 160: tmp = ReadRC(reg);
	movf	(ClearBitMask@reg),w
	fcall	_ReadRC
	movwf	(ClearBitMask@tmp)
	line	161
	
l10208:	
;mfrc500.c: 161: WriteRC(reg, tmp & ~mask);
	comf	(ClearBitMask@mask),w
	movwf	(WriteRC@data)
	movf	(ClearBitMask@tmp),w
	andwf	(WriteRC@data),f
	movf	(ClearBitMask@reg),w
	fcall	_WriteRC
	line	162
	
l872:	
	return
	opt stack 0
GLOBAL	__end_of_ClearBitMask
	__end_of_ClearBitMask:
	signat	_ClearBitMask,8312
	global	_checkpsw

;; *************** function _checkpsw *****************
;; Defined at:
;;		line 573 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Mf500PiccAuthState
;;		_Mf500PiccLoadKey
;; This function is called by:
;;		_handle_ic_card
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	573
global __ptext43
__ptext43:	;psect for function _checkpsw
psect	text43
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_ic_card.c"
	line	573
	global	__size_of_checkpsw
	__size_of_checkpsw	equ	__end_of_checkpsw-_checkpsw
	
_checkpsw:	
;incstack = 0
	opt	stack 7
; Regs used in _checkpsw: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	577
	
l9710:	
;handle_ic_card.c: 577: if (Mf500PiccLoadKey(keys) == 0)
	movlw	(_keys)&0ffh
	fcall	_Mf500PiccLoadKey
	iorlw	0
	skipz
	goto	u12011
	goto	u12010
u12011:
	goto	l9720
u12010:
	line	579
	
l9712:	
;handle_ic_card.c: 578: {
;handle_ic_card.c: 579: if (Mf500PiccAuthState(0x60, snr_rc500, 4 * sector_number) == 0)
	movlw	(_snr_rc500)&0ffh
	movwf	(Mf500PiccAuthState@snr)
	movf	(_sector_number),w
	addwf	wreg,w
	addwf	wreg,w
	movwf	(Mf500PiccAuthState@block)
	movlw	(060h)
	fcall	_Mf500PiccAuthState
	iorlw	0
	skipz
	goto	u12021
	goto	u12020
u12021:
	goto	l9720
u12020:
	line	581
	
l9714:	
;handle_ic_card.c: 580: {
;handle_ic_card.c: 581: return 0x01;
	movlw	(01h)
	goto	l475
	line	585
	
l9720:	
;handle_ic_card.c: 583: else
;handle_ic_card.c: 584: {
;handle_ic_card.c: 585: return 0x00;
	movlw	(0)
	line	592
	
l475:	
	return
	opt stack 0
GLOBAL	__end_of_checkpsw
	__end_of_checkpsw:
	signat	_checkpsw,89
	global	_Mf500PiccLoadKey

;; *************** function _Mf500PiccLoadKey *****************
;; Defined at:
;;		line 877 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  keys            1    wreg     PTR unsigned char 
;;		 -> keys(6), keys_super(6), 
;; Auto vars:     Size  Location     Type
;;  keys            1   10[BANK0 ] PTR unsigned char 
;;		 -> keys(6), keys_super(6), 
;;  ret_status      1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_FlushFIFO
;;		_Mf500HostCodeKey
;;		_PcdSetTmo
;;		_PcdSingleResponseCmd
;; This function is called by:
;;		_checkpsw_super
;;		_checkpsw
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	877
global __ptext44
__ptext44:	;psect for function _Mf500PiccLoadKey
psect	text44
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	877
	global	__size_of_Mf500PiccLoadKey
	__size_of_Mf500PiccLoadKey	equ	__end_of_Mf500PiccLoadKey-_Mf500PiccLoadKey
	
_Mf500PiccLoadKey:	
;incstack = 0
	opt	stack 7
; Regs used in _Mf500PiccLoadKey: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;Mf500PiccLoadKey@keys stored from wreg
	line	878
	movlb 0	; select bank0
	movwf	(Mf500PiccLoadKey@keys)
	line	881
	
l9618:	
	line	883
	
l9620:	
;mfrc500.c: 883: Mf500HostCodeKey(keys, MSndBuffer);
	movlw	(_MSndBuffer)&0ffh
	movwf	(Mf500HostCodeKey@coded)
	movf	(Mf500PiccLoadKey@keys),w
	fcall	_Mf500HostCodeKey
	line	885
	
l9622:	
;mfrc500.c: 885: PcdSetTmo(106);
	movlw	06Ah
	movwf	(PcdSetTmo@tmoLength)
	clrf	(PcdSetTmo@tmoLength+1)
	fcall	_PcdSetTmo
	line	886
	
l9624:	
;mfrc500.c: 886: FlushFIFO();
	fcall	_FlushFIFO
	line	887
	
l9626:	
;mfrc500.c: 887: MInfo.cmd = 0; MInfo.status = 0; MInfo.irqSource = 0; MInfo.nBytesSent = 0; MInfo.nBytesToSend = 0; MInfo.nBytesReceived = 0; MInfo.nBitsReceived = 0; MInfo.collPos = 0;;
	movlb 0	; select bank0
	clrf	(_MInfo)
	
l9628:	
	clrf	0+(_MInfo)+01h
	
l9630:	
	clrf	0+(_MInfo)+06h
	
l9632:	
	clrf	0+(_MInfo)+02h
	
l9634:	
	clrf	0+(_MInfo)+03h
	
l9636:	
	clrf	0+(_MInfo)+04h
	
l9638:	
	clrf	0+(_MInfo)+05h
	
l9640:	
	clrf	0+(_MInfo)+07h
	line	888
	
l9642:	
;mfrc500.c: 888: MInfo.nBytesToSend = 12;
	movlw	(0Ch)
	movwf	0+(_MInfo)+03h
	line	889
	
l9644:	
;mfrc500.c: 889: ret_status = PcdSingleResponseCmd(0x19);
	movlw	(019h)
	fcall	_PcdSingleResponseCmd
	movwf	(Mf500PiccLoadKey@ret_status)
	line	891
	
l9646:	
;mfrc500.c: 891: return ret_status;
	movf	(Mf500PiccLoadKey@ret_status),w
	line	892
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_Mf500PiccLoadKey
	__end_of_Mf500PiccLoadKey:
	signat	_Mf500PiccLoadKey,4217
	global	_Mf500HostCodeKey

;; *************** function _Mf500HostCodeKey *****************
;; Defined at:
;;		line 795 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  uncoded         1    wreg     PTR unsigned char 
;;		 -> keys(6), keys_super(6), 
;;  coded           1    1[COMMON] PTR unsigned char 
;;		 -> MSndBuffer(16), 
;; Auto vars:     Size  Location     Type
;;  uncoded         1    4[COMMON] PTR unsigned char 
;;		 -> keys(6), keys_super(6), 
;;  cnt             1    7[COMMON] unsigned char 
;;  ln              1    6[COMMON] unsigned char 
;;  hn              1    5[COMMON] unsigned char 
;;  an              1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mf500PiccLoadKey
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1
	line	795
global __ptext45
__ptext45:	;psect for function _Mf500HostCodeKey
psect	text45
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	795
	global	__size_of_Mf500HostCodeKey
	__size_of_Mf500HostCodeKey	equ	__end_of_Mf500HostCodeKey-_Mf500HostCodeKey
	
_Mf500HostCodeKey:	
;incstack = 0
	opt	stack 11
; Regs used in _Mf500HostCodeKey: [wreg+fsr1l+fsr1h+status,2+status,0]
;Mf500HostCodeKey@uncoded stored from wreg
	line	796
	movwf	(Mf500HostCodeKey@uncoded)
	line	800
	
l10814:	
;mfrc500.c: 800: unsigned char cnt = 0;
	clrf	(Mf500HostCodeKey@cnt)
	line	802
;mfrc500.c: 802: unsigned char ln = 0;
	clrf	(Mf500HostCodeKey@ln)
	line	803
;mfrc500.c: 803: unsigned char hn = 0;
	clrf	(Mf500HostCodeKey@hn)
	line	805
;mfrc500.c: 805: for (cnt = 0; cnt < 6; cnt++)
	clrf	(Mf500HostCodeKey@cnt)
	line	807
	
l10820:	
;mfrc500.c: 806: {
;mfrc500.c: 807: ln = uncoded[cnt] & 0x0F;
	movf	(Mf500HostCodeKey@cnt),w
	addwf	(Mf500HostCodeKey@uncoded),w
	movwf	(??_Mf500HostCodeKey+0)+0
	movf	0+(??_Mf500HostCodeKey+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(Mf500HostCodeKey@ln)
	
l10822:	
	movlw	(0Fh)
	andwf	(Mf500HostCodeKey@ln),f
	line	808
	
l10824:	
;mfrc500.c: 808: an = uncoded[cnt];
	movf	(Mf500HostCodeKey@cnt),w
	addwf	(Mf500HostCodeKey@uncoded),w
	movwf	(??_Mf500HostCodeKey+0)+0
	movf	0+(??_Mf500HostCodeKey+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(Mf500HostCodeKey@an)
	line	809
;mfrc500.c: 809: hn = an >> 4;
	swapf	(Mf500HostCodeKey@an),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(Mf500HostCodeKey@hn)
	line	810
	
l10826:	
;mfrc500.c: 810: coded[cnt * 2 + 1] = (~ln << 4) | ln;
	lslf	(Mf500HostCodeKey@cnt),w
	addwf	(Mf500HostCodeKey@coded),w
	movwf	(??_Mf500HostCodeKey+0)+0
	incf	0+(??_Mf500HostCodeKey+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	comf	(Mf500HostCodeKey@ln),w
	swapf	wreg,f
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(Mf500HostCodeKey@ln),w
	movwf	indf1
	line	811
	
l10828:	
;mfrc500.c: 811: coded[cnt * 2] = (~hn << 4) | hn;
	lslf	(Mf500HostCodeKey@cnt),w
	addwf	(Mf500HostCodeKey@coded),w
	movwf	(??_Mf500HostCodeKey+0)+0
	movf	0+(??_Mf500HostCodeKey+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	comf	(Mf500HostCodeKey@hn),w
	swapf	wreg,f
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(Mf500HostCodeKey@hn),w
	movwf	indf1
	line	805
	
l10830:	
	incf	(Mf500HostCodeKey@cnt),f
	movlw	(06h)
	subwf	(Mf500HostCodeKey@cnt),w
	skipc
	goto	u13141
	goto	u13140
u13141:
	goto	l10820
u13140:
	line	815
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_Mf500HostCodeKey
	__end_of_Mf500HostCodeKey:
	signat	_Mf500HostCodeKey,8313
	global	_Mf500PiccAuthState

;; *************** function _Mf500PiccAuthState *****************
;; Defined at:
;;		line 818 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  auth_mode       1    wreg     unsigned char 
;;  snr             1   10[BANK0 ] PTR unsigned char 
;;		 -> snr_rc500(4), 
;;  block           1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  auth_mode       1   12[BANK0 ] unsigned char 
;;  ret_status      1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_PcdSetTmo
;;		_PcdSingleResponseCmd
;;		_ReadRC
;;		_memcpy
;; This function is called by:
;;		_checkpsw_super
;;		_checkpsw
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1
	line	818
global __ptext46
__ptext46:	;psect for function _Mf500PiccAuthState
psect	text46
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	818
	global	__size_of_Mf500PiccAuthState
	__size_of_Mf500PiccAuthState	equ	__end_of_Mf500PiccAuthState-_Mf500PiccAuthState
	
_Mf500PiccAuthState:	
;incstack = 0
	opt	stack 7
; Regs used in _Mf500PiccAuthState: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;Mf500PiccAuthState@auth_mode stored from wreg
	line	819
	movwf	(Mf500PiccAuthState@auth_mode)
	line	824
	
l9650:	
	line	826
	
l9652:	
;mfrc500.c: 826: ret_status = ReadRC(0x0A);
	movlw	(0Ah)
	fcall	_ReadRC
	movlb 0	; select bank0
	movwf	(Mf500PiccAuthState@ret_status)
	line	827
	
l9654:	
;mfrc500.c: 827: if (ret_status != 0)
	movf	(Mf500PiccAuthState@ret_status),w
	skipz
	goto	u11950
	goto	l9662
u11950:
	line	829
	
l9656:	
;mfrc500.c: 828: {
;mfrc500.c: 829: if (ret_status & 0x40)
	btfss	(Mf500PiccAuthState@ret_status),(6)&7
	goto	u11961
	goto	u11960
u11961:
	goto	l9660
u11960:
	line	831
	
l9658:	
;mfrc500.c: 830: {
;mfrc500.c: 831: ret_status = (-9);
	movlw	(0F7h)
	movwf	(Mf500PiccAuthState@ret_status)
	line	832
;mfrc500.c: 832: }
	goto	l1052
	line	835
	
l9660:	
;mfrc500.c: 833: else
;mfrc500.c: 834: {
;mfrc500.c: 835: ret_status = (-4);
	movlw	(0FCh)
	movlb 0	; select bank0
	movwf	(Mf500PiccAuthState@ret_status)
	goto	l1052
	line	840
	
l9662:	
;mfrc500.c: 838: else
;mfrc500.c: 839: {
;mfrc500.c: 840: PcdSetTmo(4);
	movlw	04h
	movwf	(PcdSetTmo@tmoLength)
	clrf	(PcdSetTmo@tmoLength+1)
	fcall	_PcdSetTmo
	line	841
	
l9664:	
;mfrc500.c: 841: MSndBuffer[0] = auth_mode;
	movlb 0	; select bank0
	movf	(Mf500PiccAuthState@auth_mode),w
	movlb 1	; select bank1
	movwf	(_MSndBuffer)^080h
	line	842
	
l9666:	
;mfrc500.c: 842: MSndBuffer[1] = block;
	movlb 0	; select bank0
	movf	(Mf500PiccAuthState@block),w
	movlb 1	; select bank1
	movwf	0+(_MSndBuffer)^080h+01h
	line	843
	
l9668:	
;mfrc500.c: 843: memcpy(MSndBuffer + 2, snr, 4);
	movlb 0	; select bank0
	movf	(Mf500PiccAuthState@snr),w
	movwf	(memcpy@s1)
	movlw	(0x0/2)
	movwf	(memcpy@s1+1)
	movlw	04h
	movwf	(memcpy@n)
	clrf	(memcpy@n+1)
	movlw	(_MSndBuffer+02h)&0ffh
	fcall	_memcpy
	line	844
	
l9670:	
;mfrc500.c: 844: MInfo.cmd = 0; MInfo.status = 0; MInfo.irqSource = 0; MInfo.nBytesSent = 0; MInfo.nBytesToSend = 0; MInfo.nBytesReceived = 0; MInfo.nBitsReceived = 0; MInfo.collPos = 0;;
	clrf	(_MInfo)
	
l9672:	
	clrf	0+(_MInfo)+01h
	
l9674:	
	clrf	0+(_MInfo)+06h
	
l9676:	
	clrf	0+(_MInfo)+02h
	
l9678:	
	clrf	0+(_MInfo)+03h
	
l9680:	
	clrf	0+(_MInfo)+04h
	
l9682:	
	clrf	0+(_MInfo)+05h
	
l9684:	
	clrf	0+(_MInfo)+07h
	line	845
	
l9686:	
;mfrc500.c: 845: MInfo.nBytesToSend = 0x06;
	movlw	(06h)
	movwf	0+(_MInfo)+03h
	line	846
	
l9688:	
;mfrc500.c: 846: ret_status = PcdSingleResponseCmd(0x0C);
	movlw	(0Ch)
	fcall	_PcdSingleResponseCmd
	movwf	(Mf500PiccAuthState@ret_status)
	line	847
	
l9690:	
;mfrc500.c: 847: if (ret_status == 0)
	movf	(Mf500PiccAuthState@ret_status),f
	skipz
	goto	u11971
	goto	u11970
u11971:
	goto	l1052
u11970:
	line	849
	
l9692:	
;mfrc500.c: 848: {
;mfrc500.c: 849: if (ReadRC(0x05) & 0x07)
	movlw	(05h)
	fcall	_ReadRC
	andlw	07h
	btfsc	status,2
	goto	u11981
	goto	u11980
u11981:
	goto	l9696
u11980:
	line	851
	
l9694:	
;mfrc500.c: 850: {
;mfrc500.c: 851: ret_status = (-11);
	movlw	(0F5h)
	movlb 0	; select bank0
	movwf	(Mf500PiccAuthState@ret_status)
	line	852
;mfrc500.c: 852: }
	goto	l1052
	line	855
	
l9696:	
;mfrc500.c: 853: else
;mfrc500.c: 854: {
;mfrc500.c: 855: MInfo.cmd = 0; MInfo.status = 0; MInfo.irqSource = 0; MInfo.nBytesSent = 0; MInfo.nBytesToSend = 0; MInfo.nBytesReceived = 0; MInfo.nBitsReceived = 0; MInfo.collPos = 0;;
	movlb 0	; select bank0
	clrf	(_MInfo)
	clrf	0+(_MInfo)+01h
	clrf	0+(_MInfo)+06h
	clrf	0+(_MInfo)+02h
	clrf	0+(_MInfo)+03h
	clrf	0+(_MInfo)+04h
	clrf	0+(_MInfo)+05h
	clrf	0+(_MInfo)+07h
	line	856
;mfrc500.c: 856: MInfo.nBytesToSend = 0x00;
	clrf	0+(_MInfo)+03h
	line	857
	
l9698:	
;mfrc500.c: 857: ret_status = PcdSingleResponseCmd(0x14);
	movlw	(014h)
	fcall	_PcdSingleResponseCmd
	movwf	(Mf500PiccAuthState@ret_status)
	line	858
	
l9700:	
;mfrc500.c: 858: if (ret_status == 0)
	movf	(Mf500PiccAuthState@ret_status),f
	skipz
	goto	u11991
	goto	u11990
u11991:
	goto	l1052
u11990:
	line	860
	
l9702:	
;mfrc500.c: 859: {
;mfrc500.c: 860: if (ReadRC(0x09) & 0x08)
	movlw	(09h)
	fcall	_ReadRC
	andlw	08h
	btfsc	status,2
	goto	u12001
	goto	u12000
u12001:
	goto	l9660
u12000:
	line	862
	
l9704:	
;mfrc500.c: 861: {
;mfrc500.c: 862: ret_status = 0;
	movlb 0	; select bank0
	clrf	(Mf500PiccAuthState@ret_status)
	line	871
;mfrc500.c: 863: }
	
l1052:	
	line	873
;mfrc500.c: 867: }
;mfrc500.c: 868: }
;mfrc500.c: 869: }
;mfrc500.c: 870: }
;mfrc500.c: 871: }
;mfrc500.c: 873: return ret_status;
	movf	(Mf500PiccAuthState@ret_status),w
	line	874
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of_Mf500PiccAuthState
	__end_of_Mf500PiccAuthState:
	signat	_Mf500PiccAuthState,12409
	global	_memcpy

;; *************** function _memcpy *****************
;; Defined at:
;;		line 11 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\memcpy.c"
;; Parameters:    Size  Location     Type
;;  d1              1    wreg     PTR void 
;;		 -> Mf500PiccCascAnticoll@snr_in(4), MSndBuffer(16), snr_rc500(4), tt1(2), 
;;		 -> read_card_content@data(16), 
;;  s1              2    1[COMMON] PTR const void 
;;		 -> STR_1(5), Mf500PiccCascAnticoll@snr_in(4), MRcvBuffer(16), snr_rc500(4), 
;;		 -> read_card_content@data(16), 
;;  n               2    3[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  d1              1    8[COMMON] PTR void 
;;		 -> Mf500PiccCascAnticoll@snr_in(4), MSndBuffer(16), snr_rc500(4), tt1(2), 
;;		 -> read_card_content@data(16), 
;;  s               2    5[COMMON] PTR const unsigned char 
;;		 -> STR_1(5), Mf500PiccCascAnticoll@snr_in(4), MRcvBuffer(16), snr_rc500(4), 
;;		 -> read_card_content@data(16), 
;;  d               1    7[COMMON] PTR unsigned char 
;;		 -> Mf500PiccCascAnticoll@snr_in(4), MSndBuffer(16), snr_rc500(4), tt1(2), 
;;		 -> read_card_content@data(16), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Mf500PiccCommonRequest
;;		_Mf500PiccCascAnticoll
;;		_Mf500PiccCascSelect
;;		_Mf500PiccAuthState
;;		_Mf500PiccRead
;;		_Mf500PiccWrite
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\memcpy.c"
	line	11
global __ptext47
__ptext47:	;psect for function _memcpy
psect	text47
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\memcpy.c"
	line	11
	global	__size_of_memcpy
	__size_of_memcpy	equ	__end_of_memcpy-_memcpy
	
_memcpy:	
;incstack = 0
	opt	stack 10
; Regs used in _memcpy: [wreg-fsr1h+status,2+status,0+pclath]
;memcpy@d1 stored from wreg
	movwf	(memcpy@d1)
	line	24
	
l10622:	
	movf	(memcpy@s1+1),w
	movwf	(memcpy@s+1)
	movf	(memcpy@s1),w
	movwf	(memcpy@s)
	line	25
	movf	(memcpy@d1),w
	movwf	(memcpy@d)
	line	26
	goto	l10630
	line	27
	
l10624:	
	movf	(memcpy@d),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(memcpy@s),w
	movwf	fsr0l
	movf	((memcpy@s+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	indf1
	
l10626:	
	incf	(memcpy@s),f
	skipnz
	incf	(memcpy@s+1),f
	
l10628:	
	incf	(memcpy@d),f
	line	26
	
l10630:	
	movlw	low(01h)
	subwf	(memcpy@n),f
	movlw	high(01h)
	subwfb	(memcpy@n+1),f
	incf	((memcpy@n)),w
	skipnz
	incf	((memcpy@n+1)),w

	skipz
	goto	u12921
	goto	u12920
u12921:
	goto	l10624
u12920:
	line	32
	
l1786:	
	return
	opt stack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12409
	global	_PcdSingleResponseCmd

;; *************** function _PcdSingleResponseCmd *****************
;; Defined at:
;;		line 412 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    5[BANK0 ] unsigned char 
;;  count02         2    2[BANK0 ] unsigned int 
;;  count01         2    0[BANK0 ] unsigned int 
;;  tmpStatus       1    9[BANK0 ] unsigned char 
;;  ret_status      1    8[BANK0 ] unsigned char 
;;  waitFor         1    7[BANK0 ] unsigned char 
;;  irqEn           1    6[BANK0 ] unsigned char 
;;  lastBits        1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0      10       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      10       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_FlushFIFO
;;		_ISR_RC500
;;		_ReadRC
;;		_SetBitMask
;;		_WriteRC
;; This function is called by:
;;		_Mf500PiccCommonRequest
;;		_Mf500PiccCascAnticoll
;;		_Mf500PiccCascSelect
;;		_Mf500PiccAuthState
;;		_Mf500PiccLoadKey
;;		_Mf500PiccRead
;;		_Mf500PiccWrite
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	412
global __ptext48
__ptext48:	;psect for function _PcdSingleResponseCmd
psect	text48
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	412
	global	__size_of_PcdSingleResponseCmd
	__size_of_PcdSingleResponseCmd	equ	__end_of_PcdSingleResponseCmd-_PcdSingleResponseCmd
	
_PcdSingleResponseCmd:	
;incstack = 0
	opt	stack 6
; Regs used in _PcdSingleResponseCmd: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;PcdSingleResponseCmd@cmd stored from wreg
	line	413
	movwf	(PcdSingleResponseCmd@cmd)
	line	416
	
l10444:	
;mfrc500.c: 416: char ret_status = 0;
	clrf	(PcdSingleResponseCmd@ret_status)
	line	419
;mfrc500.c: 417: unsigned char tmpStatus ;
;mfrc500.c: 418: unsigned char lastBits;
;mfrc500.c: 419: unsigned char irqEn = 0x0;
	clrf	(PcdSingleResponseCmd@irqEn)
	line	420
;mfrc500.c: 420: unsigned char waitFor = 0x0;
	clrf	(PcdSingleResponseCmd@waitFor)
	line	423
	
l10446:	
;mfrc500.c: 421: unsigned int count01, count02;
;mfrc500.c: 423: WriteRC(0x06, 0x3F);
	movlw	(03Fh)
	movwf	(WriteRC@data)
	movlw	(06h)
	fcall	_WriteRC
	line	424
	
l10448:	
;mfrc500.c: 424: WriteRC(0x07, 0x7F);
	movlw	(07Fh)
	movwf	(WriteRC@data)
	movlw	(07h)
	fcall	_WriteRC
	line	425
	
l10450:	
;mfrc500.c: 425: WriteRC(0x01, 0x00);
	clrf	(WriteRC@data)
	movlw	(01h)
	fcall	_WriteRC
	line	426
	
l10452:	
;mfrc500.c: 426: FlushFIFO();
	fcall	_FlushFIFO
	line	427
	
l10454:	
;mfrc500.c: 427: MpIsrInfo = &MInfo;
	movlw	(_MInfo)&0ffh
	movwf	(_MpIsrInfo)
	line	428
	
l10456:	
;mfrc500.c: 428: MpIsrOut = MSndBuffer;
	movlw	(_MSndBuffer)&0ffh
	movlb 0	; select bank0
	movwf	(_MpIsrOut)
	line	429
	
l10458:	
;mfrc500.c: 429: MpIsrIn = MRcvBuffer;
	movlw	(_MRcvBuffer)&0ffh
	movwf	(_MpIsrIn)
	line	430
	
l10460:	
;mfrc500.c: 430: MInfo.irqSource = 0x00;
	clrf	0+(_MInfo)+06h
	line	431
;mfrc500.c: 431: switch (cmd)
	goto	l10492
	line	434
	
l10462:	
;mfrc500.c: 434: irqEn = 0x00;
	clrf	(PcdSingleResponseCmd@irqEn)
	line	435
;mfrc500.c: 435: waitFor = 0x00;
	clrf	(PcdSingleResponseCmd@waitFor)
	line	436
;mfrc500.c: 436: break;
	goto	l10494
	line	438
	
l10464:	
;mfrc500.c: 438: irqEn = 0x11;
	movlw	(011h)
	movwf	(PcdSingleResponseCmd@irqEn)
	line	439
;mfrc500.c: 439: waitFor = 0x10;
	movlw	(010h)
	movwf	(PcdSingleResponseCmd@waitFor)
	line	440
;mfrc500.c: 440: break;
	goto	l10494
	line	442
	
l10466:	
;mfrc500.c: 442: irqEn = 0x07;
	movlw	(07h)
	movwf	(PcdSingleResponseCmd@irqEn)
	line	443
;mfrc500.c: 443: waitFor = 0x04;
	movlw	(04h)
	movwf	(PcdSingleResponseCmd@waitFor)
	line	444
;mfrc500.c: 444: break;
	goto	l10494
	line	448
	
l10468:	
;mfrc500.c: 446: case 0x0B:
;mfrc500.c: 447: case 0x0C:
;mfrc500.c: 448: irqEn = 0x05;
	movlw	(05h)
	movwf	(PcdSingleResponseCmd@irqEn)
	line	449
;mfrc500.c: 449: waitFor = 0x04;
	movlw	(04h)
	movwf	(PcdSingleResponseCmd@waitFor)
	line	450
;mfrc500.c: 450: break;
	goto	l10494
	line	456
	
l10472:	
;mfrc500.c: 456: irqEn = 0x04;
	movlw	(04h)
	movwf	(PcdSingleResponseCmd@irqEn)
	line	457
;mfrc500.c: 457: waitFor = 0x04;
	movlw	(04h)
	movwf	(PcdSingleResponseCmd@waitFor)
	line	458
;mfrc500.c: 458: break;
	goto	l10494
	line	460
	
l10474:	
;mfrc500.c: 460: MInfo.nBitsReceived = -(ReadRC(0x0F) >> 4);
	movlw	(0Fh)
	fcall	_ReadRC
	swapf	wreg,f
	andlw	(0ffh shr 4) & 0ffh
	xorlw	0ffh
	addlw	1
	movlb 0	; select bank0
	movwf	0+(_MInfo)+05h
	line	461
	
l10476:	
;mfrc500.c: 461: irqEn = 0x06;
	movlw	(06h)
	movwf	(PcdSingleResponseCmd@irqEn)
	line	462
	
l10478:	
;mfrc500.c: 462: waitFor = 0x04;
	movlw	(04h)
	movwf	(PcdSingleResponseCmd@waitFor)
	line	463
;mfrc500.c: 463: break;
	goto	l10494
	line	473
	
l10484:	
;mfrc500.c: 473: MInfo.nBitsReceived = -(ReadRC(0x0F) >> 4);
	movlw	(0Fh)
	fcall	_ReadRC
	swapf	wreg,f
	andlw	(0ffh shr 4) & 0ffh
	xorlw	0ffh
	addlw	1
	movlb 0	; select bank0
	movwf	0+(_MInfo)+05h
	line	474
	
l10486:	
;mfrc500.c: 474: irqEn = 0x3D;
	movlw	(03Dh)
	movwf	(PcdSingleResponseCmd@irqEn)
	goto	l10478
	line	478
	
l10490:	
;mfrc500.c: 478: ret_status = (-23);
	movlw	(0E9h)
	movwf	(PcdSingleResponseCmd@ret_status)
	line	479
;mfrc500.c: 479: }
	goto	l10494
	line	431
	
l10492:	
	movf	(PcdSingleResponseCmd@cmd),w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 30
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte           68     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l10462
	xorlw	1^0	; case 1
	skipnz
	goto	l10464
	xorlw	3^1	; case 3
	skipnz
	goto	l10466
	xorlw	7^3	; case 7
	skipnz
	goto	l10468
	xorlw	11^7	; case 11
	skipnz
	goto	l10468
	xorlw	12^11	; case 12
	skipnz
	goto	l10468
	xorlw	18^12	; case 18
	skipnz
	goto	l10464
	xorlw	20^18	; case 20
	skipnz
	goto	l10472
	xorlw	22^20	; case 22
	skipnz
	goto	l10474
	xorlw	25^22	; case 25
	skipnz
	goto	l10468
	xorlw	26^25	; case 26
	skipnz
	goto	l10468
	xorlw	30^26	; case 30
	skipnz
	goto	l10484
	goto	l10490
	opt asmopt_on

	line	481
	
l10494:	
;mfrc500.c: 481: if (ret_status == 0)
	movf	(PcdSingleResponseCmd@ret_status),f
	skipz
	goto	u12761
	goto	u12760
u12761:
	goto	l963
u12760:
	line	483
	
l10496:	
;mfrc500.c: 482: {
;mfrc500.c: 483: irqEn |= 0x20;
	bsf	(PcdSingleResponseCmd@irqEn)+(5/8),(5)&7
	line	484
;mfrc500.c: 484: waitFor |= 0x20;
	bsf	(PcdSingleResponseCmd@waitFor)+(5/8),(5)&7
	line	485
	
l10498:	
;mfrc500.c: 485: count01 = 10000;
	movlw	low(02710h)
	movwf	(PcdSingleResponseCmd@count01)
	movlw	high(02710h)
	movwf	((PcdSingleResponseCmd@count01))+1
	line	486
;mfrc500.c: 486: count02 = 20;
	movlw	014h
	movwf	(PcdSingleResponseCmd@count02)
	clrf	(PcdSingleResponseCmd@count02+1)
	line	487
	
l10500:	
;mfrc500.c: 487: WriteRC(0x06, irqEn | 0x80);
	movf	(PcdSingleResponseCmd@irqEn),w
	iorlw	080h
	movwf	(WriteRC@data)
	movlw	(06h)
	fcall	_WriteRC
	line	488
	
l10502:	
;mfrc500.c: 488: WriteRC(0x01, cmd);
	movlb 0	; select bank0
	movf	(PcdSingleResponseCmd@cmd),w
	movwf	(WriteRC@data)
	movlw	(01h)
	fcall	_WriteRC
	line	489
;mfrc500.c: 489: while (!(MpIsrInfo->irqSource & waitFor))
	goto	l10516
	line	491
	
l10504:	
;mfrc500.c: 490: {
;mfrc500.c: 491: ISR_RC500();
	fcall	_ISR_RC500
	line	492
	
l10506:	
;mfrc500.c: 492: if (count02 == 0)
	movlb 0	; select bank0
	movf	((PcdSingleResponseCmd@count02+1)),w
	iorwf	((PcdSingleResponseCmd@count02)),w
	skipz
	goto	u12771
	goto	u12770
u12771:
	goto	l10510
u12770:
	goto	l10518
	line	494
	
l10510:	
;mfrc500.c: 494: count01--;
	movlw	low(01h)
	subwf	(PcdSingleResponseCmd@count01),f
	movlw	high(01h)
	subwfb	(PcdSingleResponseCmd@count01+1),f
	line	495
	
l10512:	
;mfrc500.c: 495: if (count01 == 0)
	movf	((PcdSingleResponseCmd@count01+1)),w
	iorwf	((PcdSingleResponseCmd@count01)),w
	skipz
	goto	u12781
	goto	u12780
u12781:
	goto	l10516
u12780:
	line	497
	
l10514:	
;mfrc500.c: 496: {
;mfrc500.c: 497: count01 = 10000;
	movlw	low(02710h)
	movwf	(PcdSingleResponseCmd@count01)
	movlw	high(02710h)
	movwf	((PcdSingleResponseCmd@count01))+1
	line	498
;mfrc500.c: 498: count02--;
	movlw	low(01h)
	subwf	(PcdSingleResponseCmd@count02),f
	movlw	high(01h)
	subwfb	(PcdSingleResponseCmd@count02+1),f
	line	489
	
l10516:	
	movf	(_MpIsrInfo),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	andwf	(PcdSingleResponseCmd@waitFor),w
	btfsc	status,2
	goto	u12791
	goto	u12790
u12791:
	goto	l10504
u12790:
	line	502
	
l10518:	
;mfrc500.c: 499: }
;mfrc500.c: 500: };
;mfrc500.c: 502: WriteRC(0x06, 0x3F);
	movlw	(03Fh)
	movwf	(WriteRC@data)
	movlw	(06h)
	fcall	_WriteRC
	line	503
;mfrc500.c: 503: WriteRC(0x07, 0x7F);
	movlw	(07Fh)
	movwf	(WriteRC@data)
	movlw	(07h)
	fcall	_WriteRC
	line	504
;mfrc500.c: 504: SetBitMask(0x09, 0x04);
	movlw	(04h)
	movwf	(SetBitMask@mask)
	movlw	(09h)
	fcall	_SetBitMask
	line	506
;mfrc500.c: 506: WriteRC(0x01, 0x00);
	clrf	(WriteRC@data)
	movlw	(01h)
	fcall	_WriteRC
	line	507
	
l10520:	
;mfrc500.c: 507: if (count02 == 0)
	movlb 0	; select bank0
	movf	((PcdSingleResponseCmd@count02+1)),w
	iorwf	((PcdSingleResponseCmd@count02)),w
	skipz
	goto	u12801
	goto	u12800
u12801:
	goto	l10524
u12800:
	line	509
	
l10522:	
;mfrc500.c: 508: {
;mfrc500.c: 509: ret_status = (-27);
	movlw	(0E5h)
	movwf	(PcdSingleResponseCmd@ret_status)
	line	510
;mfrc500.c: 510: }
	goto	l10526
	line	513
	
l10524:	
;mfrc500.c: 511: else
;mfrc500.c: 512: {
;mfrc500.c: 513: ret_status = MpIsrInfo->status;
	movf	(_MpIsrInfo),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[01h]fsr1
	movwf	(PcdSingleResponseCmd@ret_status)
	line	515
	
l10526:	
;mfrc500.c: 514: }
;mfrc500.c: 515: if (ret_status == 0)
	movf	(PcdSingleResponseCmd@ret_status),f
	skipz
	goto	u12811
	goto	u12810
u12811:
	goto	l10568
u12810:
	line	517
	
l10528:	
;mfrc500.c: 516: {
;mfrc500.c: 517: if ((tmpStatus = (ReadRC(0x0A) & 0x17)))
	movlw	(0Ah)
	fcall	_ReadRC
	movlb 0	; select bank0
	movwf	(PcdSingleResponseCmd@tmpStatus)
	
l10530:	
	movlw	(017h)
	andwf	(PcdSingleResponseCmd@tmpStatus),f
	btfsc	status,2
	goto	u12821
	goto	u12820
u12821:
	goto	l972
u12820:
	line	519
	
l10532:	
;mfrc500.c: 518: {
;mfrc500.c: 519: if (tmpStatus & 0x01)
	btfss	(PcdSingleResponseCmd@tmpStatus),(0)&7
	goto	u12831
	goto	u12830
u12831:
	goto	l10538
u12830:
	line	521
	
l10534:	
;mfrc500.c: 520: {
;mfrc500.c: 521: MInfo.collPos = ReadRC(0x0B);
	movlw	(0Bh)
	fcall	_ReadRC
	movlb 0	; select bank0
	movwf	0+(_MInfo)+07h
	line	522
	
l10536:	
;mfrc500.c: 522: ret_status = (-24);
	movlw	(0E8h)
	movwf	(PcdSingleResponseCmd@ret_status)
	line	523
;mfrc500.c: 523: }
	goto	l10544
	line	526
	
l10538:	
;mfrc500.c: 524: else
;mfrc500.c: 525: {
;mfrc500.c: 526: MInfo.collPos = 0;
	clrf	0+(_MInfo)+07h
	line	527
	
l10540:	
;mfrc500.c: 527: if (tmpStatus & 0x02)
	btfss	(PcdSingleResponseCmd@tmpStatus),(1)&7
	goto	u12841
	goto	u12840
u12841:
	goto	l10544
u12840:
	line	529
	
l10542:	
;mfrc500.c: 528: {
;mfrc500.c: 529: ret_status = (-5);
	movlw	(0FBh)
	movwf	(PcdSingleResponseCmd@ret_status)
	line	532
	
l10544:	
;mfrc500.c: 530: }
;mfrc500.c: 531: }
;mfrc500.c: 532: if (tmpStatus & 0x04)
	btfss	(PcdSingleResponseCmd@tmpStatus),(2)&7
	goto	u12851
	goto	u12850
u12851:
	goto	l10548
u12850:
	line	534
	
l10546:	
;mfrc500.c: 533: {
;mfrc500.c: 534: ret_status = (-21);
	movlw	(0EBh)
	movwf	(PcdSingleResponseCmd@ret_status)
	line	536
	
l10548:	
;mfrc500.c: 535: }
;mfrc500.c: 536: if (tmpStatus & 0x10)
	btfss	(PcdSingleResponseCmd@tmpStatus),(4)&7
	goto	u12861
	goto	u12860
u12861:
	goto	l10554
u12860:
	line	538
	
l10550:	
;mfrc500.c: 537: {
;mfrc500.c: 538: FlushFIFO();
	fcall	_FlushFIFO
	line	539
	
l10552:	
;mfrc500.c: 539: ret_status = (-19);
	movlw	(0EDh)
	movlb 0	; select bank0
	movwf	(PcdSingleResponseCmd@ret_status)
	line	541
	
l10554:	
;mfrc500.c: 540: }
;mfrc500.c: 541: if (tmpStatus & 0x08)
	btfss	(PcdSingleResponseCmd@tmpStatus),(3)&7
	goto	u12871
	goto	u12870
u12871:
	goto	l972
u12870:
	line	543
	
l10556:	
;mfrc500.c: 542: {
;mfrc500.c: 543: ret_status = (-2);
	movlw	(0FEh)
	movwf	(PcdSingleResponseCmd@ret_status)
	line	547
	
l972:	
	line	548
;mfrc500.c: 544: }
;mfrc500.c: 547: }
;mfrc500.c: 548: if (cmd == 0x1E)
	movf	(PcdSingleResponseCmd@cmd),w
	xorlw	01Eh&0ffh
	skipz
	goto	u12881
	goto	u12880
u12881:
	goto	l963
u12880:
	line	550
	
l10558:	
;mfrc500.c: 549: {
;mfrc500.c: 550: lastBits = ReadRC(0x05) & 0x07;
	movlw	(05h)
	fcall	_ReadRC
	movlb 0	; select bank0
	movwf	(PcdSingleResponseCmd@lastBits)
	
l10560:	
	movlw	(07h)
	andwf	(PcdSingleResponseCmd@lastBits),f
	line	551
	
l10562:	
;mfrc500.c: 551: if (lastBits)
	movf	(PcdSingleResponseCmd@lastBits),w
	skipz
	goto	u12890
	goto	l10566
u12890:
	line	553
	
l10564:	
;mfrc500.c: 552: {
;mfrc500.c: 553: MInfo.nBitsReceived += (MInfo.nBytesReceived - 1) * 8 + lastBits;
	movf	0+(_MInfo)+04h,w
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addwf	(PcdSingleResponseCmd@lastBits),w
	addlw	0F8h
	addwf	0+(_MInfo)+05h,f
	line	554
;mfrc500.c: 554: }
	goto	l963
	line	557
	
l10566:	
;mfrc500.c: 555: else
;mfrc500.c: 556: {
;mfrc500.c: 557: MInfo.nBitsReceived += MInfo.nBytesReceived * 8;
	movf	0+(_MInfo)+04h,w
	addwf	wreg,w
	addwf	wreg,w
	addwf	wreg,w
	addwf	0+(_MInfo)+05h,f
	goto	l963
	line	563
	
l10568:	
;mfrc500.c: 561: else
;mfrc500.c: 562: {
;mfrc500.c: 563: MInfo.collPos = 0x00;
	clrf	0+(_MInfo)+07h
	line	565
	
l963:	
	line	566
;mfrc500.c: 564: }
;mfrc500.c: 565: }
;mfrc500.c: 566: MpIsrInfo = 0;
	clrf	(_MpIsrInfo)
	line	567
;mfrc500.c: 567: MpIsrOut = 0;
	clrf	(_MpIsrOut)
	line	568
;mfrc500.c: 568: MpIsrIn = 0;
	clrf	(_MpIsrIn)
	line	570
	
l10570:	
;mfrc500.c: 570: return ret_status;
	movf	(PcdSingleResponseCmd@ret_status),w
	line	571
	
l983:	
	return
	opt stack 0
GLOBAL	__end_of_PcdSingleResponseCmd
	__end_of_PcdSingleResponseCmd:
	signat	_PcdSingleResponseCmd,4217
	global	_ISR_RC500

;; *************** function _ISR_RC500 *****************
;; Defined at:
;;		line 221 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  irqBits         1   11[COMMON] unsigned char 
;;  nbytes          1   10[COMMON] unsigned char 
;;  cnt             1    9[COMMON] unsigned char 
;;  oldPageSelec    1    8[COMMON] unsigned char 
;;  irqMask         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_GetRC500
;;		_PutRC500
;; This function is called by:
;;		_PcdSingleResponseCmd
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1
	line	221
global __ptext49
__ptext49:	;psect for function _ISR_RC500
psect	text49
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	221
	global	__size_of_ISR_RC500
	__size_of_ISR_RC500	equ	__end_of_ISR_RC500-_ISR_RC500
	
_ISR_RC500:	
;incstack = 0
	opt	stack 8
; Regs used in _ISR_RC500: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	231
	
l10252:	
;mfrc500.c: 225: unsigned char irqBits;
;mfrc500.c: 226: unsigned char irqMask;
;mfrc500.c: 227: unsigned char oldPageSelect;
;mfrc500.c: 228: unsigned char nbytes;
;mfrc500.c: 229: unsigned char cnt;
;mfrc500.c: 231: if (MpIsrInfo && MpIsrOut && MpIsrIn)
	movf	(_MpIsrInfo),w
	skipz
	goto	u12490
	goto	l911
u12490:
	
l10254:	
	movf	(_MpIsrOut),w
	skipz
	goto	u12500
	goto	l911
u12500:
	
l10256:	
	movf	(_MpIsrIn),w
	skipz
	goto	u12510
	goto	l911
u12510:
	line	233
	
l10258:	
;mfrc500.c: 232: {
;mfrc500.c: 233: oldPageSelect = GetRC500(0x00);
	movlw	(0)
	fcall	_GetRC500
	movwf	(ISR_RC500@oldPageSelect)
	line	234
	
l10260:	
;mfrc500.c: 234: PutRC500(0x00, 0x80);
	movlw	(080h)
	movwf	(PutRC500@data)
	movlw	(0)
	fcall	_PutRC500
	line	235
;mfrc500.c: 235: while ((GetRC500(0x03) & 0x08))
	goto	l10330
	line	237
	
l10262:	
;mfrc500.c: 236: {
;mfrc500.c: 237: irqMask = GetRC500(0x06);
	movlw	(06h)
	fcall	_GetRC500
	movwf	(ISR_RC500@irqMask)
	line	238
;mfrc500.c: 238: irqBits = GetRC500(0x07) & irqMask;
	movlw	(07h)
	fcall	_GetRC500
	movwf	(ISR_RC500@irqBits)
	
l10264:	
	movf	(ISR_RC500@irqMask),w
	andwf	(ISR_RC500@irqBits),f
	line	239
	
l10266:	
;mfrc500.c: 239: MpIsrInfo->irqSource |= irqBits;
	movf	(_MpIsrInfo),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(ISR_RC500@irqBits),w
	iorwf	indf1,f
	line	240
	
l10268:	
;mfrc500.c: 240: if (irqBits & 0x01)
	btfss	(ISR_RC500@irqBits),(0)&7
	goto	u12521
	goto	u12520
u12521:
	goto	l10290
u12520:
	line	242
	
l10270:	
;mfrc500.c: 241: {
;mfrc500.c: 242: nbytes = 0x40 - GetRC500(0x04);
	movlw	(04h)
	fcall	_GetRC500
	sublw	040h
	movwf	(ISR_RC500@nbytes)
	line	243
	
l10272:	
;mfrc500.c: 243: if ((MpIsrInfo->nBytesToSend - MpIsrInfo->nBytesSent) <= nbytes)
	movf	(_MpIsrInfo),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_MpIsrInfo),w
	addlw	03h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	(??_ISR_RC500+0)+0
	clrf	(??_ISR_RC500+0)+0+1
	movf	1+(??_ISR_RC500+0)+0,w
	movwf	(??_ISR_RC500+2)+0+1
	movf	indf1,w
	subwf	0+(??_ISR_RC500+0)+0,w
	movwf	(??_ISR_RC500+2)+0
	skipc
	decf	(??_ISR_RC500+2)+0+1,f
	movf	1+(??_ISR_RC500+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u12535
	movf	0+(??_ISR_RC500+2)+0,w
	subwf	(ISR_RC500@nbytes),w
u12535:

	skipc
	goto	u12531
	goto	u12530
u12531:
	goto	l10278
u12530:
	line	245
	
l10274:	
;mfrc500.c: 244: {
;mfrc500.c: 245: nbytes = MpIsrInfo->nBytesToSend - MpIsrInfo->nBytesSent;
	movf	(_MpIsrInfo),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_MpIsrInfo),w
	addlw	02h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	subwf	indf1,w
	movwf	(ISR_RC500@nbytes)
	line	246
	
l10276:	
;mfrc500.c: 246: PutRC500(0x06, 0x01);
	clrf	(PutRC500@data)
	incf	(PutRC500@data),f
	movlw	(06h)
	fcall	_PutRC500
	line	248
	
l10278:	
;mfrc500.c: 247: }
;mfrc500.c: 248: for (cnt = 0; cnt < nbytes; cnt++)
	clrf	(ISR_RC500@cnt)
	goto	l10286
	line	250
	
l10280:	
;mfrc500.c: 249: {
;mfrc500.c: 250: PutRC500(0x02, MpIsrOut[MpIsrInfo->nBytesSent]);
	movf	(_MpIsrInfo),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	addwf	(_MpIsrOut),w
	movwf	(??_ISR_RC500+0)+0
	movf	0+(??_ISR_RC500+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(PutRC500@data)
	movlw	(02h)
	fcall	_PutRC500
	line	251
	
l10282:	
;mfrc500.c: 251: MpIsrInfo->nBytesSent++;
	movf	(_MpIsrInfo),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	incf	indf1,f
	line	248
	
l10284:	
	incf	(ISR_RC500@cnt),f
	
l10286:	
	movf	(ISR_RC500@nbytes),w
	subwf	(ISR_RC500@cnt),w
	skipc
	goto	u12541
	goto	u12540
u12541:
	goto	l10280
u12540:
	line	253
	
l10288:	
;mfrc500.c: 252: }
;mfrc500.c: 253: PutRC500(0x07, 0x01);
	clrf	(PutRC500@data)
	incf	(PutRC500@data),f
	movlw	(07h)
	fcall	_PutRC500
	line	255
	
l10290:	
;mfrc500.c: 254: }
;mfrc500.c: 255: if (irqBits & 0x10)
	btfss	(ISR_RC500@irqBits),(4)&7
	goto	u12551
	goto	u12550
u12551:
	goto	l10298
u12550:
	line	257
	
l10292:	
;mfrc500.c: 256: {
;mfrc500.c: 257: PutRC500(0x07, 0x10);
	movlw	(010h)
	movwf	(PutRC500@data)
	movlw	(07h)
	fcall	_PutRC500
	line	258
;mfrc500.c: 258: PutRC500(0x06, 0x82);
	movlw	(082h)
	movwf	(PutRC500@data)
	movlw	(06h)
	fcall	_PutRC500
	line	259
	
l10294:	
;mfrc500.c: 259: if (MpIsrInfo->cmd == 0x93)
	movf	(_MpIsrInfo),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	093h&0ffh
	skipz
	goto	u12561
	goto	u12560
u12561:
	goto	l10298
u12560:
	line	261
	
l10296:	
;mfrc500.c: 260: {
;mfrc500.c: 261: PutRC500(0x22, 0x02);
	movlw	(02h)
	movwf	(PutRC500@data)
	movlw	(022h)
	fcall	_PutRC500
	line	262
;mfrc500.c: 262: PutRC500(0x00, 0x00);
	clrf	(PutRC500@data)
	movlw	(0)
	fcall	_PutRC500
	line	265
	
l10298:	
;mfrc500.c: 263: }
;mfrc500.c: 264: }
;mfrc500.c: 265: if (irqBits & 0x0E)
	movf	(ISR_RC500@irqBits),w
	andlw	0Eh
	btfsc	status,2
	goto	u12571
	goto	u12570
u12571:
	goto	l10314
u12570:
	line	267
	
l10300:	
;mfrc500.c: 266: {
;mfrc500.c: 267: nbytes = GetRC500(0x04);
	movlw	(04h)
	fcall	_GetRC500
	movwf	(ISR_RC500@nbytes)
	line	268
	
l10302:	
;mfrc500.c: 268: for (cnt = 0; cnt < nbytes; cnt++)
	clrf	(ISR_RC500@cnt)
	goto	l10310
	line	270
	
l10304:	
;mfrc500.c: 269: {
;mfrc500.c: 270: MpIsrIn[MpIsrInfo->nBytesReceived] = GetRC500(0x02);
	movf	(_MpIsrInfo),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	addwf	(_MpIsrIn),w
	movwf	(??_ISR_RC500+0)+0
	movf	0+(??_ISR_RC500+0)+0,w
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlw	(02h)
	fcall	_GetRC500
	movwf	indf1
	line	271
	
l10306:	
;mfrc500.c: 271: MpIsrInfo->nBytesReceived++;
	movf	(_MpIsrInfo),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	incf	indf1,f
	line	268
	
l10308:	
	incf	(ISR_RC500@cnt),f
	
l10310:	
	movf	(ISR_RC500@nbytes),w
	subwf	(ISR_RC500@cnt),w
	skipc
	goto	u12581
	goto	u12580
u12581:
	goto	l10304
u12580:
	line	273
	
l10312:	
;mfrc500.c: 272: }
;mfrc500.c: 273: PutRC500(0x07, 0x0A & irqBits);
	movf	(ISR_RC500@irqBits),w
	movwf	(PutRC500@data)
	movlw	(0Ah)
	andwf	(PutRC500@data),f
	movlw	(07h)
	fcall	_PutRC500
	line	275
	
l10314:	
;mfrc500.c: 274: }
;mfrc500.c: 275: if (irqBits & 0x04)
	btfss	(ISR_RC500@irqBits),(2)&7
	goto	u12591
	goto	u12590
u12591:
	goto	l10324
u12590:
	line	277
	
l10316:	
;mfrc500.c: 276: {
;mfrc500.c: 277: PutRC500(0x06, 0x20);
	movlw	(020h)
	movwf	(PutRC500@data)
	movlw	(06h)
	fcall	_PutRC500
	line	278
;mfrc500.c: 278: PutRC500(0x07, 0x20);
	movlw	(020h)
	movwf	(PutRC500@data)
	movlw	(07h)
	fcall	_PutRC500
	line	279
	
l10318:	
;mfrc500.c: 279: irqBits &= ~0x20;
	bcf	(ISR_RC500@irqBits)+(5/8),(5)&7
	line	280
	
l10320:	
;mfrc500.c: 280: MpIsrInfo->irqSource &= ~0x20;
	movf	(_MpIsrInfo),w
	addlw	06h
	movwf	fsr1l
	clrf fsr1h	
	
	bcf	indf1+(5/8),(5)&7
	line	281
	
l10322:	
;mfrc500.c: 281: PutRC500(0x07,0x04);
	movlw	(04h)
	movwf	(PutRC500@data)
	movlw	(07h)
	fcall	_PutRC500
	line	283
	
l10324:	
;mfrc500.c: 282: }
;mfrc500.c: 283: if (irqBits & 0x20)
	btfss	(ISR_RC500@irqBits),(5)&7
	goto	u12601
	goto	u12600
u12601:
	goto	l10330
u12600:
	line	285
	
l10326:	
;mfrc500.c: 284: {
;mfrc500.c: 285: PutRC500(0x07, 0x20);
	movlw	(020h)
	movwf	(PutRC500@data)
	movlw	(07h)
	fcall	_PutRC500
	line	286
	
l10328:	
;mfrc500.c: 286: MpIsrInfo->status = (-1);
	incf	(_MpIsrInfo),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(0FFh)
	movwf	indf1
	line	235
	
l10330:	
	movlw	(03h)
	fcall	_GetRC500
	andlw	08h
	btfss	status,2
	goto	u12611
	goto	u12610
u12611:
	goto	l10262
u12610:
	line	289
	
l10332:	
;mfrc500.c: 287: }
;mfrc500.c: 288: }
;mfrc500.c: 289: PutRC500(0x00, oldPageSelect | 0x80);
	movf	(ISR_RC500@oldPageSelect),w
	iorlw	080h
	movwf	(PutRC500@data)
	movlw	(0)
	fcall	_PutRC500
	line	291
	
l911:	
	return
	opt stack 0
GLOBAL	__end_of_ISR_RC500
	__end_of_ISR_RC500:
	signat	_ISR_RC500,88
	global	_FlushFIFO

;; *************** function _FlushFIFO *****************
;; Defined at:
;;		line 195 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SetBitMask
;; This function is called by:
;;		_PcdSingleResponseCmd
;;		_Mf500PiccLoadKey
;;		_Mf500PiccRead
;;		_Mf500PiccWrite
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1
	line	195
global __ptext50
__ptext50:	;psect for function _FlushFIFO
psect	text50
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	195
	global	__size_of_FlushFIFO
	__size_of_FlushFIFO	equ	__end_of_FlushFIFO-_FlushFIFO
	
_FlushFIFO:	
;incstack = 0
	opt	stack 6
; Regs used in _FlushFIFO: [wreg+status,2+status,0+pclath+cstack]
	line	199
	
l10230:	
;mfrc500.c: 199: SetBitMask(0x09, 0x01);
	clrf	(SetBitMask@mask)
	incf	(SetBitMask@mask),f
	movlw	(09h)
	fcall	_SetBitMask
	line	200
	
l885:	
	return
	opt stack 0
GLOBAL	__end_of_FlushFIFO
	__end_of_FlushFIFO:
	signat	_FlushFIFO,88
	global	_SetBitMask

;; *************** function _SetBitMask *****************
;; Defined at:
;;		line 141 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  reg             1    wreg     unsigned char 
;;  mask            1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  reg             1    8[COMMON] unsigned char 
;;  tmp             1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ReadRC
;;		_WriteRC
;; This function is called by:
;;		_FlushFIFO
;;		_PcdRfReset
;;		_PcdSingleResponseCmd
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1
	line	141
global __ptext51
__ptext51:	;psect for function _SetBitMask
psect	text51
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	141
	global	__size_of_SetBitMask
	__size_of_SetBitMask	equ	__end_of_SetBitMask-_SetBitMask
	
_SetBitMask:	
;incstack = 0
	opt	stack 9
; Regs used in _SetBitMask: [wreg+status,2+status,0+pclath+cstack]
;SetBitMask@reg stored from wreg
	line	142
	movwf	(SetBitMask@reg)
	line	146
	
l10198:	
	line	148
	
l10200:	
;mfrc500.c: 148: tmp = ReadRC(reg);
	movf	(SetBitMask@reg),w
	fcall	_ReadRC
	movwf	(SetBitMask@tmp)
	line	149
	
l10202:	
;mfrc500.c: 149: WriteRC(reg, tmp | mask);
	movf	(SetBitMask@tmp),w
	iorwf	(SetBitMask@mask),w
	movwf	(WriteRC@data)
	movf	(SetBitMask@reg),w
	fcall	_WriteRC
	line	150
	
l869:	
	return
	opt stack 0
GLOBAL	__end_of_SetBitMask
	__end_of_SetBitMask:
	signat	_SetBitMask,8312
	global	_ReadRC

;; *************** function _ReadRC *****************
;; Defined at:
;;		line 132 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_GetRC500
;;		_PutRC500
;; This function is called by:
;;		_SetBitMask
;;		_ClearBitMask
;;		_PcdSingleResponseCmd
;;		_Mf500PiccAuthState
;; This function uses a non-reentrant model
;;
psect	text52,local,class=CODE,delta=2,merge=1
	line	132
global __ptext52
__ptext52:	;psect for function _ReadRC
psect	text52
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	132
	global	__size_of_ReadRC
	__size_of_ReadRC	equ	__end_of_ReadRC-_ReadRC
	
_ReadRC:	
;incstack = 0
	opt	stack 9
; Regs used in _ReadRC: [wreg+status,2+status,0+pclath+cstack]
;ReadRC@address stored from wreg
	line	133
	movwf	(ReadRC@address)
	line	136
	
l10192:	
;mfrc500.c: 136: PutRC500(0x00, (0x80 | (address >> 0x03)));
	movf	(ReadRC@address),w
	movwf	(??_ReadRC+0)+0
	lsrf	(??_ReadRC+0)+0,f
	lsrf	(??_ReadRC+0)+0,f
	lsrf	(??_ReadRC+0)+0,f
	movf	0+(??_ReadRC+0)+0,w
	iorlw	080h
	movwf	(PutRC500@data)
	movlw	(0)
	fcall	_PutRC500
	line	137
	
l10194:	
;mfrc500.c: 137: return GetRC500(address);
	movf	(ReadRC@address),w
	fcall	_GetRC500
	line	138
	
l866:	
	return
	opt stack 0
GLOBAL	__end_of_ReadRC
	__end_of_ReadRC:
	signat	_ReadRC,4217
	global	_GetRC500

;; *************** function _GetRC500 *****************
;; Defined at:
;;		line 99 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMMON] unsigned char 
;;  tmp             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadRC
;;		_ISR_RC500
;;		_PcdReset
;; This function uses a non-reentrant model
;;
psect	text53,local,class=CODE,delta=2,merge=1
	line	99
global __ptext53
__ptext53:	;psect for function _GetRC500
psect	text53
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	99
	global	__size_of_GetRC500
	__size_of_GetRC500	equ	__end_of_GetRC500-_GetRC500
	
_GetRC500:	
;incstack = 0
	opt	stack 9
; Regs used in _GetRC500: [wreg+status,2]
;GetRC500@address stored from wreg
	line	100
	movwf	(GetRC500@address)
	line	105
	
l10162:	
;mfrc500.c: 103: BYTE tmp;
;mfrc500.c: 105: (LATEbits.LATE4 = 0x01);
	movlb 2	; select bank2
	bsf	(272)^0100h,4	;volatile
	line	106
	
l10164:	
;mfrc500.c: 106: TRISD = 0x00;
	movlb 1	; select bank1
	clrf	(143)^080h	;volatile
	line	107
	
l10166:	
;mfrc500.c: 107: PORTD = address;
	movf	(GetRC500@address),w
	movlb 0	; select bank0
	movwf	(15)	;volatile
	line	108
	
l10168:	
;mfrc500.c: 108: (LATEbits.LATE7 = 0x01);
	movlb 2	; select bank2
	bsf	(272)^0100h,7	;volatile
	line	109
	
l10170:	
;mfrc500.c: 109: (LATEbits.LATE7 = 0x00);
	bcf	(272)^0100h,7	;volatile
	line	110
	
l10172:	
;mfrc500.c: 110: TRISD = 0xFF;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(143)^080h	;volatile
	line	111
	
l10174:	
;mfrc500.c: 111: (LATEbits.LATE5 = 0x01);
	movlb 2	; select bank2
	bsf	(272)^0100h,5	;volatile
	line	112
	
l10176:	
;mfrc500.c: 112: (LATEbits.LATE4 = 0x00);
	bcf	(272)^0100h,4	;volatile
	line	113
	
l10178:	
;mfrc500.c: 113: (LATEbits.LATE6 = 0x00);
	bcf	(272)^0100h,6	;volatile
	line	114
	
l10180:	
;mfrc500.c: 114: tmp = PORTD;
	movlb 0	; select bank0
	movf	(15),w	;volatile
	movwf	(GetRC500@tmp)
	line	115
	
l10182:	
;mfrc500.c: 115: (LATEbits.LATE6 = 0x01);
	movlb 2	; select bank2
	bsf	(272)^0100h,6	;volatile
	line	116
	
l10184:	
;mfrc500.c: 116: (LATEbits.LATE4 = 0x01);
	bsf	(272)^0100h,4	;volatile
	line	118
	
l10186:	
;mfrc500.c: 118: return tmp;
	movf	(GetRC500@tmp),w
	line	119
	
l860:	
	return
	opt stack 0
GLOBAL	__end_of_GetRC500
	__end_of_GetRC500:
	signat	_GetRC500,4217
	global	_PcdSetTmo

;; *************** function _PcdSetTmo *****************
;; Defined at:
;;		line 165 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  tmoLength       2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1C/1
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_WriteRC
;; This function is called by:
;;		_RC500Config
;;		_Mf500PiccCommonRequest
;;		_Mf500PiccCascAnticoll
;;		_Mf500PiccCascSelect
;;		_Mf500PiccAuthState
;;		_Mf500PiccLoadKey
;;		_Mf500PiccRead
;;		_Mf500PiccWrite
;; This function uses a non-reentrant model
;;
psect	text54,local,class=CODE,delta=2,merge=1
	line	165
global __ptext54
__ptext54:	;psect for function _PcdSetTmo
psect	text54
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	165
	global	__size_of_PcdSetTmo
	__size_of_PcdSetTmo	equ	__end_of_PcdSetTmo-_PcdSetTmo
	
_PcdSetTmo:	
;incstack = 0
	opt	stack 10
; Regs used in _PcdSetTmo: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	169
	
l10210:	
;mfrc500.c: 169: switch (tmoLength)
	goto	l10224
	line	172
	
l10212:	
;mfrc500.c: 172: WriteRC(0x2A, 0x07);
	movlw	(07h)
	movwf	(WriteRC@data)
	movlw	(02Ah)
	fcall	_WriteRC
	line	173
;mfrc500.c: 173: WriteRC(0x2C, 0x6a);
	movlw	(06Ah)
	movwf	(WriteRC@data)
	movlw	(02Ch)
	fcall	_WriteRC
	line	174
;mfrc500.c: 174: break;
	goto	l882
	line	176
	
l10214:	
;mfrc500.c: 176: WriteRC(0x2A, 0x07);
	movlw	(07h)
	movwf	(WriteRC@data)
	movlw	(02Ah)
	fcall	_WriteRC
	line	177
;mfrc500.c: 177: WriteRC(0x2C, 0xa0);
	movlw	(0A0h)
	movwf	(WriteRC@data)
	movlw	(02Ch)
	fcall	_WriteRC
	line	178
;mfrc500.c: 178: break;
	goto	l882
	line	180
	
l10216:	
;mfrc500.c: 180: WriteRC(0x2A, 0x09);
	movlw	(09h)
	movwf	(WriteRC@data)
	movlw	(02Ah)
	fcall	_WriteRC
	line	181
;mfrc500.c: 181: WriteRC(0x2C, 0xa0);
	movlw	(0A0h)
	movwf	(WriteRC@data)
	movlw	(02Ch)
	fcall	_WriteRC
	line	182
;mfrc500.c: 182: break;
	goto	l882
	line	184
	
l10218:	
;mfrc500.c: 184: WriteRC(0x2A, 0x09);
	movlw	(09h)
	movwf	(WriteRC@data)
	movlw	(02Ah)
	fcall	_WriteRC
	line	185
;mfrc500.c: 185: WriteRC(0x2C, 0xff);
	movlw	(0FFh)
	movwf	(WriteRC@data)
	movlw	(02Ch)
	fcall	_WriteRC
	line	186
;mfrc500.c: 186: break;
	goto	l882
	line	188
	
l10220:	
;mfrc500.c: 188: WriteRC(0x2A, 0x07);
	movlw	(07h)
	movwf	(WriteRC@data)
	movlw	(02Ah)
	fcall	_WriteRC
	line	189
;mfrc500.c: 189: WriteRC(0x2C, tmoLength);
	movf	(PcdSetTmo@tmoLength),w
	movwf	(WriteRC@data)
	movlw	(02Ch)
	fcall	_WriteRC
	line	190
;mfrc500.c: 190: break;
	goto	l882
	line	169
	
l10224:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (PcdSetTmo@tmoLength+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l11078
	goto	l10220
	opt asmopt_on
	
l11078:	
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           17     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (PcdSetTmo@tmoLength),w
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l10212
	xorlw	2^1	; case 2
	skipnz
	goto	l10214
	xorlw	3^2	; case 3
	skipnz
	goto	l10216
	xorlw	4^3	; case 4
	skipnz
	goto	l10218
	goto	l10220
	opt asmopt_on

	line	192
	
l882:	
	return
	opt stack 0
GLOBAL	__end_of_PcdSetTmo
	__end_of_PcdSetTmo:
	signat	_PcdSetTmo,4216
	global	_WriteRC

;; *************** function _WriteRC *****************
;; Defined at:
;;		line 122 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1C/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_PutRC500
;; This function is called by:
;;		_SetBitMask
;;		_ClearBitMask
;;		_PcdSetTmo
;;		_RC500Config
;;		_RC500OutSelect
;;		_PcdSingleResponseCmd
;;		_Mf500PiccCommonRequest
;;		_Mf500PiccCascAnticoll
;;		_Mf500PiccCascSelect
;;		_Mf500PiccRead
;;		_Mf500PiccWrite
;; This function uses a non-reentrant model
;;
psect	text55,local,class=CODE,delta=2,merge=1
	line	122
global __ptext55
__ptext55:	;psect for function _WriteRC
psect	text55
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	122
	global	__size_of_WriteRC
	__size_of_WriteRC	equ	__end_of_WriteRC-_WriteRC
	
_WriteRC:	
;incstack = 0
	opt	stack 11
; Regs used in _WriteRC: [wreg+status,2+status,0+pclath+cstack]
;WriteRC@address stored from wreg
	line	123
	movwf	(WriteRC@address)
	line	127
	
l10190:	
;mfrc500.c: 127: PutRC500(0x00, (0x80 | (address >> 0x03)));
	movf	(WriteRC@address),w
	movwf	(??_WriteRC+0)+0
	lsrf	(??_WriteRC+0)+0,f
	lsrf	(??_WriteRC+0)+0,f
	lsrf	(??_WriteRC+0)+0,f
	movf	0+(??_WriteRC+0)+0,w
	iorlw	080h
	movwf	(PutRC500@data)
	movlw	(0)
	fcall	_PutRC500
	line	128
;mfrc500.c: 128: PutRC500(address, data);
	movf	(WriteRC@data),w
	movwf	(PutRC500@data)
	movf	(WriteRC@address),w
	fcall	_PutRC500
	line	129
	
l863:	
	return
	opt stack 0
GLOBAL	__end_of_WriteRC
	__end_of_WriteRC:
	signat	_WriteRC,8312
	global	_PutRC500

;; *************** function _PutRC500 *****************
;; Defined at:
;;		line 74 in file "D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteRC
;;		_ReadRC
;;		_ISR_RC500
;;		_PcdReset
;; This function uses a non-reentrant model
;;
psect	text56,local,class=CODE,delta=2,merge=1
	line	74
global __ptext56
__ptext56:	;psect for function _PutRC500
psect	text56
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\mfrc500.c"
	line	74
	global	__size_of_PutRC500
	__size_of_PutRC500	equ	__end_of_PutRC500-_PutRC500
	
_PutRC500:	
;incstack = 0
	opt	stack 11
; Regs used in _PutRC500: [wreg+status,2]
;PutRC500@address stored from wreg
	line	75
	movwf	(PutRC500@address)
	line	79
	
l10130:	
;mfrc500.c: 79: (LATEbits.LATE4 = 0x01);
	movlb 2	; select bank2
	bsf	(272)^0100h,4	;volatile
	line	80
	
l10132:	
;mfrc500.c: 80: TRISD = 0x00;
	movlb 1	; select bank1
	clrf	(143)^080h	;volatile
	line	81
	
l10134:	
;mfrc500.c: 81: PORTD = address;
	movf	(PutRC500@address),w
	movlb 0	; select bank0
	movwf	(15)	;volatile
	line	82
	
l10136:	
;mfrc500.c: 82: (LATEbits.LATE7 = 0x01);
	movlb 2	; select bank2
	bsf	(272)^0100h,7	;volatile
	line	83
	
l10138:	
;mfrc500.c: 83: (LATEbits.LATE7 = 0x00);
	bcf	(272)^0100h,7	;volatile
	line	84
	
l10140:	
;mfrc500.c: 84: (LATEbits.LATE5 = 0x00);
	bcf	(272)^0100h,5	;volatile
	line	85
	
l10142:	
;mfrc500.c: 85: (LATEbits.LATE4 = 0x00);
	bcf	(272)^0100h,4	;volatile
	line	86
	
l10144:	
;mfrc500.c: 86: PORTD = data;
	movf	(PutRC500@data),w
	movlb 0	; select bank0
	movwf	(15)	;volatile
	line	87
	
l10146:	
;mfrc500.c: 87: (LATEbits.LATE6 = 0x00);
	movlb 2	; select bank2
	bcf	(272)^0100h,6	;volatile
	line	88
	
l10148:	
;mfrc500.c: 88: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	89
	
l10150:	
;mfrc500.c: 89: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	90
	
l10152:	
;mfrc500.c: 90: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	91
	
l10154:	
;mfrc500.c: 91: (LATEbits.LATE6 = 0x01);
	movlb 2	; select bank2
	bsf	(272)^0100h,6	;volatile
	line	92
	
l10156:	
;mfrc500.c: 92: (LATEbits.LATE4 = 0x01);
	bsf	(272)^0100h,4	;volatile
	line	93
	
l10158:	
;mfrc500.c: 93: (LATEbits.LATE5 = 0x01);
	bsf	(272)^0100h,5	;volatile
	line	94
	
l10160:	
;mfrc500.c: 94: TRISD = 0xFF;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(143)^080h	;volatile
	line	95
	
l857:	
	return
	opt stack 0
GLOBAL	__end_of_PutRC500
	__end_of_PutRC500:
	signat	_PutRC500,8312
	global	_handle_config

;; *************** function _handle_config *****************
;; Defined at:
;;		line 69 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tmp_buffer      6    0[BANK0 ] unsigned char [6]
;;  i               2    7[BANK0 ] unsigned short 
;;  report_the_l    1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       9       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       9       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_ms
;;		_ds1302_get_time
;;		_ds1302_set_time
;;		_find_project_key
;;		_read_24c02
;;		_read_eeprom
;;		_uart1_send_byte
;;		_write_24c02
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text57,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_config.c"
	line	69
global __ptext57
__ptext57:	;psect for function _handle_config
psect	text57
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_config.c"
	line	69
	global	__size_of_handle_config
	__size_of_handle_config	equ	__end_of_handle_config-_handle_config
	
_handle_config:	
;incstack = 0
	opt	stack 11
; Regs used in _handle_config: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	73
	
l8076:	
	line	75
;handle_config.c: 74: BYTE tmp_buffer[6];
;handle_config.c: 75: BYTE report_the_loss_count = 0x00;
	clrf	(handle_config@report_the_loss_count)
	line	77
	
l8078:	
;handle_config.c: 77: if (uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xAA)
	movf	(_uart1_receive_buffer),w
	xorlw	055h&0ffh
	skipz
	goto	u9031
	goto	u9030
u9031:
	goto	l8098
u9030:
	
l8080:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u9041
	goto	u9040
u9041:
	goto	l8098
u9040:
	line	79
	
l8082:	
;handle_config.c: 78: {
;handle_config.c: 79: for (i = 0x00; i < 0x100; i++)
	clrf	(handle_config@i)
	clrf	(handle_config@i+1)
	line	81
	
l8088:	
;handle_config.c: 80: {
;handle_config.c: 81: write_24c02(i, 0xFF);
	movlw	(0FFh)
	movwf	(write_24c02@data)
	movf	(handle_config@i),w
	fcall	_write_24c02
	line	79
	
l8090:	
	movlb 0	; select bank0
	incf	(handle_config@i),f
	skipnz
	incf	(handle_config@i+1),f
	
l8092:	
	movlw	high(0100h)
	subwf	(handle_config@i+1),w
	movlw	low(0100h)
	skipnz
	subwf	(handle_config@i),w
	skipc
	goto	u9051
	goto	u9050
u9051:
	goto	l8088
u9050:
	
l51:	
	line	83
;handle_config.c: 82: }
;handle_config.c: 83: (RC5 = 0x00);
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	84
	
l8094:	
;handle_config.c: 84: delay_ms(100);
	movlw	064h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	85
	
l8096:	
;handle_config.c: 85: (RC5 = 0x01);
	movlb 0	; select bank0
	bsf	(117/8),(117)&7	;volatile
	line	86
;handle_config.c: 86: }
	goto	l8310
	line	87
	
l8098:	
;handle_config.c: 87: else if (uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xAB)
	movf	(_uart1_receive_buffer),w
	xorlw	055h&0ffh
	skipz
	goto	u9061
	goto	u9060
u9061:
	goto	l8108
u9060:
	
l8100:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	0ABh&0ffh
	skipz
	goto	u9071
	goto	u9070
u9071:
	goto	l8108
u9070:
	line	89
	
l8102:	
;handle_config.c: 88: {
;handle_config.c: 89: write_24c02(uart1_receive_buffer[1], uart1_receive_buffer[2]);
	movf	0+(_uart1_receive_buffer)+02h,w
	movwf	(write_24c02@data)
	movf	0+(_uart1_receive_buffer)+01h,w
	fcall	_write_24c02
	line	90
	
l8104:	
;handle_config.c: 90: (RC5 = 0x00);
	movlb 0	; select bank0
	bcf	(117/8),(117)&7	;volatile
	line	91
;handle_config.c: 91: delay_ms(100);
	movlw	064h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	goto	l8096
	line	94
	
l8108:	
;handle_config.c: 94: else if(uart1_receive_buffer[0] == 0xAA && uart1_receive_buffer[7] == 0x55)
	movf	(_uart1_receive_buffer),w
	xorlw	0AAh&0ffh
	skipz
	goto	u9081
	goto	u9080
u9081:
	goto	l8128
u9080:
	
l8110:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	055h&0ffh
	skipz
	goto	u9091
	goto	u9090
u9091:
	goto	l8128
u9090:
	line	96
	
l8112:	
;handle_config.c: 95: {
;handle_config.c: 96: for (i = 0x00; i < 0x100; i++)
	clrf	(handle_config@i)
	clrf	(handle_config@i+1)
	line	98
	
l8118:	
;handle_config.c: 97: {
;handle_config.c: 98: uart1_send_byte(read_24c02(i));
	movf	(handle_config@i),w
	fcall	_read_24c02
	fcall	_uart1_send_byte
	line	96
	
l8120:	
	movlb 0	; select bank0
	incf	(handle_config@i),f
	skipnz
	incf	(handle_config@i+1),f
	
l8122:	
	movlw	high(0100h)
	subwf	(handle_config@i+1),w
	movlw	low(0100h)
	skipnz
	subwf	(handle_config@i),w
	skipc
	goto	u9101
	goto	u9100
u9101:
	goto	l8118
u9100:
	goto	l51
	line	104
	
l8128:	
;handle_config.c: 104: else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xBB)
	movf	(_uart1_receive_buffer),w
	xorlw	055h&0ffh
	skipz
	goto	u9111
	goto	u9110
u9111:
	goto	l8146
u9110:
	
l8130:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	0BBh&0ffh
	skipz
	goto	u9121
	goto	u9120
u9121:
	goto	l8146
u9120:
	line	106
	
l8132:	
;handle_config.c: 105: {
;handle_config.c: 106: year = uart1_receive_buffer[1];
	movf	0+(_uart1_receive_buffer)+01h,w
	movwf	(_year)
	line	107
;handle_config.c: 107: month = uart1_receive_buffer[2];
	movf	0+(_uart1_receive_buffer)+02h,w
	movwf	(_month)
	line	108
;handle_config.c: 108: day = uart1_receive_buffer[3];
	movf	0+(_uart1_receive_buffer)+03h,w
	movwf	(_day)
	line	109
;handle_config.c: 109: hour = uart1_receive_buffer[4];
	movf	0+(_uart1_receive_buffer)+04h,w
	movlb 1	; select bank1
	movwf	(_hour)^080h
	line	110
;handle_config.c: 110: minute = uart1_receive_buffer[5];
	movlb 0	; select bank0
	movf	0+(_uart1_receive_buffer)+05h,w
	movlb 1	; select bank1
	movwf	(_minute)^080h
	line	111
	
l8134:	
;handle_config.c: 111: second = 0x00;
	clrf	(_second)^080h
	line	112
	
l8136:	
;handle_config.c: 112: week = uart1_receive_buffer[6];
	movlb 0	; select bank0
	movf	0+(_uart1_receive_buffer)+06h,w
	movlb 1	; select bank1
	movwf	(_week)^080h
	line	113
	
l8138:	
;handle_config.c: 113: ds1302_set_time();
	fcall	_ds1302_set_time
	goto	l51
	line	118
	
l8146:	
;handle_config.c: 118: else if(uart1_receive_buffer[0] == 0xBB && uart1_receive_buffer[7] == 0x55)
	movf	(_uart1_receive_buffer),w
	xorlw	0BBh&0ffh
	skipz
	goto	u9131
	goto	u9130
u9131:
	goto	l8156
u9130:
	
l8148:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	055h&0ffh
	skipz
	goto	u9141
	goto	u9140
u9141:
	goto	l8156
u9140:
	line	120
	
l8150:	
;handle_config.c: 119: {
;handle_config.c: 120: ds1302_get_time();
	fcall	_ds1302_get_time
	line	121
;handle_config.c: 121: uart1_send_byte(0xBB);
	movlw	(0BBh)
	fcall	_uart1_send_byte
	line	122
;handle_config.c: 122: uart1_send_byte(0x06);
	movlw	(06h)
	fcall	_uart1_send_byte
	line	123
;handle_config.c: 123: uart1_send_byte(year);
	movlb 0	; select bank0
	movf	(_year),w
	fcall	_uart1_send_byte
	line	124
;handle_config.c: 124: uart1_send_byte(month);
	movlb 0	; select bank0
	movf	(_month),w
	fcall	_uart1_send_byte
	line	125
;handle_config.c: 125: uart1_send_byte(day);
	movlb 0	; select bank0
	movf	(_day),w
	fcall	_uart1_send_byte
	line	126
;handle_config.c: 126: uart1_send_byte(hour);
	movlb 1	; select bank1
	movf	(_hour)^080h,w
	fcall	_uart1_send_byte
	line	127
;handle_config.c: 127: uart1_send_byte(minute);
	movlb 1	; select bank1
	movf	(_minute)^080h,w
	fcall	_uart1_send_byte
	line	128
;handle_config.c: 128: uart1_send_byte(second);
	movlb 1	; select bank1
	movf	(_second)^080h,w
	fcall	_uart1_send_byte
	line	129
;handle_config.c: 129: uart1_send_byte(week);
	movlb 1	; select bank1
	movf	(_week)^080h,w
	fcall	_uart1_send_byte
	line	130
;handle_config.c: 130: uart1_send_byte(0x55);
	movlw	(055h)
	fcall	_uart1_send_byte
	goto	l8104
	line	135
	
l8156:	
;handle_config.c: 135: else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xCC)
	movf	(_uart1_receive_buffer),w
	xorlw	055h&0ffh
	skipz
	goto	u9151
	goto	u9150
u9151:
	goto	l8172
u9150:
	
l8158:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	0CCh&0ffh
	skipz
	goto	u9161
	goto	u9160
u9161:
	goto	l8172
u9160:
	line	137
	
l8160:	
;handle_config.c: 136: {
;handle_config.c: 137: if (uart1_receive_buffer[1] == 0x01)
	decf	0+(_uart1_receive_buffer)+01h,w
	skipz
	goto	u9171
	goto	u9170
u9171:
	goto	l8164
u9170:
	line	139
	
l8162:	
;handle_config.c: 138: {
;handle_config.c: 139: write_24c02(0x00, 0xAA);
	movlw	(0AAh)
	movwf	(write_24c02@data)
	movlw	(0)
	fcall	_write_24c02
	line	140
;handle_config.c: 140: }
	goto	l51
	line	141
	
l8164:	
;handle_config.c: 141: else if (uart1_receive_buffer[1] == 0x02)
	movf	0+(_uart1_receive_buffer)+01h,w
	xorlw	02h&0ffh
	skipz
	goto	u9181
	goto	u9180
u9181:
	goto	l51
u9180:
	line	143
	
l8166:	
;handle_config.c: 142: {
;handle_config.c: 143: write_24c02(0x00, 0x55);
	movlw	(055h)
	movwf	(write_24c02@data)
	movlw	(0)
	fcall	_write_24c02
	line	144
;handle_config.c: 144: }
	goto	l51
	line	153
	
l8172:	
;handle_config.c: 153: else if(uart1_receive_buffer[0] == 0xCC && uart1_receive_buffer[7] == 0x55)
	movf	(_uart1_receive_buffer),w
	xorlw	0CCh&0ffh
	skipz
	goto	u9191
	goto	u9190
u9191:
	goto	l8182
u9190:
	
l8174:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	055h&0ffh
	skipz
	goto	u9201
	goto	u9200
u9201:
	goto	l8182
u9200:
	line	155
	
l8176:	
;handle_config.c: 154: {
;handle_config.c: 155: uart1_send_byte(0xCC);
	movlw	(0CCh)
	fcall	_uart1_send_byte
	line	156
;handle_config.c: 156: uart1_send_byte(0x04);
	movlw	(04h)
	fcall	_uart1_send_byte
	line	157
;handle_config.c: 157: uart1_send_byte(read_24c02(0x00));
	movlw	(0)
	fcall	_read_24c02
	fcall	_uart1_send_byte
	line	158
;handle_config.c: 158: uart1_send_byte(0x55);
	movlw	(055h)
	fcall	_uart1_send_byte
	goto	l8104
	line	164
	
l8182:	
;handle_config.c: 164: else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xDD)
	movf	(_uart1_receive_buffer),w
	xorlw	055h&0ffh
	skipz
	goto	u9211
	goto	u9210
u9211:
	goto	l8192
u9210:
	
l8184:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	0DDh&0ffh
	skipz
	goto	u9221
	goto	u9220
u9221:
	goto	l8192
u9220:
	line	166
	
l8186:	
;handle_config.c: 165: {
;handle_config.c: 166: write_24c02(0x09, uart1_receive_buffer[1]);
	movf	0+(_uart1_receive_buffer)+01h,w
	movwf	(write_24c02@data)
	movlw	(09h)
	fcall	_write_24c02
	goto	l8104
	line	171
	
l8192:	
;handle_config.c: 171: else if(uart1_receive_buffer[0] == 0xDD && uart1_receive_buffer[7] == 0x55)
	movf	(_uart1_receive_buffer),w
	xorlw	0DDh&0ffh
	skipz
	goto	u9231
	goto	u9230
u9231:
	goto	l8202
u9230:
	
l8194:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	055h&0ffh
	skipz
	goto	u9241
	goto	u9240
u9241:
	goto	l8202
u9240:
	line	173
	
l8196:	
;handle_config.c: 172: {
;handle_config.c: 173: uart1_send_byte(0xDD);
	movlw	(0DDh)
	fcall	_uart1_send_byte
	line	174
;handle_config.c: 174: uart1_send_byte(0x04);
	movlw	(04h)
	fcall	_uart1_send_byte
	line	175
;handle_config.c: 175: uart1_send_byte(read_24c02(0x09));
	movlw	(09h)
	fcall	_read_24c02
	fcall	_uart1_send_byte
	line	176
;handle_config.c: 176: uart1_send_byte(0x55);
	movlw	(055h)
	fcall	_uart1_send_byte
	goto	l8104
	line	182
	
l8202:	
;handle_config.c: 182: else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xEE)
	movf	(_uart1_receive_buffer),w
	xorlw	055h&0ffh
	skipz
	goto	u9251
	goto	u9250
u9251:
	goto	l8212
u9250:
	
l8204:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	0EEh&0ffh
	skipz
	goto	u9261
	goto	u9260
u9261:
	goto	l8212
u9260:
	line	184
	
l8206:	
;handle_config.c: 183: {
;handle_config.c: 184: write_24c02(0x01, uart1_receive_buffer[1]);
	movf	0+(_uart1_receive_buffer)+01h,w
	movwf	(write_24c02@data)
	movlw	(01h)
	fcall	_write_24c02
	goto	l8104
	line	189
	
l8212:	
;handle_config.c: 189: else if(uart1_receive_buffer[0] == 0xEE && uart1_receive_buffer[7] == 0x55)
	movf	(_uart1_receive_buffer),w
	xorlw	0EEh&0ffh
	skipz
	goto	u9271
	goto	u9270
u9271:
	goto	l8222
u9270:
	
l8214:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	055h&0ffh
	skipz
	goto	u9281
	goto	u9280
u9281:
	goto	l8222
u9280:
	line	191
	
l8216:	
;handle_config.c: 190: {
;handle_config.c: 191: uart1_send_byte(0xEE);
	movlw	(0EEh)
	fcall	_uart1_send_byte
	line	192
;handle_config.c: 192: uart1_send_byte(0x04);
	movlw	(04h)
	fcall	_uart1_send_byte
	line	193
;handle_config.c: 193: uart1_send_byte(read_24c02(0x01));
	movlw	(01h)
	fcall	_read_24c02
	fcall	_uart1_send_byte
	line	194
;handle_config.c: 194: uart1_send_byte(0x55);
	movlw	(055h)
	fcall	_uart1_send_byte
	goto	l8104
	line	200
	
l8222:	
;handle_config.c: 200: else if(uart1_receive_buffer[0] == 0x55 && uart1_receive_buffer[7] == 0xFF)
	movf	(_uart1_receive_buffer),w
	xorlw	055h&0ffh
	skipz
	goto	u9291
	goto	u9290
u9291:
	goto	l8244
u9290:
	
l8224:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	0FFh&0ffh
	skipz
	goto	u9301
	goto	u9300
u9301:
	goto	l8244
u9300:
	line	202
	
l8226:	
;handle_config.c: 201: {
;handle_config.c: 202: write_24c02(0x02, 0xEF);
	movlw	(0EFh)
	movwf	(write_24c02@data)
	movlw	(02h)
	fcall	_write_24c02
	line	203
	
l8228:	
;handle_config.c: 203: write_24c02(0x03 + 0x00, PWD_TABLE[uart1_receive_buffer[1]]);
	movlb 0	; select bank0
	movf	0+(_uart1_receive_buffer)+01h,w
	addlw	low(_PWD_TABLE|8000h)
	movwf	fsr0l
	movlw	high(_PWD_TABLE|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(write_24c02@data)
	movlw	(03h)
	fcall	_write_24c02
	line	204
	
l8230:	
;handle_config.c: 204: write_24c02(0x03 + 0x01, PWD_TABLE[uart1_receive_buffer[2]]);
	movlb 0	; select bank0
	movf	0+(_uart1_receive_buffer)+02h,w
	addlw	low(_PWD_TABLE|8000h)
	movwf	fsr0l
	movlw	high(_PWD_TABLE|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(write_24c02@data)
	movlw	(04h)
	fcall	_write_24c02
	line	205
	
l8232:	
;handle_config.c: 205: write_24c02(0x03 + 0x02, PWD_TABLE[uart1_receive_buffer[3]]);
	movlb 0	; select bank0
	movf	0+(_uart1_receive_buffer)+03h,w
	addlw	low(_PWD_TABLE|8000h)
	movwf	fsr0l
	movlw	high(_PWD_TABLE|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(write_24c02@data)
	movlw	(05h)
	fcall	_write_24c02
	line	206
	
l8234:	
;handle_config.c: 206: write_24c02(0x03 + 0x03, PWD_TABLE[uart1_receive_buffer[4]]);
	movlb 0	; select bank0
	movf	0+(_uart1_receive_buffer)+04h,w
	addlw	low(_PWD_TABLE|8000h)
	movwf	fsr0l
	movlw	high(_PWD_TABLE|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(write_24c02@data)
	movlw	(06h)
	fcall	_write_24c02
	line	207
	
l8236:	
;handle_config.c: 207: write_24c02(0x03 + 0x04, PWD_TABLE[uart1_receive_buffer[5]]);
	movlb 0	; select bank0
	movf	0+(_uart1_receive_buffer)+05h,w
	addlw	low(_PWD_TABLE|8000h)
	movwf	fsr0l
	movlw	high(_PWD_TABLE|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(write_24c02@data)
	movlw	(07h)
	fcall	_write_24c02
	line	208
	
l8238:	
;handle_config.c: 208: write_24c02(0x03 + 0x05, PWD_TABLE[uart1_receive_buffer[6]]);
	movlb 0	; select bank0
	movf	0+(_uart1_receive_buffer)+06h,w
	addlw	low(_PWD_TABLE|8000h)
	movwf	fsr0l
	movlw	high(_PWD_TABLE|8000h)
	skipnc
	addlw	1
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(write_24c02@data)
	movlw	(08h)
	fcall	_write_24c02
	goto	l8104
	line	213
	
l8244:	
;handle_config.c: 213: else if(uart1_receive_buffer[0] == 0xFF && uart1_receive_buffer[7] == 0x55)
	movf	(_uart1_receive_buffer),w
	xorlw	0FFh&0ffh
	skipz
	goto	u9311
	goto	u9310
u9311:
	goto	l8280
u9310:
	
l8246:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	055h&0ffh
	skipz
	goto	u9321
	goto	u9320
u9321:
	goto	l8280
u9320:
	line	215
	
l8248:	
;handle_config.c: 214: {
;handle_config.c: 215: uart1_send_byte(0xFF);
	movlw	(0FFh)
	fcall	_uart1_send_byte
	line	216
;handle_config.c: 216: uart1_send_byte(0x09);
	movlw	(09h)
	fcall	_uart1_send_byte
	line	217
	
l8250:	
;handle_config.c: 217: for (i = 0x00; i < 0x06; i++)
	movlb 0	; select bank0
	clrf	(handle_config@i)
	clrf	(handle_config@i+1)
	line	219
	
l8256:	
;handle_config.c: 218: {
;handle_config.c: 219: tmp_buffer[i] = find_project_key(read_24c02(0x03 + i));
	movf	(handle_config@i),w
	addlw	handle_config@tmp_buffer&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(handle_config@i),w
	addlw	03h
	fcall	_read_24c02
	fcall	_find_project_key
	movwf	indf1
	line	217
	
l8258:	
	movlb 0	; select bank0
	incf	(handle_config@i),f
	skipnz
	incf	(handle_config@i+1),f
	
l8260:	
	movlw	high(06h)
	subwf	(handle_config@i+1),w
	movlw	low(06h)
	skipnz
	subwf	(handle_config@i),w
	skipc
	goto	u9331
	goto	u9330
u9331:
	goto	l8256
u9330:
	line	221
	
l8262:	
;handle_config.c: 220: }
;handle_config.c: 221: uart1_send_byte(tmp_buffer[0]);
	movf	(handle_config@tmp_buffer),w
	fcall	_uart1_send_byte
	line	222
;handle_config.c: 222: uart1_send_byte(tmp_buffer[1]);
	movlb 0	; select bank0
	movf	0+(handle_config@tmp_buffer)+01h,w
	fcall	_uart1_send_byte
	line	223
;handle_config.c: 223: uart1_send_byte(tmp_buffer[2]);
	movlb 0	; select bank0
	movf	0+(handle_config@tmp_buffer)+02h,w
	fcall	_uart1_send_byte
	line	224
;handle_config.c: 224: uart1_send_byte(tmp_buffer[3]);
	movlb 0	; select bank0
	movf	0+(handle_config@tmp_buffer)+03h,w
	fcall	_uart1_send_byte
	line	225
;handle_config.c: 225: uart1_send_byte(tmp_buffer[4]);
	movlb 0	; select bank0
	movf	0+(handle_config@tmp_buffer)+04h,w
	fcall	_uart1_send_byte
	line	226
;handle_config.c: 226: uart1_send_byte(tmp_buffer[5]);
	movlb 0	; select bank0
	movf	0+(handle_config@tmp_buffer)+05h,w
	fcall	_uart1_send_byte
	line	227
;handle_config.c: 227: uart1_send_byte(0x55);
	movlw	(055h)
	fcall	_uart1_send_byte
	line	228
	
l8264:	
;handle_config.c: 228: for (i = 0x00; i < 0x06; i++)
	movlb 0	; select bank0
	clrf	(handle_config@i)
	clrf	(handle_config@i+1)
	line	230
	
l8270:	
;handle_config.c: 229: {
;handle_config.c: 230: tmp_buffer[i] = 0x00;
	movf	(handle_config@i),w
	addlw	handle_config@tmp_buffer&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	228
	
l8272:	
	incf	(handle_config@i),f
	skipnz
	incf	(handle_config@i+1),f
	
l8274:	
	movlw	high(06h)
	subwf	(handle_config@i+1),w
	movlw	low(06h)
	skipnz
	subwf	(handle_config@i),w
	skipc
	goto	u9341
	goto	u9340
u9341:
	goto	l8270
u9340:
	goto	l51
	line	255
	
l8280:	
;handle_config.c: 255: else if(uart1_receive_buffer[0] == 0x99 && uart1_receive_buffer[7] == 0x55)
	movf	(_uart1_receive_buffer),w
	xorlw	099h&0ffh
	skipz
	goto	u9351
	goto	u9350
u9351:
	goto	l8300
u9350:
	
l8282:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	055h&0ffh
	skipz
	goto	u9361
	goto	u9360
u9361:
	goto	l8300
u9360:
	line	257
	
l8284:	
;handle_config.c: 256: {
;handle_config.c: 257: report_the_loss_count = read_24c02(0xFF);
	movlw	(0FFh)
	fcall	_read_24c02
	movlb 0	; select bank0
	movwf	(handle_config@report_the_loss_count)
	line	258
;handle_config.c: 258: uart1_send_byte(0x99);
	movlw	(099h)
	fcall	_uart1_send_byte
	line	259
	
l8286:	
;handle_config.c: 259: for (i = 0x01; i < (report_the_loss_count + 0x01); i++)
	movlb 0	; select bank0
	clrf	(handle_config@i)
	incf	(handle_config@i),f
	clrf	(handle_config@i+1)
	goto	l8292
	line	261
	
l8288:	
;handle_config.c: 260: {
;handle_config.c: 261: uart1_send_byte(read_24c02(0x40 + (i - 0x01) * 0x04 + 0x00));
	movf	(handle_config@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	03Ch
	fcall	_read_24c02
	fcall	_uart1_send_byte
	line	262
;handle_config.c: 262: uart1_send_byte(read_24c02(0x40 + (i - 0x01) * 0x04 + 0x01));
	movlb 0	; select bank0
	movf	(handle_config@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	03Dh
	fcall	_read_24c02
	fcall	_uart1_send_byte
	line	263
;handle_config.c: 263: uart1_send_byte(read_24c02(0x40 + (i - 0x01) * 0x04 + 0x02));
	movlb 0	; select bank0
	movf	(handle_config@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	03Eh
	fcall	_read_24c02
	fcall	_uart1_send_byte
	line	264
;handle_config.c: 264: uart1_send_byte(read_24c02(0x40 + (i - 0x01) * 0x04 + 0x03));
	movlb 0	; select bank0
	movf	(handle_config@i),w
	addwf	wreg,w
	addwf	wreg,w
	addlw	03Fh
	fcall	_read_24c02
	fcall	_uart1_send_byte
	line	259
	
l8290:	
	movlb 0	; select bank0
	incf	(handle_config@i),f
	skipnz
	incf	(handle_config@i+1),f
	
l8292:	
	movf	(handle_config@report_the_loss_count),w
	addlw	low(01h)
	movwf	(??_handle_config+0)+0
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((??_handle_config+0)+0)+1
	movf	1+(??_handle_config+0)+0,w
	subwf	(handle_config@i+1),w
	skipz
	goto	u9375
	movf	0+(??_handle_config+0)+0,w
	subwf	(handle_config@i),w
u9375:
	skipc
	goto	u9371
	goto	u9370
u9371:
	goto	l8288
u9370:
	line	266
	
l8294:	
;handle_config.c: 265: }
;handle_config.c: 266: uart1_send_byte(0x55);
	movlw	(055h)
	fcall	_uart1_send_byte
	goto	l8104
	line	272
	
l8300:	
;handle_config.c: 272: else if (uart1_receive_buffer[0] == 0x88 && uart1_receive_buffer[7] == 0x55)
	movf	(_uart1_receive_buffer),w
	xorlw	088h&0ffh
	skipz
	goto	u9381
	goto	u9380
u9381:
	goto	l86
u9380:
	
l8302:	
	movf	0+(_uart1_receive_buffer)+07h,w
	xorlw	055h&0ffh
	skipz
	goto	u9391
	goto	u9390
u9391:
	goto	l86
u9390:
	line	274
	
l8304:	
;handle_config.c: 273: {
;handle_config.c: 274: uart1_send_byte(read_eeprom(0x00));
	movlw	(0)
	fcall	_read_eeprom
	fcall	_uart1_send_byte
	line	275
;handle_config.c: 275: uart1_send_byte(read_eeprom(0x01));
	movlw	(01h)
	fcall	_read_eeprom
	fcall	_uart1_send_byte
	line	276
;handle_config.c: 276: uart1_send_byte(read_eeprom(0x02));
	movlw	(02h)
	fcall	_read_eeprom
	fcall	_uart1_send_byte
	goto	l8104
	line	284
	
l86:	
	line	285
	
l8310:	
;handle_config.c: 284: }
;handle_config.c: 285: for (i = 0x00; i < 0x08; i++)
	clrf	(handle_config@i)
	clrf	(handle_config@i+1)
	line	287
	
l8316:	
;handle_config.c: 286: {
;handle_config.c: 287: uart1_receive_buffer[i] = 0x00;
	movf	(handle_config@i),w
	addlw	_uart1_receive_buffer&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	285
	
l8318:	
	incf	(handle_config@i),f
	skipnz
	incf	(handle_config@i+1),f
	
l8320:	
	movlw	high(08h)
	subwf	(handle_config@i+1),w
	movlw	low(08h)
	skipnz
	subwf	(handle_config@i),w
	skipc
	goto	u9401
	goto	u9400
u9401:
	goto	l8316
u9400:
	line	289
	
l96:	
	return
	opt stack 0
GLOBAL	__end_of_handle_config
	__end_of_handle_config:
	signat	_handle_config,88
	global	_write_24c02

;; *************** function _write_24c02 *****************
;; Defined at:
;;		line 144 in file "D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_ms
;;		_send_byte
;;		_start_i2c
;;		_stop_i2c
;; This function is called by:
;;		_handle_config
;;		_read_card_content
;;		_handle_rs485
;;		_main
;; This function uses a non-reentrant model
;;
psect	text58,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
	line	144
global __ptext58
__ptext58:	;psect for function _write_24c02
psect	text58
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
	line	144
	global	__size_of_write_24c02
	__size_of_write_24c02	equ	__end_of_write_24c02-_write_24c02
	
_write_24c02:	
;incstack = 0
	opt	stack 13
; Regs used in _write_24c02: [wreg+status,2+status,0+pclath+cstack]
;write_24c02@address stored from wreg
	line	145
	movwf	(write_24c02@address)
	line	149
	
l8322:	
;24c02.c: 149: start_i2c();
	fcall	_start_i2c
	line	150
	
l8324:	
;24c02.c: 150: send_byte(0xA0);
	movlw	(0A0h)
	fcall	_send_byte
	line	151
	
l8326:	
;24c02.c: 151: send_byte(address);
	movf	(write_24c02@address),w
	fcall	_send_byte
	line	152
	
l8328:	
;24c02.c: 152: send_byte(data);
	movf	(write_24c02@data),w
	fcall	_send_byte
	line	153
	
l8330:	
;24c02.c: 153: stop_i2c();
	fcall	_stop_i2c
	line	154
;24c02.c: 154: delay_ms(0x05);
	movlw	05h
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	155
	
l645:	
	return
	opt stack 0
GLOBAL	__end_of_write_24c02
	__end_of_write_24c02:
	signat	_write_24c02,8312
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 70 in file "D:\WORKproject\AJ-BLE-IC\source\driver\delay.c"
;; Parameters:    Size  Location     Type
;;  count           2    1[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  j               2    5[COMMON] unsigned short 
;;  i               2    3[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_config
;;		_deal_floor
;;		_write_24c02
;;		_handle_beep
;;		_main
;; This function uses a non-reentrant model
;;
psect	text59,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\delay.c"
	line	70
global __ptext59
__ptext59:	;psect for function _delay_ms
psect	text59
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\delay.c"
	line	70
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 13
; Regs used in _delay_ms: [wreg+status,2+status,0]
	line	76
	
l8332:	
;delay.c: 74: WORD i, j;
;delay.c: 76: for (i = 0; i < count; i++)
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l8346
	line	78
	
l8334:	
;delay.c: 77: {
;delay.c: 78: for (j = 0; j < 150; j++)
	clrf	(delay_ms@j)
	clrf	(delay_ms@j+1)
	line	79
	
l686:	
	line	80
# 80 "D:\WORKproject\AJ-BLE-IC\source\driver\delay.c"
clrwdt ;# 
psect	text59
	line	78
	
l8340:	
	incf	(delay_ms@j),f
	skipnz
	incf	(delay_ms@j+1),f
	
l8342:	
	movlw	high(096h)
	subwf	(delay_ms@j+1),w
	movlw	low(096h)
	skipnz
	subwf	(delay_ms@j),w
	skipc
	goto	u9411
	goto	u9410
u9411:
	goto	l686
u9410:
	line	76
	
l8344:	
	incf	(delay_ms@i),f
	skipnz
	incf	(delay_ms@i+1),f
	
l8346:	
	movf	(delay_ms@count+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u9425
	movf	(delay_ms@count),w
	subwf	(delay_ms@i),w
u9425:
	skipc
	goto	u9421
	goto	u9420
u9421:
	goto	l8334
u9420:
	line	83
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	_uart1_send_byte

;; *************** function _uart1_send_byte *****************
;; Defined at:
;;		line 99 in file "D:\WORKproject\AJ-BLE-IC\source\driver\uart.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/3
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_config
;;		_deal_floor
;;		_read_card_content
;;		_handle_rs485
;;		_main
;; This function uses a non-reentrant model
;;
psect	text60,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\uart.c"
	line	99
global __ptext60
__ptext60:	;psect for function _uart1_send_byte
psect	text60
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\uart.c"
	line	99
	global	__size_of_uart1_send_byte
	__size_of_uart1_send_byte	equ	__end_of_uart1_send_byte-_uart1_send_byte
	
_uart1_send_byte:	
;incstack = 0
	opt	stack 14
; Regs used in _uart1_send_byte: [wreg]
;uart1_send_byte@data stored from wreg
	line	100
	movwf	(uart1_send_byte@data)
	line	103
	
l8368:	
;uart.c: 103: while (!TX1STAbits.TRMT);
	
l1178:	
	movlb 3	; select bank3
	btfss	(414)^0180h,1	;volatile
	goto	u9431
	goto	u9430
u9431:
	goto	l1178
u9430:
	line	104
	
l8370:	
;uart.c: 104: TX1REG = data;
	movf	(uart1_send_byte@data),w
	movwf	(410)^0180h	;volatile
	line	105
;uart.c: 105: while (!TX1STAbits.TRMT);
	
l1181:	
	btfss	(414)^0180h,1	;volatile
	goto	u9441
	goto	u9440
u9441:
	goto	l1181
u9440:
	line	106
	
l1184:	
	return
	opt stack 0
GLOBAL	__end_of_uart1_send_byte
	__end_of_uart1_send_byte:
	signat	_uart1_send_byte,4216
	global	_read_eeprom

;; *************** function _read_eeprom *****************
;; Defined at:
;;		line 176 in file "D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1C/0
;;		On exit  : 1F/3
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_config
;; This function uses a non-reentrant model
;;
psect	text61,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
	line	176
global __ptext61
__ptext61:	;psect for function _read_eeprom
psect	text61
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
	line	176
	global	__size_of_read_eeprom
	__size_of_read_eeprom	equ	__end_of_read_eeprom-_read_eeprom
	
_read_eeprom:	
;incstack = 0
	opt	stack 13
; Regs used in _read_eeprom: [wreg]
;read_eeprom@address stored from wreg
	line	177
	movwf	(read_eeprom@address)
	line	180
	
l8378:	
;24c02.c: 180: GIE = 0x00;
	bcf	(95/8),(95)&7	;volatile
	line	181
	
l8380:	
;24c02.c: 181: EEADR = address;
	movf	(read_eeprom@address),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	clrf	(401+1)^0180h	;volatile
	line	182
	
l8382:	
;24c02.c: 182: EEPGD = 0x00;
	bcf	(3247/8)^0180h,(3247)&7	;volsfr
	line	183
	
l8384:	
;24c02.c: 183: RD = 0x01;
	bsf	(3240/8)^0180h,(3240)&7	;volsfr
	line	184
	
l8386:	
;24c02.c: 184: GIE = 0x01;
	bsf	(95/8),(95)&7	;volatile
	line	186
;24c02.c: 186: return EEDATA;
	movf	(403)^0180h,w	;volatile
	line	187
	
l651:	
	return
	opt stack 0
GLOBAL	__end_of_read_eeprom
	__end_of_read_eeprom:
	signat	_read_eeprom,4217
	global	_read_24c02

;; *************** function _read_24c02 *****************
;; Defined at:
;;		line 158 in file "D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    3[COMMON] unsigned char 
;;  data            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_rece_byte
;;		_send_byte
;;		_start_i2c
;;		_stop_i2c
;; This function is called by:
;;		_handle_config
;;		_check_user_card
;;		_read_card_content
;;		_check_report_the_loss
;;		_find_card
;;		_handle_rs485
;;		_main
;; This function uses a non-reentrant model
;;
psect	text62,local,class=CODE,delta=2,merge=1
	line	158
global __ptext62
__ptext62:	;psect for function _read_24c02
psect	text62
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
	line	158
	global	__size_of_read_24c02
	__size_of_read_24c02	equ	__end_of_read_24c02-_read_24c02
	
_read_24c02:	
;incstack = 0
	opt	stack 13
; Regs used in _read_24c02: [wreg+status,2+status,0+pclath+cstack]
;read_24c02@address stored from wreg
	line	159
	movwf	(read_24c02@address)
	line	162
	
l8348:	
	line	164
	
l8350:	
;24c02.c: 164: start_i2c();
	fcall	_start_i2c
	line	165
	
l8352:	
;24c02.c: 165: send_byte(0xa0);
	movlw	(0A0h)
	fcall	_send_byte
	line	166
	
l8354:	
;24c02.c: 166: send_byte(address);
	movf	(read_24c02@address),w
	fcall	_send_byte
	line	167
	
l8356:	
;24c02.c: 167: start_i2c();
	fcall	_start_i2c
	line	168
	
l8358:	
;24c02.c: 168: send_byte(0xa1);
	movlw	(0A1h)
	fcall	_send_byte
	line	169
	
l8360:	
;24c02.c: 169: data = rece_byte();
	fcall	_rece_byte
	movwf	(read_24c02@data)
	line	170
	
l8362:	
;24c02.c: 170: stop_i2c();
	fcall	_stop_i2c
	line	172
	
l8364:	
;24c02.c: 172: return data;
	movf	(read_24c02@data),w
	line	173
	
l648:	
	return
	opt stack 0
GLOBAL	__end_of_read_24c02
	__end_of_read_24c02:
	signat	_read_24c02,4217
	global	_stop_i2c

;; *************** function _stop_i2c *****************
;; Defined at:
;;		line 72 in file "D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_write_24c02
;;		_read_24c02
;; This function uses a non-reentrant model
;;
psect	text63,local,class=CODE,delta=2,merge=1
	line	72
global __ptext63
__ptext63:	;psect for function _stop_i2c
psect	text63
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
	line	72
	global	__size_of_stop_i2c
	__size_of_stop_i2c	equ	__end_of_stop_i2c-_stop_i2c
	
_stop_i2c:	
;incstack = 0
	opt	stack 13
; Regs used in _stop_i2c: []
	line	76
	
l10014:	
;24c02.c: 76: RC4 = 0x00;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	77
;24c02.c: 77: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	78
;24c02.c: 78: RC3 = 0x01;
	movlb 0	; select bank0
	bsf	(115/8),(115)&7	;volatile
	line	79
;24c02.c: 79: __nop();__nop();__nop();__nop();__nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	80
;24c02.c: 80: RC4 = 0x01;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	81
;24c02.c: 81: __nop();__nop();__nop();__nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	82
	
l629:	
	return
	opt stack 0
GLOBAL	__end_of_stop_i2c
	__end_of_stop_i2c:
	signat	_stop_i2c,88
	global	_start_i2c

;; *************** function _start_i2c *****************
;; Defined at:
;;		line 57 in file "D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_write_24c02
;;		_read_24c02
;; This function uses a non-reentrant model
;;
psect	text64,local,class=CODE,delta=2,merge=1
	line	57
global __ptext64
__ptext64:	;psect for function _start_i2c
psect	text64
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
	line	57
	global	__size_of_start_i2c
	__size_of_start_i2c	equ	__end_of_start_i2c-_start_i2c
	
_start_i2c:	
;incstack = 0
	opt	stack 13
; Regs used in _start_i2c: []
	line	61
	
l10012:	
;24c02.c: 61: RC4 = 0x01;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	62
;24c02.c: 62: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	63
;24c02.c: 63: RC3 = 0x01;
	movlb 0	; select bank0
	bsf	(115/8),(115)&7	;volatile
	line	64
;24c02.c: 64: __nop();__nop();__nop();__nop();__nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	65
;24c02.c: 65: RC4 = 0x00;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	66
;24c02.c: 66: __nop();__nop();__nop();__nop();__nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	67
;24c02.c: 67: RC3 = 0x00;
	movlb 0	; select bank0
	bcf	(115/8),(115)&7	;volatile
	line	68
;24c02.c: 68: __nop();__nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	69
	
l626:	
	return
	opt stack 0
GLOBAL	__end_of_start_i2c
	__end_of_start_i2c:
	signat	_start_i2c,88
	global	_send_byte

;; *************** function _send_byte *****************
;; Defined at:
;;		line 111 in file "D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
;; Parameters:    Size  Location     Type
;;  write_data      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  write_data      1    1[COMMON] unsigned char 
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_write_24c02
;;		_read_24c02
;; This function uses a non-reentrant model
;;
psect	text65,local,class=CODE,delta=2,merge=1
	line	111
global __ptext65
__ptext65:	;psect for function _send_byte
psect	text65
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
	line	111
	global	__size_of_send_byte
	__size_of_send_byte	equ	__end_of_send_byte-_send_byte
	
_send_byte:	
;incstack = 0
	opt	stack 13
; Regs used in _send_byte: [wreg+status,2+status,0]
;send_byte@write_data stored from wreg
	line	112
	movwf	(send_byte@write_data)
	line	117
	
l10036:	
;24c02.c: 115: BYTE i;
;24c02.c: 117: for (i = 0x00; i < 0x08; i++)
	clrf	(send_byte@i)
	line	118
	
l638:	
	line	119
;24c02.c: 118: {
;24c02.c: 119: if (write_data & 0x80)
	btfss	(send_byte@write_data),(7)&7
	goto	u12411
	goto	u12410
u12411:
	goto	l640
u12410:
	line	121
	
l10042:	
;24c02.c: 120: {
;24c02.c: 121: RC4 = 0x01;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	122
;24c02.c: 122: }
	goto	l641
	line	123
	
l640:	
	line	125
;24c02.c: 123: else
;24c02.c: 124: {
;24c02.c: 125: RC4 = 0x00;
	movlb 0	; select bank0
	bcf	(116/8),(116)&7	;volatile
	line	126
	
l641:	
	line	127
;24c02.c: 126: }
;24c02.c: 127: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	128
;24c02.c: 128: RC3 = 0x01;
	movlb 0	; select bank0
	bsf	(115/8),(115)&7	;volatile
	line	129
;24c02.c: 129: __nop();__nop();__nop();__nop();__nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	130
;24c02.c: 130: RC3 = 0x00;
	movlb 0	; select bank0
	bcf	(115/8),(115)&7	;volatile
	line	131
;24c02.c: 131: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	132
;24c02.c: 132: write_data <<= 0x01;
	lslf	(send_byte@write_data),f
	line	117
	
l10044:	
	incf	(send_byte@i),f
	
l10046:	
	movlw	(08h)
	subwf	(send_byte@i),w
	skipc
	goto	u12421
	goto	u12420
u12421:
	goto	l638
u12420:
	
l639:	
	line	134
;24c02.c: 133: }
;24c02.c: 134: __nop();__nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	135
;24c02.c: 135: RC4 = 0x01;
	movlb 0	; select bank0
	bsf	(116/8),(116)&7	;volatile
	line	136
;24c02.c: 136: __nop();__nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	137
;24c02.c: 137: RC3 = 0x01;
	movlb 0	; select bank0
	bsf	(115/8),(115)&7	;volatile
	line	138
;24c02.c: 138: __nop();__nop();__nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	139
;24c02.c: 139: RC3 = 0x00;
	movlb 0	; select bank0
	bcf	(115/8),(115)&7	;volatile
	line	140
;24c02.c: 140: __nop();__nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	141
	
l642:	
	return
	opt stack 0
GLOBAL	__end_of_send_byte
	__end_of_send_byte:
	signat	_send_byte,4216
	global	_rece_byte

;; *************** function _rece_byte *****************
;; Defined at:
;;		line 85 in file "D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[COMMON] unsigned char 
;;  read_data       1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_24c02
;; This function uses a non-reentrant model
;;
psect	text66,local,class=CODE,delta=2,merge=1
	line	85
global __ptext66
__ptext66:	;psect for function _rece_byte
psect	text66
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\24c02.c"
	line	85
	global	__size_of_rece_byte
	__size_of_rece_byte	equ	__end_of_rece_byte-_rece_byte
	
_rece_byte:	
;incstack = 0
	opt	stack 13
; Regs used in _rece_byte: [wreg+status,2+status,0]
	line	89
	
l10016:	
	line	90
;24c02.c: 90: BYTE read_data = 0x00;
	clrf	(rece_byte@read_data)
	line	92
	
l10018:	
;24c02.c: 92: (TRISCbits.TRISC4) = 0x01;
	movlb 1	; select bank1
	bsf	(142)^080h,4	;volatile
	line	93
;24c02.c: 93: for (i = 0x00; i < 0x08; i++)
	clrf	(rece_byte@i)
	line	94
	
l632:	
	line	95
;24c02.c: 94: {
;24c02.c: 95: __nop();__nop();__nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	96
;24c02.c: 96: RC3 = 0x01;
	movlb 0	; select bank0
	bsf	(115/8),(115)&7	;volatile
	line	97
;24c02.c: 97: __nop();__nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	98
;24c02.c: 98: read_data <<= 0x01;
	lslf	(rece_byte@read_data),f
	line	99
;24c02.c: 99: if (RC4 == 0x01)
	movlb 0	; select bank0
	btfss	(116/8),(116)&7	;volatile
	goto	u12391
	goto	u12390
u12391:
	goto	l10026
u12390:
	line	101
	
l10024:	
;24c02.c: 100: {
;24c02.c: 101: read_data = read_data + 0x01;
	incf	(rece_byte@read_data),f
	line	103
	
l10026:	
;24c02.c: 102: }
;24c02.c: 103: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	104
	
l10028:	
;24c02.c: 104: RC3 = 0x00;
	movlb 0	; select bank0
	bcf	(115/8),(115)&7	;volatile
	line	93
	incf	(rece_byte@i),f
	
l10030:	
	movlw	(08h)
	subwf	(rece_byte@i),w
	skipc
	goto	u12401
	goto	u12400
u12401:
	goto	l632
u12400:
	
l633:	
	line	106
;24c02.c: 105: }
;24c02.c: 106: (TRISCbits.TRISC4) = 0x00;
	movlb 1	; select bank1
	bcf	(142)^080h,4	;volatile
	line	107
	
l10032:	
;24c02.c: 107: return read_data;
	movf	(rece_byte@read_data),w
	line	108
	
l635:	
	return
	opt stack 0
GLOBAL	__end_of_rece_byte
	__end_of_rece_byte:
	signat	_rece_byte,89
	global	_find_project_key

;; *************** function _find_project_key *****************
;; Defined at:
;;		line 51 in file "D:\WORKproject\AJ-BLE-IC\source\application\handle_config.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    1[COMMON] unsigned char 
;;  i               2    2[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_config
;; This function uses a non-reentrant model
;;
psect	text67,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_config.c"
	line	51
global __ptext67
__ptext67:	;psect for function _find_project_key
psect	text67
	file	"D:\WORKproject\AJ-BLE-IC\source\application\handle_config.c"
	line	51
	global	__size_of_find_project_key
	__size_of_find_project_key	equ	__end_of_find_project_key-_find_project_key
	
_find_project_key:	
;incstack = 0
	opt	stack 13
; Regs used in _find_project_key: [wreg-fsr0h+status,2+status,0+pclath]
;find_project_key@data stored from wreg
	line	52
	movwf	(find_project_key@data)
	line	57
	
l8056:	
;handle_config.c: 55: WORD i;
;handle_config.c: 57: for (i = 0x00; i < 0x100; i++)
	clrf	(find_project_key@i)
	clrf	(find_project_key@i+1)
	line	59
	
l8062:	
;handle_config.c: 58: {
;handle_config.c: 59: if (data == PWD_TABLE[i])
	movlw	low(_PWD_TABLE|8000h)
	addwf	(find_project_key@i),w
	movwf	fsr0l
	movlw	high(_PWD_TABLE|8000h)
	addwfc	(find_project_key@i+1),w
	movwf	fsr0h
	movf	indf0,w ;code access
	xorwf	(find_project_key@data),w
	skipz
	goto	u9011
	goto	u9010
u9011:
	goto	l8068
u9010:
	line	61
	
l8064:	
;handle_config.c: 60: {
;handle_config.c: 61: return i;
	movf	(find_project_key@i),w
	goto	l46
	line	57
	
l8068:	
	incf	(find_project_key@i),f
	skipnz
	incf	(find_project_key@i+1),f
	
l8070:	
	movlw	high(0100h)
	subwf	(find_project_key@i+1),w
	movlw	low(0100h)
	skipnz
	subwf	(find_project_key@i),w
	skipc
	goto	u9021
	goto	u9020
u9021:
	goto	l8062
u9020:
	line	65
	
l8072:	
;handle_config.c: 62: }
;handle_config.c: 63: }
;handle_config.c: 65: return 0x00;
	movlw	(0)
	line	66
	
l46:	
	return
	opt stack 0
GLOBAL	__end_of_find_project_key
	__end_of_find_project_key:
	signat	_find_project_key,4217
	global	_ds1302_set_time

;; *************** function _ds1302_set_time *****************
;; Defined at:
;;		line 188 in file "D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ds1302_write
;; This function is called by:
;;		_handle_config
;;		_read_card_content
;; This function uses a non-reentrant model
;;
psect	text68,local,class=CODE,delta=2,merge=1
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
	line	188
global __ptext68
__ptext68:	;psect for function _ds1302_set_time
psect	text68
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
	line	188
	global	__size_of_ds1302_set_time
	__size_of_ds1302_set_time	equ	__end_of_ds1302_set_time-_ds1302_set_time
	
_ds1302_set_time:	
;incstack = 0
	opt	stack 10
; Regs used in _ds1302_set_time: [wreg+status,2+status,0+pclath+cstack]
	line	193
	
l8372:	
;ds1302.c: 193: ds1302_write(0x8E, 0x00);
	clrf	(ds1302_write@data)
	movlw	(08Eh)
	fcall	_ds1302_write
	line	196
;ds1302.c: 196: ds1302_write(0x80, second & 0x7F);
	movlb 1	; select bank1
	movf	(_second)^080h,w
	movwf	(ds1302_write@data)
	bcf	(ds1302_write@data)+(7/8),(7)&7
	movlw	(080h)
	fcall	_ds1302_write
	line	197
;ds1302.c: 197: ds1302_write(0x82, minute );
	movlb 1	; select bank1
	movf	(_minute)^080h,w
	movwf	(ds1302_write@data)
	movlw	(082h)
	fcall	_ds1302_write
	line	198
;ds1302.c: 198: ds1302_write(0x84, hour & 0x3F);
	movlb 1	; select bank1
	movf	(_hour)^080h,w
	movwf	(ds1302_write@data)
	movlw	(03Fh)
	andwf	(ds1302_write@data),f
	movlw	(084h)
	fcall	_ds1302_write
	line	199
;ds1302.c: 199: ds1302_write(0x86, day);
	movlb 0	; select bank0
	movf	(_day),w
	movwf	(ds1302_write@data)
	movlw	(086h)
	fcall	_ds1302_write
	line	200
;ds1302.c: 200: ds1302_write(0x88, month);
	movlb 0	; select bank0
	movf	(_month),w
	movwf	(ds1302_write@data)
	movlw	(088h)
	fcall	_ds1302_write
	line	201
;ds1302.c: 201: ds1302_write(0x8C, year);
	movlb 0	; select bank0
	movf	(_year),w
	movwf	(ds1302_write@data)
	movlw	(08Ch)
	fcall	_ds1302_write
	line	202
;ds1302.c: 202: ds1302_write(0x8A, week);
	movlb 1	; select bank1
	movf	(_week)^080h,w
	movwf	(ds1302_write@data)
	movlw	(08Ah)
	fcall	_ds1302_write
	line	205
;ds1302.c: 205: ds1302_write(0x8E, 0x80);
	movlw	(080h)
	movwf	(ds1302_write@data)
	movlw	(08Eh)
	fcall	_ds1302_write
	line	206
	
l741:	
	return
	opt stack 0
GLOBAL	__end_of_ds1302_set_time
	__end_of_ds1302_set_time:
	signat	_ds1302_set_time,88
	global	_ds1302_write

;; *************** function _ds1302_write *****************
;; Defined at:
;;		line 150 in file "D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ds1302_write_byte
;; This function is called by:
;;		_ds1302_set_time
;; This function uses a non-reentrant model
;;
psect	text69,local,class=CODE,delta=2,merge=1
	line	150
global __ptext69
__ptext69:	;psect for function _ds1302_write
psect	text69
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
	line	150
	global	__size_of_ds1302_write
	__size_of_ds1302_write	equ	__end_of_ds1302_write-_ds1302_write
	
_ds1302_write:	
;incstack = 0
	opt	stack 10
; Regs used in _ds1302_write: [wreg+status,2+status,0+pclath+cstack]
;ds1302_write@address stored from wreg
	line	151
	movwf	(ds1302_write@address)
	line	155
	
l10100:	
;ds1302.c: 155: (RC0) = 0x00;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7	;volatile
	line	156
;ds1302.c: 156: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	157
;ds1302.c: 157: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	158
;ds1302.c: 158: (RC2) = 0x00;
	movlb 0	; select bank0
	bcf	(114/8),(114)&7	;volatile
	line	159
;ds1302.c: 159: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	160
;ds1302.c: 160: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	161
;ds1302.c: 161: (RC0) = 0x01;
	movlb 0	; select bank0
	bsf	(112/8),(112)&7	;volatile
	line	162
;ds1302.c: 162: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	163
;ds1302.c: 163: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	164
	
l10102:	
;ds1302.c: 164: ds1302_write_byte(address);
	movf	(ds1302_write@address),w
	fcall	_ds1302_write_byte
	line	165
;ds1302.c: 165: ds1302_write_byte(data);
	movf	(ds1302_write@data),w
	fcall	_ds1302_write_byte
	line	166
	
l10104:	
;ds1302.c: 166: (RC0) = 0x00;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7	;volatile
	line	167
	
l10106:	
;ds1302.c: 167: (RC2) = 0x01;
	bsf	(114/8),(114)&7	;volatile
	line	168
	
l10108:	
;ds1302.c: 168: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	169
	
l10110:	
;ds1302.c: 169: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	170
	
l735:	
	return
	opt stack 0
GLOBAL	__end_of_ds1302_write
	__end_of_ds1302_write:
	signat	_ds1302_write,8312
	global	_ds1302_get_time

;; *************** function _ds1302_get_time *****************
;; Defined at:
;;		line 173 in file "D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/1
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ds1302_read
;; This function is called by:
;;		_handle_config
;;		_read_card_content
;; This function uses a non-reentrant model
;;
psect	text70,local,class=CODE,delta=2,merge=1
	line	173
global __ptext70
__ptext70:	;psect for function _ds1302_get_time
psect	text70
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
	line	173
	global	__size_of_ds1302_get_time
	__size_of_ds1302_get_time	equ	__end_of_ds1302_get_time-_ds1302_get_time
	
_ds1302_get_time:	
;incstack = 0
	opt	stack 10
; Regs used in _ds1302_get_time: [wreg+status,2+status,0+pclath+cstack]
	line	177
	
l8374:	
;ds1302.c: 177: year = ds1302_read(0x8D);
	movlw	(08Dh)
	fcall	_ds1302_read
	movlb 0	; select bank0
	movwf	(_year)
	line	178
;ds1302.c: 178: month = ds1302_read(0x89);
	movlw	(089h)
	fcall	_ds1302_read
	movlb 0	; select bank0
	movwf	(_month)
	line	179
;ds1302.c: 179: day = ds1302_read(0x87);
	movlw	(087h)
	fcall	_ds1302_read
	movlb 0	; select bank0
	movwf	(_day)
	line	180
;ds1302.c: 180: hour = ds1302_read(0x85);
	movlw	(085h)
	fcall	_ds1302_read
	movlb 1	; select bank1
	movwf	(_hour)^080h
	line	181
	
l8376:	
;ds1302.c: 181: hour &= 0x7F;
	bcf	(_hour)^080h+(7/8),(7)&7
	line	182
;ds1302.c: 182: minute = ds1302_read(0x83);
	movlw	(083h)
	fcall	_ds1302_read
	movlb 1	; select bank1
	movwf	(_minute)^080h
	line	183
;ds1302.c: 183: second = ds1302_read(0x81);
	movlw	(081h)
	fcall	_ds1302_read
	movlb 1	; select bank1
	movwf	(_second)^080h
	line	184
;ds1302.c: 184: week = ds1302_read(0x8B);
	movlw	(08Bh)
	fcall	_ds1302_read
	movlb 1	; select bank1
	movwf	(_week)^080h
	line	185
	
l738:	
	return
	opt stack 0
GLOBAL	__end_of_ds1302_get_time
	__end_of_ds1302_get_time:
	signat	_ds1302_get_time,88
	global	_ds1302_read

;; *************** function _ds1302_read *****************
;; Defined at:
;;		line 124 in file "D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    3[COMMON] unsigned char 
;;  temp            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ds1302_read_byte
;;		_ds1302_write_byte
;; This function is called by:
;;		_ds1302_get_time
;; This function uses a non-reentrant model
;;
psect	text71,local,class=CODE,delta=2,merge=1
	line	124
global __ptext71
__ptext71:	;psect for function _ds1302_read
psect	text71
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
	line	124
	global	__size_of_ds1302_read
	__size_of_ds1302_read	equ	__end_of_ds1302_read-_ds1302_read
	
_ds1302_read:	
;incstack = 0
	opt	stack 10
; Regs used in _ds1302_read: [wreg+status,2+status,0+pclath+cstack]
;ds1302_read@address stored from wreg
	line	125
	movwf	(ds1302_read@address)
	line	130
	
l10084:	
;ds1302.c: 128: BYTE temp;
;ds1302.c: 130: (RC0) = 0x00;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7	;volatile
	line	131
;ds1302.c: 131: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	132
;ds1302.c: 132: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	133
;ds1302.c: 133: (RC2) = 0x00;
	movlb 0	; select bank0
	bcf	(114/8),(114)&7	;volatile
	line	134
;ds1302.c: 134: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	135
;ds1302.c: 135: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	136
;ds1302.c: 136: (RC0) = 0x01;
	movlb 0	; select bank0
	bsf	(112/8),(112)&7	;volatile
	line	137
;ds1302.c: 137: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	138
;ds1302.c: 138: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	139
	
l10086:	
;ds1302.c: 139: ds1302_write_byte(address);
	movf	(ds1302_read@address),w
	fcall	_ds1302_write_byte
	line	140
;ds1302.c: 140: temp = ds1302_read_byte();
	fcall	_ds1302_read_byte
	movwf	(ds1302_read@temp)
	line	141
	
l10088:	
;ds1302.c: 141: (RC0) = 0x00;
	movlb 0	; select bank0
	bcf	(112/8),(112)&7	;volatile
	line	142
	
l10090:	
;ds1302.c: 142: (RC2) = 0x01;
	bsf	(114/8),(114)&7	;volatile
	line	143
	
l10092:	
;ds1302.c: 143: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	144
	
l10094:	
;ds1302.c: 144: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	146
	
l10096:	
;ds1302.c: 146: return temp;
	movf	(ds1302_read@temp),w
	line	147
	
l732:	
	return
	opt stack 0
GLOBAL	__end_of_ds1302_read
	__end_of_ds1302_read:
	signat	_ds1302_read,4217
	global	_ds1302_write_byte

;; *************** function _ds1302_write_byte *****************
;; Defined at:
;;		line 66 in file "D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    1[COMMON] unsigned char 
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ds1302_read
;;		_ds1302_write
;; This function uses a non-reentrant model
;;
psect	text72,local,class=CODE,delta=2,merge=1
	line	66
global __ptext72
__ptext72:	;psect for function _ds1302_write_byte
psect	text72
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
	line	66
	global	__size_of_ds1302_write_byte
	__size_of_ds1302_write_byte	equ	__end_of_ds1302_write_byte-_ds1302_write_byte
	
_ds1302_write_byte:	
;incstack = 0
	opt	stack 10
; Regs used in _ds1302_write_byte: [wreg+status,2+status,0]
;ds1302_write_byte@data stored from wreg
	line	67
	movwf	(ds1302_write_byte@data)
	line	72
	
l10056:	
;ds1302.c: 70: BYTE i;
;ds1302.c: 72: for (i = 8; i > 0; i--)
	movlw	(08h)
	movwf	(ds1302_write_byte@i)
	line	73
	
l719:	
	line	74
;ds1302.c: 73: {
;ds1302.c: 74: if (data & 0x01)
	btfss	(ds1302_write_byte@data),(0)&7
	goto	u12431
	goto	u12430
u12431:
	goto	l721
u12430:
	line	76
	
l10062:	
;ds1302.c: 75: {
;ds1302.c: 76: (RC1) = 0x01;
	movlb 0	; select bank0
	bsf	(113/8),(113)&7	;volatile
	line	77
;ds1302.c: 77: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	78
;ds1302.c: 78: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	79
;ds1302.c: 79: }
	goto	l722
	line	80
	
l721:	
	line	82
;ds1302.c: 80: else
;ds1302.c: 81: {
;ds1302.c: 82: (RC1) = 0x00;
	movlb 0	; select bank0
	bcf	(113/8),(113)&7	;volatile
	line	83
;ds1302.c: 83: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	84
;ds1302.c: 84: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	85
	
l722:	
	line	86
;ds1302.c: 85: }
;ds1302.c: 86: (RC2) = 0x00;
	movlb 0	; select bank0
	bcf	(114/8),(114)&7	;volatile
	line	87
;ds1302.c: 87: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	88
;ds1302.c: 88: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	89
;ds1302.c: 89: (RC2) = 0x01;
	movlb 0	; select bank0
	bsf	(114/8),(114)&7	;volatile
	line	90
;ds1302.c: 90: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	91
;ds1302.c: 91: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	92
;ds1302.c: 92: data = data >> 1;
	lsrf	(ds1302_write_byte@data),f
	line	72
	
l10064:	
	decf	(ds1302_write_byte@i),f
	movf	(ds1302_write_byte@i),f
	skipz
	goto	u12441
	goto	u12440
u12441:
	goto	l719
u12440:
	line	94
	
l723:	
	return
	opt stack 0
GLOBAL	__end_of_ds1302_write_byte
	__end_of_ds1302_write_byte:
	signat	_ds1302_write_byte,4216
	global	_ds1302_read_byte

;; *************** function _ds1302_read_byte *****************
;; Defined at:
;;		line 97 in file "D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[COMMON] unsigned char 
;;  data            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ds1302_read
;; This function uses a non-reentrant model
;;
psect	text73,local,class=CODE,delta=2,merge=1
	line	97
global __ptext73
__ptext73:	;psect for function _ds1302_read_byte
psect	text73
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\ds1302.c"
	line	97
	global	__size_of_ds1302_read_byte
	__size_of_ds1302_read_byte	equ	__end_of_ds1302_read_byte-_ds1302_read_byte
	
_ds1302_read_byte:	
;incstack = 0
	opt	stack 10
; Regs used in _ds1302_read_byte: [wreg+status,2+status,0]
	line	101
	
l10066:	
;ds1302.c: 101: BYTE i, data = 0x00;
	clrf	(ds1302_read_byte@data)
	line	103
	
l10068:	
;ds1302.c: 103: (TRISCbits.TRISC1) = 0x01;
	movlb 1	; select bank1
	bsf	(142)^080h,1	;volatile
	line	104
;ds1302.c: 104: for (i = 0x00; i < 0x08; i++)
	clrf	(ds1302_read_byte@i)
	line	105
	
l726:	
	line	106
;ds1302.c: 105: {
;ds1302.c: 106: data = data >> 0x01;
	lsrf	(ds1302_read_byte@data),f
	line	107
;ds1302.c: 107: (RC2) = 0x01;
	movlb 0	; select bank0
	bsf	(114/8),(114)&7	;volatile
	line	108
;ds1302.c: 108: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	109
;ds1302.c: 109: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	110
;ds1302.c: 110: (RC2) = 0x00;
	movlb 0	; select bank0
	bcf	(114/8),(114)&7	;volatile
	line	111
;ds1302.c: 111: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	112
;ds1302.c: 112: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	113
;ds1302.c: 113: if ((RC1))
	movlb 0	; select bank0
	btfss	(113/8),(113)&7	;volatile
	goto	u12451
	goto	u12450
u12451:
	goto	l10076
u12450:
	line	115
	
l10074:	
;ds1302.c: 114: {
;ds1302.c: 115: data = data | 0x80;
	bsf	(ds1302_read_byte@data)+(7/8),(7)&7
	line	104
	
l10076:	
	incf	(ds1302_read_byte@i),f
	
l10078:	
	movlw	(08h)
	subwf	(ds1302_read_byte@i),w
	skipc
	goto	u12461
	goto	u12460
u12461:
	goto	l726
u12460:
	
l727:	
	line	118
;ds1302.c: 116: }
;ds1302.c: 117: }
;ds1302.c: 118: (TRISCbits.TRISC1) = 0x00;
	movlb 1	; select bank1
	bcf	(142)^080h,1	;volatile
	line	120
	
l10080:	
;ds1302.c: 120: return data;
	movf	(ds1302_read_byte@data),w
	line	121
	
l729:	
	return
	opt stack 0
GLOBAL	__end_of_ds1302_read_byte
	__end_of_ds1302_read_byte:
	signat	_ds1302_read_byte,89
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 79 in file "D:\WORKproject\AJ-BLE-IC\source\driver\interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data_length     1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"D:\WORKproject\AJ-BLE-IC\source\driver\interrupt.c"
	line	79
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	opt	stack 5
; Regs used in _isr: [wreg+fsr1l+fsr1h+status,2+status,0]
psect	intentry
	pagesel	$
	line	83
	
i1l7010:	
	line	85
	
i1l7012:	
;interrupt.c: 85: if (TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7	;volatile
	goto	u797_21
	goto	u797_20
u797_21:
	goto	i1l795
u797_20:
	
i1l7014:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u798_21
	goto	u798_20
u798_21:
	goto	i1l795
u798_20:
	line	87
	
i1l7016:	
;interrupt.c: 86: {
;interrupt.c: 87: TMR1IF = 0x00;
	bcf	(136/8),(136)&7	;volatile
	line	88
	
i1l7018:	
;interrupt.c: 88: TMR1H = 0xE0;
	movlw	(0E0h)
	movwf	(23)	;volatile
	line	89
;interrupt.c: 89: TMR1L = 0xC0;
	movlw	(0C0h)
	movwf	(22)	;volatile
	line	90
	
i1l7020:	
;interrupt.c: 90: timer_count++;
	movlb 1	; select bank1
	incf	(_timer_count)^080h,f
	skipnz
	incf	(_timer_count+1)^080h,f
	line	91
	
i1l7022:	
;interrupt.c: 91: if (timer_count >= 1000)
	movlw	high(03E8h)
	subwf	(_timer_count+1)^080h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_timer_count)^080h,w
	skipc
	goto	u799_21
	goto	u799_20
u799_21:
	goto	i1l7028
u799_20:
	line	93
	
i1l7024:	
;interrupt.c: 92: {
;interrupt.c: 93: timer_count = 0x00;
	clrf	(_timer_count)^080h
	clrf	(_timer_count+1)^080h
	line	94
	
i1l7026:	
;interrupt.c: 94: flag_timer = 0x01;
	movlb 0	; select bank0
	clrf	(_flag_timer)
	incf	(_flag_timer),f
	line	97
	
i1l7028:	
;interrupt.c: 95: }
;interrupt.c: 97: if (count_uart1_receive > 0x00)
	movlb 0	; select bank0
	movf	(_count_uart1_receive),w
	skipz
	goto	u800_20
	goto	i1l7032
u800_20:
	line	99
	
i1l7030:	
;interrupt.c: 98: {
;interrupt.c: 99: count_uart1_receive--;
	decf	(_count_uart1_receive),f
	line	100
;interrupt.c: 100: }
	goto	i1l7036
	line	101
	
i1l7032:	
;interrupt.c: 101: else if (count_uart1_receive == 0x00)
	movf	(_count_uart1_receive),f
	skipz
	goto	u801_21
	goto	u801_20
u801_21:
	goto	i1l7036
u801_20:
	line	103
	
i1l7034:	
;interrupt.c: 102: {
;interrupt.c: 103: uart1_cnt = 0x00;
	clrf	(_uart1_cnt)
	line	110
;interrupt.c: 104: }
	
i1l7036:	
;interrupt.c: 108: }
;interrupt.c: 110: if (count_uart2_receive > 0x00)
	movf	(_count_uart2_receive),w
	skipz
	goto	u802_20
	goto	i1l7040
u802_20:
	line	112
	
i1l7038:	
;interrupt.c: 111: {
;interrupt.c: 112: count_uart2_receive--;
	decf	(_count_uart2_receive),f
	line	113
;interrupt.c: 113: }
	goto	i1l795
	line	114
	
i1l7040:	
;interrupt.c: 114: else if (count_uart2_receive == 0x00)
	movf	(_count_uart2_receive),f
	skipz
	goto	u803_21
	goto	u803_20
u803_21:
	goto	i1l795
u803_20:
	line	116
	
i1l7042:	
;interrupt.c: 115: {
;interrupt.c: 116: uart2_cnt = 0x00;
	clrf	(_uart2_cnt)
	line	161
;interrupt.c: 117: }
	
i1l795:	
	line	163
;interrupt.c: 121: }
;interrupt.c: 161: }
;interrupt.c: 163: if (RC1IE && RC1IF)
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7	;volatile
	goto	u804_21
	goto	u804_20
u804_21:
	goto	i1l7064
u804_20:
	
i1l7044:	
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u805_21
	goto	u805_20
u805_21:
	goto	i1l7064
u805_20:
	line	165
	
i1l7046:	
;interrupt.c: 164: {
;interrupt.c: 165: RC1IF = 0x00;
	bcf	(141/8),(141)&7	;volatile
	line	166
	
i1l7048:	
;interrupt.c: 166: uart1_receive_buffer[uart1_cnt++] = RC1REG;
	movf	(_uart1_cnt),w
	addlw	_uart1_receive_buffer&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	movwf	indf1
	
i1l7050:	
	movlb 0	; select bank0
	incf	(_uart1_cnt),f
	line	167
	
i1l7052:	
;interrupt.c: 167: count_uart1_receive = 0x03;
	movlw	(03h)
	movwf	(_count_uart1_receive)
	line	168
	
i1l7054:	
;interrupt.c: 168: if (uart1_cnt == 0x08)
	movf	(_uart1_cnt),w
	xorlw	08h&0ffh
	skipz
	goto	u806_21
	goto	u806_20
u806_21:
	goto	i1l7060
u806_20:
	line	170
	
i1l7056:	
;interrupt.c: 169: {
;interrupt.c: 170: uart1_cnt = 0x00;
	clrf	(_uart1_cnt)
	line	171
	
i1l7058:	
;interrupt.c: 171: flag_uart1_cmd = 0x01;
	clrf	(_flag_uart1_cmd)
	incf	(_flag_uart1_cmd),f
	line	173
	
i1l7060:	
;interrupt.c: 172: }
;interrupt.c: 173: if (uart1_cnt > 0x08)
	movlw	(09h)
	subwf	(_uart1_cnt),w
	skipc
	goto	u807_21
	goto	u807_20
u807_21:
	goto	i1l7064
u807_20:
	line	175
	
i1l7062:	
;interrupt.c: 174: {
;interrupt.c: 175: uart1_cnt = 0x00;
	clrf	(_uart1_cnt)
	line	179
	
i1l7064:	
;interrupt.c: 176: }
;interrupt.c: 177: }
;interrupt.c: 179: if (RC2IE && RC2IF)
	movlb 1	; select bank1
	btfss	(1189/8)^080h,(1189)&7	;volatile
	goto	u808_21
	goto	u808_20
u808_21:
	goto	i1l815
u808_20:
	
i1l7066:	
	movlb 0	; select bank0
	btfss	(165/8),(165)&7	;volatile
	goto	u809_21
	goto	u809_20
u809_21:
	goto	i1l815
u809_20:
	line	181
	
i1l7068:	
;interrupt.c: 180: {
;interrupt.c: 181: RC2IF = 0x00;
	bcf	(165/8),(165)&7	;volatile
	line	182
	
i1l7070:	
;interrupt.c: 182: if (flag_uart2_cmd == 0x00)
	movf	(_flag_uart2_cmd),f
	skipz
	goto	u810_21
	goto	u810_20
u810_21:
	goto	i1l815
u810_20:
	line	184
	
i1l7072:	
;interrupt.c: 183: {
;interrupt.c: 184: uart2_receive_buffer[uart2_cnt] = RC2REG;
	movf	(_uart2_cnt),w
	addlw	_uart2_receive_buffer&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 9	; select bank9
	movf	(1169)^0480h,w	;volatile
	movwf	indf1
	line	185
	
i1l7074:	
;interrupt.c: 185: if (uart2_receive_buffer[0] == 0xF0)
	movlb 1	; select bank1
	movf	(_uart2_receive_buffer)^080h,w
	xorlw	0F0h&0ffh
	skipz
	goto	u811_21
	goto	u811_20
u811_21:
	goto	i1l7078
u811_20:
	line	187
	
i1l7076:	
;interrupt.c: 186: {
;interrupt.c: 187: uart2_cnt++;
	movlb 0	; select bank0
	incf	(_uart2_cnt),f
	line	189
	
i1l7078:	
;interrupt.c: 188: }
;interrupt.c: 189: count_uart2_receive = 0x03;
	movlw	(03h)
	movlb 0	; select bank0
	movwf	(_count_uart2_receive)
	line	190
	
i1l7080:	
;interrupt.c: 190: if (uart2_cnt > 0x01)
	movlw	(02h)
	subwf	(_uart2_cnt),w
	skipc
	goto	u812_21
	goto	u812_20
u812_21:
	goto	i1l814
u812_20:
	line	192
	
i1l7082:	
;interrupt.c: 191: {
;interrupt.c: 192: data_length = uart2_receive_buffer[1];
	movlb 1	; select bank1
	movf	0+(_uart2_receive_buffer)^080h+01h,w
	movwf	(isr@data_length)
	line	193
;interrupt.c: 193: if ((uart2_cnt == data_length) && (uart2_receive_buffer[data_length - 0x01] == 0xF1))
	movlb 0	; select bank0
	movf	(_uart2_cnt),w
	xorwf	(isr@data_length),w
	skipz
	goto	u813_21
	goto	u813_20
u813_21:
	goto	i1l814
u813_20:
	
i1l7084:	
	movf	(isr@data_length),w
	addlw	_uart2_receive_buffer+0FFh&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	xorlw	0F1h&0ffh
	skipz
	goto	u814_21
	goto	u814_20
u814_21:
	goto	i1l814
u814_20:
	line	195
	
i1l7086:	
;interrupt.c: 194: {
;interrupt.c: 195: uart2_cnt = 0x00;
	clrf	(_uart2_cnt)
	line	196
	
i1l7088:	
;interrupt.c: 196: flag_uart2_cmd = 0x01;
	clrf	(_flag_uart2_cmd)
	incf	(_flag_uart2_cmd),f
	goto	i1l815
	line	207
;interrupt.c: 204: else
;interrupt.c: 205: {
	
i1l814:	
	line	209
	
i1l815:	
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
global	___latbits
___latbits	equ	3
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end

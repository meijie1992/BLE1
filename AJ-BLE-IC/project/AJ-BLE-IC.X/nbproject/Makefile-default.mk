#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AJ-BLE-IC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AJ-BLE-IC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../source/application/handle_config.c ../../source/application/handle_floor.c ../../source/application/handle_ic_card.c ../../source/application/handle_rs485.c ../../source/application/handle_timer.c ../../source/application/other.c ../../source/application/test.c ../../source/driver/24c02.c ../../source/driver/beep.c ../../source/driver/delay.c ../../source/driver/ds1302.c ../../source/driver/input.c ../../source/driver/interrupt.c ../../source/driver/led.c ../../source/driver/mfrc500.c ../../source/driver/timer.c ../../source/driver/uart.c ../../source/main/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1881241860/handle_config.p1 ${OBJECTDIR}/_ext/1881241860/handle_floor.p1 ${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1 ${OBJECTDIR}/_ext/1881241860/handle_rs485.p1 ${OBJECTDIR}/_ext/1881241860/handle_timer.p1 ${OBJECTDIR}/_ext/1881241860/other.p1 ${OBJECTDIR}/_ext/1881241860/test.p1 ${OBJECTDIR}/_ext/1160428284/24c02.p1 ${OBJECTDIR}/_ext/1160428284/beep.p1 ${OBJECTDIR}/_ext/1160428284/delay.p1 ${OBJECTDIR}/_ext/1160428284/ds1302.p1 ${OBJECTDIR}/_ext/1160428284/input.p1 ${OBJECTDIR}/_ext/1160428284/interrupt.p1 ${OBJECTDIR}/_ext/1160428284/led.p1 ${OBJECTDIR}/_ext/1160428284/mfrc500.p1 ${OBJECTDIR}/_ext/1160428284/timer.p1 ${OBJECTDIR}/_ext/1160428284/uart.p1 ${OBJECTDIR}/_ext/1498664333/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1881241860/handle_config.p1.d ${OBJECTDIR}/_ext/1881241860/handle_floor.p1.d ${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1.d ${OBJECTDIR}/_ext/1881241860/handle_rs485.p1.d ${OBJECTDIR}/_ext/1881241860/handle_timer.p1.d ${OBJECTDIR}/_ext/1881241860/other.p1.d ${OBJECTDIR}/_ext/1881241860/test.p1.d ${OBJECTDIR}/_ext/1160428284/24c02.p1.d ${OBJECTDIR}/_ext/1160428284/beep.p1.d ${OBJECTDIR}/_ext/1160428284/delay.p1.d ${OBJECTDIR}/_ext/1160428284/ds1302.p1.d ${OBJECTDIR}/_ext/1160428284/input.p1.d ${OBJECTDIR}/_ext/1160428284/interrupt.p1.d ${OBJECTDIR}/_ext/1160428284/led.p1.d ${OBJECTDIR}/_ext/1160428284/mfrc500.p1.d ${OBJECTDIR}/_ext/1160428284/timer.p1.d ${OBJECTDIR}/_ext/1160428284/uart.p1.d ${OBJECTDIR}/_ext/1498664333/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1881241860/handle_config.p1 ${OBJECTDIR}/_ext/1881241860/handle_floor.p1 ${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1 ${OBJECTDIR}/_ext/1881241860/handle_rs485.p1 ${OBJECTDIR}/_ext/1881241860/handle_timer.p1 ${OBJECTDIR}/_ext/1881241860/other.p1 ${OBJECTDIR}/_ext/1881241860/test.p1 ${OBJECTDIR}/_ext/1160428284/24c02.p1 ${OBJECTDIR}/_ext/1160428284/beep.p1 ${OBJECTDIR}/_ext/1160428284/delay.p1 ${OBJECTDIR}/_ext/1160428284/ds1302.p1 ${OBJECTDIR}/_ext/1160428284/input.p1 ${OBJECTDIR}/_ext/1160428284/interrupt.p1 ${OBJECTDIR}/_ext/1160428284/led.p1 ${OBJECTDIR}/_ext/1160428284/mfrc500.p1 ${OBJECTDIR}/_ext/1160428284/timer.p1 ${OBJECTDIR}/_ext/1160428284/uart.p1 ${OBJECTDIR}/_ext/1498664333/main.p1

# Source Files
SOURCEFILES=../../source/application/handle_config.c ../../source/application/handle_floor.c ../../source/application/handle_ic_card.c ../../source/application/handle_rs485.c ../../source/application/handle_timer.c ../../source/application/other.c ../../source/application/test.c ../../source/driver/24c02.c ../../source/driver/beep.c ../../source/driver/delay.c ../../source/driver/ds1302.c ../../source/driver/input.c ../../source/driver/interrupt.c ../../source/driver/led.c ../../source/driver/mfrc500.c ../../source/driver/timer.c ../../source/driver/uart.c ../../source/main/main.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/AJ-BLE-IC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F1947
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1881241860/handle_config.p1: ../../source/application/handle_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_config.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_config.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/handle_config.p1  ../../source/application/handle_config.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/handle_config.d ${OBJECTDIR}/_ext/1881241860/handle_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/handle_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1881241860/handle_floor.p1: ../../source/application/handle_floor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_floor.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_floor.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/handle_floor.p1  ../../source/application/handle_floor.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/handle_floor.d ${OBJECTDIR}/_ext/1881241860/handle_floor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/handle_floor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1: ../../source/application/handle_ic_card.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1  ../../source/application/handle_ic_card.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/handle_ic_card.d ${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1881241860/handle_rs485.p1: ../../source/application/handle_rs485.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_rs485.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_rs485.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/handle_rs485.p1  ../../source/application/handle_rs485.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/handle_rs485.d ${OBJECTDIR}/_ext/1881241860/handle_rs485.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/handle_rs485.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1881241860/handle_timer.p1: ../../source/application/handle_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_timer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/handle_timer.p1  ../../source/application/handle_timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/handle_timer.d ${OBJECTDIR}/_ext/1881241860/handle_timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/handle_timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1881241860/other.p1: ../../source/application/other.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/other.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/other.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/other.p1  ../../source/application/other.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/other.d ${OBJECTDIR}/_ext/1881241860/other.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/other.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1881241860/test.p1: ../../source/application/test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/test.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/test.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/test.p1  ../../source/application/test.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/test.d ${OBJECTDIR}/_ext/1881241860/test.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/test.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/24c02.p1: ../../source/driver/24c02.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/24c02.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/24c02.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/24c02.p1  ../../source/driver/24c02.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/24c02.d ${OBJECTDIR}/_ext/1160428284/24c02.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/24c02.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/beep.p1: ../../source/driver/beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/beep.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/beep.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/beep.p1  ../../source/driver/beep.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/beep.d ${OBJECTDIR}/_ext/1160428284/beep.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/beep.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/delay.p1: ../../source/driver/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/delay.p1  ../../source/driver/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/delay.d ${OBJECTDIR}/_ext/1160428284/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/ds1302.p1: ../../source/driver/ds1302.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/ds1302.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/ds1302.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/ds1302.p1  ../../source/driver/ds1302.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/ds1302.d ${OBJECTDIR}/_ext/1160428284/ds1302.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/ds1302.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/input.p1: ../../source/driver/input.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/input.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/input.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/input.p1  ../../source/driver/input.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/input.d ${OBJECTDIR}/_ext/1160428284/input.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/input.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/interrupt.p1: ../../source/driver/interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/interrupt.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/interrupt.p1  ../../source/driver/interrupt.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/interrupt.d ${OBJECTDIR}/_ext/1160428284/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/led.p1: ../../source/driver/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/led.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/led.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/led.p1  ../../source/driver/led.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/led.d ${OBJECTDIR}/_ext/1160428284/led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/mfrc500.p1: ../../source/driver/mfrc500.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/mfrc500.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/mfrc500.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/mfrc500.p1  ../../source/driver/mfrc500.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/mfrc500.d ${OBJECTDIR}/_ext/1160428284/mfrc500.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/mfrc500.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/timer.p1: ../../source/driver/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/timer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/timer.p1  ../../source/driver/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/timer.d ${OBJECTDIR}/_ext/1160428284/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/uart.p1: ../../source/driver/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/uart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/uart.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/uart.p1  ../../source/driver/uart.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/uart.d ${OBJECTDIR}/_ext/1160428284/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1498664333/main.p1: ../../source/main/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1498664333" 
	@${RM} ${OBJECTDIR}/_ext/1498664333/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1498664333/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1498664333/main.p1  ../../source/main/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1498664333/main.d ${OBJECTDIR}/_ext/1498664333/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1498664333/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1881241860/handle_config.p1: ../../source/application/handle_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_config.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_config.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/handle_config.p1  ../../source/application/handle_config.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/handle_config.d ${OBJECTDIR}/_ext/1881241860/handle_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/handle_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1881241860/handle_floor.p1: ../../source/application/handle_floor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_floor.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_floor.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/handle_floor.p1  ../../source/application/handle_floor.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/handle_floor.d ${OBJECTDIR}/_ext/1881241860/handle_floor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/handle_floor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1: ../../source/application/handle_ic_card.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1  ../../source/application/handle_ic_card.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/handle_ic_card.d ${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/handle_ic_card.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1881241860/handle_rs485.p1: ../../source/application/handle_rs485.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_rs485.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_rs485.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/handle_rs485.p1  ../../source/application/handle_rs485.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/handle_rs485.d ${OBJECTDIR}/_ext/1881241860/handle_rs485.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/handle_rs485.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1881241860/handle_timer.p1: ../../source/application/handle_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/handle_timer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/handle_timer.p1  ../../source/application/handle_timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/handle_timer.d ${OBJECTDIR}/_ext/1881241860/handle_timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/handle_timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1881241860/other.p1: ../../source/application/other.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/other.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/other.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/other.p1  ../../source/application/other.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/other.d ${OBJECTDIR}/_ext/1881241860/other.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/other.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1881241860/test.p1: ../../source/application/test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881241860" 
	@${RM} ${OBJECTDIR}/_ext/1881241860/test.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1881241860/test.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1881241860/test.p1  ../../source/application/test.c 
	@-${MV} ${OBJECTDIR}/_ext/1881241860/test.d ${OBJECTDIR}/_ext/1881241860/test.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1881241860/test.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/24c02.p1: ../../source/driver/24c02.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/24c02.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/24c02.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/24c02.p1  ../../source/driver/24c02.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/24c02.d ${OBJECTDIR}/_ext/1160428284/24c02.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/24c02.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/beep.p1: ../../source/driver/beep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/beep.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/beep.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/beep.p1  ../../source/driver/beep.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/beep.d ${OBJECTDIR}/_ext/1160428284/beep.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/beep.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/delay.p1: ../../source/driver/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/delay.p1  ../../source/driver/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/delay.d ${OBJECTDIR}/_ext/1160428284/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/ds1302.p1: ../../source/driver/ds1302.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/ds1302.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/ds1302.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/ds1302.p1  ../../source/driver/ds1302.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/ds1302.d ${OBJECTDIR}/_ext/1160428284/ds1302.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/ds1302.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/input.p1: ../../source/driver/input.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/input.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/input.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/input.p1  ../../source/driver/input.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/input.d ${OBJECTDIR}/_ext/1160428284/input.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/input.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/interrupt.p1: ../../source/driver/interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/interrupt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/interrupt.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/interrupt.p1  ../../source/driver/interrupt.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/interrupt.d ${OBJECTDIR}/_ext/1160428284/interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/led.p1: ../../source/driver/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/led.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/led.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/led.p1  ../../source/driver/led.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/led.d ${OBJECTDIR}/_ext/1160428284/led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/mfrc500.p1: ../../source/driver/mfrc500.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/mfrc500.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/mfrc500.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/mfrc500.p1  ../../source/driver/mfrc500.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/mfrc500.d ${OBJECTDIR}/_ext/1160428284/mfrc500.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/mfrc500.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/timer.p1: ../../source/driver/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/timer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/timer.p1  ../../source/driver/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/timer.d ${OBJECTDIR}/_ext/1160428284/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1160428284/uart.p1: ../../source/driver/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1160428284" 
	@${RM} ${OBJECTDIR}/_ext/1160428284/uart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1160428284/uart.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1160428284/uart.p1  ../../source/driver/uart.c 
	@-${MV} ${OBJECTDIR}/_ext/1160428284/uart.d ${OBJECTDIR}/_ext/1160428284/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1160428284/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1498664333/main.p1: ../../source/main/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1498664333" 
	@${RM} ${OBJECTDIR}/_ext/1498664333/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1498664333/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1498664333/main.p1  ../../source/main/main.c 
	@-${MV} ${OBJECTDIR}/_ext/1498664333/main.d ${OBJECTDIR}/_ext/1498664333/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1498664333/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/AJ-BLE-IC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/AJ-BLE-IC.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD)  -odist/${CND_CONF}/${IMAGE_TYPE}/AJ-BLE-IC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/AJ-BLE-IC.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/AJ-BLE-IC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/AJ-BLE-IC.X.${IMAGE_TYPE}.map  --double=24 --float=24 --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../../source/include" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD)  -odist/${CND_CONF}/${IMAGE_TYPE}/AJ-BLE-IC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

;*******************************************************************************
;* File Name          : learn_constant.s
;* Author             : Lighting_WZ
;* Description        : ARM_ASM_Learn 
;*******************************************************************************

 AREA CODE_SEGMENT, CODE, READONLY
	 
	ENTRY
	
	IMPORT TEST_Function
	EXPORT __main 
		
__main

start 
	MOV R5,#1
	MOV R6,#0x01
	MOV R7,#2_100
	
	;带FPU浮点数写入
	;LDR      R0,=0x20000000
	;VMOV.F32 S0,#3
	;VSTR     S0,[R0,#0x00]
	
	;不带FPU浮点数写入
	LDR R0,=0x20000000
	MOV R1,#0x40000000
	STR R1,[R0,#0x00]
	
	LDR      R0,=TEST_Function
	BX       R0
	
	END

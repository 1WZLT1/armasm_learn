;*******************************************************************************
;* File Name          : learn_constant.s
;* Author             : Lighting_WZ
;* Description        : ARM_ASM_Learn 
;*******************************************************************************
 AREA BLOCK_Data, DATA, READWRITE
src DCD 1,2,3,4,5,6,7,8,1,2,3,4,5,6,7,8
dst DCD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

 AREA BLOCK_Code, CODE, READONLY

num EQU 16

	ENTRY
	EXPORT ARM_Start

ARM_Start 
	LDR R0,=src
	LDR R1,=dst
	MOV R2,#num
	
block_copy
	MOVS R3,R2,LSR #3 ;2
	BEQ  copyword
	PUSH {r4-r11}
	
octcopy
	LDM  R0!,{r4-r7};就是从RO对应地址按照4字节向下读取  R0! 写入数据更改R0地址
	LDM  R0!,{r8-r11}
	
	STM   R1!,{r4-r11}
	SUBS  R3,R3,#1
	BNE   octcopy
	POP   {r4-r11}

copyword 
	MOV R0,#1

	END
		
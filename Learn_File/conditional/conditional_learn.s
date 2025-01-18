;*******************************************************************************
;* File Name          : learn_constant.s
;* Author             : Lighting_WZ
;* Description        : ARM_ASM_Learn 
;*******************************************************************************
 AREA conditional, CODE, READONLY
	 ENTRY 
	 
	 EXPORT __main
__main

start 
	 MOVS R0,#10
	 MOVS R1,#1
	 
	 ADDS R0,R0,R1
	
	END
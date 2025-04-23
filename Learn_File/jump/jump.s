*******************************************************************************
* File Name          : learn_constant.s
* Author             : Lighting_WZ
* Description        : ARM_ASM_Learn 
*******************************************************************************

 AREA LT_compiled_learn, code, READONLY
	 ENTRY 
	 EXPORT compiled_start 
		 
start
compiled_start
	MOV R0,#1
	LDR R1,=compiled_start
	;B.W R1 这样写为什么不行因为B.W是强行跳转 其地址必须是确定的
	B.N compiled_start;自动计算便宜量
	
	END
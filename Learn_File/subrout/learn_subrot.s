;*******************************************************************************
;* File Name          : learn_constant.s
;* Author             : Lighting_WZ
;* Description        : ARM_ASM_Learn 
;*******************************************************************************
 AREA subrot, CODE, READONLY
		ENTRY
		
		EXPORT __main
__main 

start 
		MOV R0,#1
		MOV R1,#2
		BL  lable 
		
stop 
		MOV R0,#0x18
		LDR R1,=0x20026 ;MOV的赋值范围是 0 - 4095 较大的数需要使用LDR
		SVC    #0xAB    ;这部分不一定正确得做rtt的时候注意一下 感觉应该是对的 因为在debug情况下确实不会向下执行了
		

lable 
		ADD R0,R0,R1
		BX  LR

		END

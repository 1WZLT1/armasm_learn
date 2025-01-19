;*******************************************************************************
;* File Name          : learn_constant.s
;* Author             : Lighting_WZ
;* Description        : ARM_ASM_Learn 
;*******************************************************************************
 AREA ADR_Learn, CODE, READONLY
	 
;EQU 等价就是宏定义 
NUM  EQU  lable_1
	 ENTRY 
	 EXPORT __main
__main 

;ADR实际就是把对应标签值整个拿到对应寄存器 并不是PC位移

start
	 
	 ADRL R4,NUM ;ADRL 0 - 0x3e800   ADR  0 - 0x3ff
	 MOV  R0,#0
	 MOV  R1,#1
	 MOV  R2,#2
	 
	 LDR  PC,[R4,R0]
	
lable_1
	 DCD   funciton ;DCD是必须要有的如果没有DCD PC被赋予的地址就是没有被申请的从而进入hardfault  
	
funciton 
	 MOV   R0,#0x18
	 MOV32 R1,#0x20026
	 SVC   #0xAB
	 
	 END
		 
;******************************************ARM_example******************************************;		 
		 
; AREA hop, CODE, READONLY
;	ENTRY
;num EQU 2
;	EXPORT __main
;__main		
;start 
;	MOV R0,#0
;	MOV R1,#3
;	MOV R2,#2
;	BL arithfunc 
;stop 
;	MOV   R0,#0x18
;	MOV32 R1,#0x20026
;	SVC #0xAB
;arithfunc
;	CMP R0,#num
;	
;integer 
;	BXHS LR
;	ADRL R3,JumpTable
;	LSL  R0,#2
;	LDR  PC,[R3,R0]

;JumpTable 
;	DCD DoAdd ;DCD32 
;	
;DoAdd 
;	ADD R0,R1,R2
;	BX  LR
;	
;	END



;*******************************************************************************
;* File Name          : learn_constant.s
;* Author             : Lighting_WZ
;* Description        : ARM_ASM_Learn 
;*******************************************************************************
 AREA direct_write, code, readonly
	 entry 
	 export __main
__main

;MOV指令在 armv6往上的版本都支持16位
;如果需要32位填充就需要使用MOV32位或者使用 循环填充乘方位然后进行逻辑或运算
start 

MOV_Example

	 MOV   R4,#1

	 MOV   R0,#0xFFFF 
	 LSL   R0,#4
	 MOV   R1,#0xF
	 ORR   R0,R1
	 
	 MOV32 R2,#0xFFFFF
	 
	 MOVW  R3,#0xFFFF
	 MOVT  R3,#1
	 
	 LTORG ;这个暂时还没有搞懂 应该是在文件池报错后加在指令后进行文件池创建

MVN_Example 
	 ;MVN  就是做取反 操作是直接操作32位的
	 MVN   R4,#1
	 
	 MOV   R0,#0x18
	 MOV32 R1,#0x20026
	 SVC      #0xAB ;跳转到了SVC handler 
	 
	 
	 end


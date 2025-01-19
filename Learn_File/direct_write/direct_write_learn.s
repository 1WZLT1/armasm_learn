;*******************************************************************************
;* File Name          : learn_constant.s
;* Author             : Lighting_WZ
;* Description        : ARM_ASM_Learn 
;*******************************************************************************
 AREA direct_write, code, readonly
	 entry 
	 export __main
__main

;MOVָ���� armv6���ϵİ汾��֧��16λ
;�����Ҫ32λ������Ҫʹ��MOV32λ����ʹ�� ѭ�����˷�λȻ������߼�������
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
	 
	 LTORG ;�����ʱ��û�и㶮 Ӧ�������ļ��ر�������ָ�������ļ��ش���

MVN_Example 
	 ;MVN  ������ȡ�� ������ֱ�Ӳ���32λ��
	 MVN   R4,#1
	 
	 MOV   R0,#0x18
	 MOV32 R1,#0x20026
	 SVC      #0xAB ;��ת����SVC handler 
	 
	 
	 end


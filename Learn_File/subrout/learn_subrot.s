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
		LDR R1,=0x20026 ;MOV�ĸ�ֵ��Χ�� 0 - 4095 �ϴ������Ҫʹ��LDR
		SVC    #0xAB    ;�ⲿ�ֲ�һ����ȷ����rtt��ʱ��ע��һ�� �о�Ӧ���ǶԵ� ��Ϊ��debug�����ȷʵ��������ִ����
		

lable 
		ADD R0,R0,R1
		BX  LR

		END

#include "stm32f407xx.h"

float varible = 0.0f;

void TEST_Function(void)
{
		varible = *((float *)0x20000000);
}


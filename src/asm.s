@	
@	ARMv6-M Thumb Assembly Test
@	

.arch	armv6		@ ARMv6
.code	32		@ Pico W is 32 bit
.thumb_func		@ ARMv6-M (Thumb)

.EQU	LED_PIN, 	0	@ WL_GPIO0
.EQU	GPIO_OUT, 	1
.EQU	sleep_time, 	1000	@ 1000ms = 1sec

.global main_asm	@ Starting address for linker
main_asm:
MOV R0, #LED_PIN
BL gpio_init
MOV R0, #LED_PIN
MOV R1, #GPIO_OUT
BL link_cyw43_gpio_set_dir
loop:
MOV R0, #LED_PIN
MOV R1, #1
BL link_cyw43_gpio_put
LDR R0, =sleep_time
BL sleep_ms
MOV R0, #LED_PIN
MOV R1, #0
BL link_cyw43_gpio_put
LDR R0, =sleep_time
BL sleep_ms
B loop

.data
	.align 4 @ necessary alignment


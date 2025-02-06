#include "pico/stdio.h"
#include "hardware/gpio.h"

#include "pico/cyw43_arch.h"

extern void main_asm(void); // declare 

void link_cyw43_gpio_set_dir(int pin, int dir) {
	gpio_set_dir(pin, dir);
}

void link_cyw43_gpio_put(int pin, int value) {
	cyw43_arch_gpio_put(pin, value);
	// gpio_put(pin, value);
}

void main() {
	stdio_init_all();
	if(cyw43_arch_init() != 0) return;
	// gpio_init(0);
	
	main_asm();
}

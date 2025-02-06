cmake_minimum_required(VERSION 3.13)

set(PICO_BOARD pico_w)

include(pico_sdk_import.cmake)

project(asm_project C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

include_directories(${CMAKE_SOURCE_DIR})

add_executable(blink_asm
	src/asm.s
	src/entry.c
)

pico_enable_stdio_uart(blink_asm 1)

pico_add_extra_outputs(blink_asm)

target_link_libraries(blink_asm 
	pico_stdlib 
	pico_cyw43_arch_none
)

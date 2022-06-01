cmake_minimum_required(VERSION 3.13)
include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

set(PROJ_NAME "WS2812B")
project(${PROJ_NAME} C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
pico_sdk_init()
add_executable(${PROJ_NAME}
	main.c
	WS2812B.c
	)
target_link_libraries(${PROJ_NAME} pico_stdlib)
pico_enable_stdio_usb(${PROJ_NAME} 1)
pico_enable_stdio_uart(${PROJ_NAME} 0)
pico_add_extra_outputs(${PROJ_NAME})
cmake_minimum_required(VERSION 3.12)
project(PrintCaddy)

set(CMAKE_CXX_STANDARD 17)
add_executable(PrintCaddy main.cpp)
target_link_libraries(PrintCaddy usb-1.0)
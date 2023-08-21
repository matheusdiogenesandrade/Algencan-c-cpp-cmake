cmake_minimum_required(VERSION 3.16)
project(Algencan-CMake)

 

##### Include Dirs 

include_directories(
    SYSTEM
    includes
    "${PROJECT_BINARY_DIR}"
    )

##### Modules folder

set (CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/modules)

##### Algencan setup

find_package (ALGENCAN)
add_library(algencan STATIC IMPORTED)
set_target_properties(algencan PROPERTIES
    IMPORTED_LOCATION "${ALGENCAN_LIB}/libalgencan.a"
    INTERFACE_LINK_LIBRARIES "gfortran;m"
    )

##### Compile options 

add_compile_options(
    -std=c++20
    # ALGENCAN
    -lalgencan 
    -lgfortran 
    -lm 
    )

file(GLOB_RECURSE SOURCES "src/*.cpp")

add_executable(main ${SOURCES})

target_link_libraries(main PRIVATE algencan)


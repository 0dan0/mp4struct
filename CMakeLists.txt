# CMakeLists.txt
cmake_minimum_required (VERSION 3.5.1)
project (mp4struct)

set(CMAKE_SUPPRESS_REGENERATION true)
set(CMAKE_CONFIGURATION_TYPES "Debug;Release")

file(GLOB SOURCES "*.c")

add_executable(mp4struct ${SOURCES})

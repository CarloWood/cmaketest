cmake_minimum_required(VERSION 2.8.9 FATAL_ERROR)
project(SharedLibTest)
if (NOT ${CMAKE_VERSION} VERSION_LESS 3.3.0)
	cmake_policy(SET CMP0063 NEW) # Honor visibility properties for all target types.
	cmake_policy(SET CMP0051 NEW) # List TARGET_OBJECTS in SOURCES target property.
endif()

include(foo.cmake)

add_executable(main main.cxx)
target_link_libraries(main foo)

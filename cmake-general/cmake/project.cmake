project (${PROJECT_NAME_MY})

# Set a default build type if none was specified
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  message("Setting build type to 'RelWithDebInfo' as none was specified.")
  set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "Choose the type of build." FORCE)
  # Set the possible values of build type for cmake-gui
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release"
    "MinSizeRel" "RelWithDebInfo")
endif()

#message("List of compile features: ${CMAKE_CXX_COMPILE_FEATURES}")
include(CheckCXXCompilerFlag)
check_cxx_compiler_flag("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
check_cxx_compiler_flag("-std=c++11" COMPILER_SUPPORTS_CXX11)
check_cxx_compiler_flag("-std=c++17" COMPILER_SUPPORTS_CXX17)

# check results and add flag
if(COMPILER_SUPPORTS_CXX17)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")
    message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has C++17 support.")
elseif(COMPILER_SUPPORTS_CXX11)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
    message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has C++11 support.")
elseif(COMPILER_SUPPORTS_CXX0X)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
    message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has C++0x support.")
else()
    message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has no C++11 support. Please use a different C++ compiler.")
endif()

message(STATUS "PROJECT_NAME=" ${PROJECT_NAME})
message(STATUS "PROJECT_BINARY_DIR=" ${PROJECT_BINARY_DIR})
message(STATUS "PROJECT_SOURCE_DIR=" ${PROJECT_SOURCE_DIR})

message(STATUS "CMAKE_MAJOR_VERSION=" ${CMAKE_MAJOR_VERSION})
message(STATUS "CMAKE_MINOR_VERSION=" ${CMAKE_MINOR_VERSION})
message(STATUS "CMAKE_PATCH_VERSION=" ${CMAKE_PATCH_VERSION})

message(STATUS "CMAKE_SYSTEM=" ${CMAKE_SYSTEM})
message(STATUS "CMAKE_SYSTEM_NAME=" ${CMAKE_SYSTEM_NAME})
message(STATUS "CMAKE_SYSTEM_VERSION=" ${CMAKE_SYSTEM_VERSION})
message(STATUS "CMAKE_SYSTEM_PROCESSOR=" ${CMAKE_SYSTEM_PROCESSOR})

message(STATUS "CMAKE_MODULE_PATH=" ${CMAKE_MODULE_PATH})

# # Global compling flag
# set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DEX2" CACHE STRING "Set C++ Compiler Flags" FORCE)
message(STATUS "CMAKE_C_FLAGS=" ${CMAKE_C_FLAGS})
message(STATUS "CMAKE_CXX_FLAGS=" ${CMAKE_CXX_FLAGS})
message(STATUS "CMAKE_LINKER_FLAGS=" ${CMAKE_LINKER_FLAGS})

add_subdirectory (src)

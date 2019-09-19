# Set the project name
project (staticlib)

add_library(${PROJECT_NAME} hello.cpp)
add_library(sub::lib2 ALIAS ${PROJECT_NAME})

target_include_directories(${PROJECT_NAME}
    INTERFACE
        ${PROJECT_SOURCE_DIR}
)


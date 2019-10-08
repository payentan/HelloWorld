# Set the project name
project (staticlib)

add_library(${PROJECT_NAME} STATIC hello.cpp)

target_include_directories(${PROJECT_NAME}
    INTERFACE
        ${PROJECT_SOURCE_DIR}
)


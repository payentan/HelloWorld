project (sharedlib)

# Add a library with the above sources
add_library(${PROJECT_NAME} SHARED hello.cpp)

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}
)


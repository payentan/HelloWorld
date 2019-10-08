AUX_SOURCE_DIRECTORY(. SRC_LIST)

# Add a library with the above sources
add_library(${PROJECT_NAME} SHARED ${SRC_LIST})

target_include_directories( ${PROJECT_NAME}
    PUBLIC ${PROJECT_SOURCE_DIR}
)


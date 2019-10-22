project(${PROJECT_NAME_MY})

aux_source_directory(. SRC_LIST)

# Create the executable
add_executable(${PROJECT_NAME} ${SRC_LIST})

# Link the static library from subproject1 using it's alias sub::lib1
# Link the header only library from subproject2 using it's alias sub::lib2
# This will cause the include directories for that target to be added to this project
target_link_libraries(${PROJECT_NAME}
    ${TARGET_LINK_LIBRARIES_MY}
)

target_compile_definitions(${PROJECT_NAME}
    PRIVATE EX3
)

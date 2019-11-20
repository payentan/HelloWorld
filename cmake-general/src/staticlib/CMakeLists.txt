# Set the project name
set(PROJECT_NAME_MY "staticlib")
project (${PROJECT_NAME_MY})

# extra C++ compiling flags
set(CMAKE_C_FLAGS_MY "")

# extra C compiling flags
set(CMAKE_CXX_FLAGS_MY "")

# extra linking flags
set(CMAKE_LINKER_FLAGS_MY "")

# exec_program(thrift ${PROJECT_SOURCE_DIR} ARGS "-r --gen cpp tutorial.thrift")

include (staticlib)

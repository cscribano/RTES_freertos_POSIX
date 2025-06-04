# Define the executable for student_app1
add_executable(01_executor_pub main.c)

# Include directories
target_include_directories(01_executor_pub PUBLIC
    ${CMAKE_SOURCE_DIR}/libmicroros/include
    ${CMAKE_SOURCE_DIR}/apps/common  # Include common_utils headers
)

# Link against common dependencies
target_link_libraries(01_executor_pub FreeRTOS microros pthread)

# Optional: Link against shared utilities if needed
target_link_libraries(01_executor_pub common_utils)

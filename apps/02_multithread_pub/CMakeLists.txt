# Define the executable for student_app1
add_executable(02_multithread_pub main.c)

# Include directories
target_include_directories(02_multithread_pub PUBLIC
    ${CMAKE_SOURCE_DIR}/libmicroros/include
    ${CMAKE_SOURCE_DIR}/apps/common  # Include common_utils headers
)

# Link against common dependencies
target_link_libraries(02_multithread_pub FreeRTOS microros pthread)

# Optional: Link against shared utilities if needed
target_link_libraries(02_multithread_pub common_utils)

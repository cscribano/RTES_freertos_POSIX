# Define the executable for student_app1
add_executable(04_pubsub main.c)

# Include directories
target_include_directories(04_pubsub PUBLIC
    ${CMAKE_SOURCE_DIR}/libmicroros/include
    ${CMAKE_SOURCE_DIR}/apps/common  # Include common_utils headers
)

# Link against common dependencies
target_link_libraries(04_pubsub FreeRTOS microros pthread)

# Optional: Link against shared utilities if needed
target_link_libraries(04_pubsub common_utils)

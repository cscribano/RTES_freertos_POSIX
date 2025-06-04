# Define the executable for student_app1
add_executable(07_cartpole main.c)

# Include directories
target_include_directories(07_cartpole PUBLIC
    ${CMAKE_SOURCE_DIR}/libmicroros/include
    ${CMAKE_SOURCE_DIR}/apps/common  # Include common_utils headers
)

# Link against common dependencies
target_link_libraries(07_cartpole FreeRTOS microros pthread)

# Optional: Link against shared utilities if needed
target_link_libraries(07_cartpole common_utils)

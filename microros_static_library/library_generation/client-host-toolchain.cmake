# Set the target system to Linux
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_CROSSCOMPILING 0)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# Specify the compilers explicitly
set(CMAKE_C_COMPILER "gcc" CACHE FILEPATH "C compiler")
set(CMAKE_CXX_COMPILER "g++" CACHE FILEPATH "C++ compiler")

# Mark compilers as working
set(CMAKE_C_COMPILER_WORKS 1 CACHE INTERNAL "")
set(CMAKE_CXX_COMPILER_WORKS 1 CACHE INTERNAL "")

# Initialize C/C++ flags.
# Removed -DCLOCK_MONOTONIC and __attribute__ macro redefinition if not needed on Linux.
set(CMAKE_C_FLAGS_INIT "-std=c11 ${FLAGS}" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS_INIT "-std=c++14 ${FLAGS}" CACHE STRING "" FORCE)

set(FLAGS "-O2 -ffunction-sections -fdata-sections -fno-exceptions -pthread -fPIC -D'RCUTILS_LOG_MIN_SEVERITY=RCUTILS_LOG_MIN_SEVERITY_NONE'" CACHE STRING "" FORCE)

# If you still need to disable RTTI, you can add -fno-rtti back in the C++ flags.
set(CMAKE_CXX_FLAGS_INIT "-std=c++14 ${FLAGS} -fno-rtti" CACHE STRING "" FORCE)

# Add compile definitions if needed.
add_compile_definitions(PLATFORM_NAME_FREERTOS _DEFAULT_SOURCE projCOVERAGE_TEST=0 projENABLE_TRACING=0)

# Include directories remain unchanged, adjust paths if necessary.
include_directories(
    /project
    /project/FreeRTOS-Kernel/include
    /project/FreeRTOS-Kernel/portable/ThirdParty/GCC/Posix
)


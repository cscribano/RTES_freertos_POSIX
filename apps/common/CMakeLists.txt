add_library(common_utils STATIC console.c utils.c)
target_include_directories(common_utils PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
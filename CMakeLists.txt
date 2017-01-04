cmake_minimum_required(VERSION 3.7)
project(cmake-with-gtest)
enable_testing()

add_definitions("-Wall")

add_subdirectory(src)
add_subdirectory(test)

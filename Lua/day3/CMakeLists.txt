cmake_minimum_required (VERSION 3.6)
project (play)
add_executable (play play.cpp)
target_link_libraries (play lua)
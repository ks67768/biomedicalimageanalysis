# This is the root ITK CMakeLists file.
cmake_minimum_required(VERSION 2.8.12)
if(COMMAND CMAKE_POLICY)
  cmake_policy(SET CMP0003 NEW)
endif()


# This project is designed to be built outside the Insight source tree.
project(pj02)

# Find ITK.
find_package(ITK REQUIRED)
include(${ITK_USE_FILE})

add_executable(pj02 pj02.cxx )

target_link_libraries(pj02 ${ITK_LIBRARIES})

cmake_minimum_required(VERSION 2.8.3)
project(crazyflie_tools)

# Enable C++11
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

find_package(Boost REQUIRED COMPONENTS program_options REQUIRED)
add_subdirectory(crazyflie_cpp)

include_directories(
  crazyflie_cpp/include
)

# scan
add_executable(scan
  src/scan.cpp
)
target_link_libraries(scan
  crazyflie_cpp
  ${Boost_LIBRARIES}
)

# listParams
add_executable(listParams
  src/listParams.cpp
)
target_link_libraries(listParams
  crazyflie_cpp
  ${Boost_LIBRARIES}
)

# listLogVariables
add_executable(listLogVariables
  src/listLogVariables.cpp
)
target_link_libraries(listLogVariables
  crazyflie_cpp
  ${Boost_LIBRARIES}
)

# reboot
add_executable(reboot
  src/reboot.cpp
)
target_link_libraries(reboot
  crazyflie_cpp
  ${Boost_LIBRARIES}
)

[![CMake](https://github.com/whoenig/crazyflie_tools/actions/workflows/cmake.yml/badge.svg?branch=dev-crazyflie-link-cpp)](https://github.com/whoenig/crazyflie_tools/actions/workflows/cmake.yml) [![CMake (Windows)](https://github.com/whoenig/crazyflie_tools/actions/workflows/cmake_win.yml/badge.svg?branch=dev-crazyflie-link-cpp)](https://github.com/whoenig/crazyflie_tools/actions/workflows/cmake_win.yml) [![CMake (Mac)](https://github.com/whoenig/crazyflie_tools/actions/workflows/cmake_mac.yml/badge.svg?branch=dev-crazyflie-link-cpp)](https://github.com/whoenig/crazyflie_tools/actions/workflows/cmake_mac.yml)

# Crazyflie_tools

Standalone tools to use with the Crazyflie quadrotor.
This is also used as submodule in crazyflie_ros.

## Prerequisites

### Ubuntu 20.04

```
sudo apt install libboost-program-options-dev libusb-1.0-0-dev
```

## Build

```
git submodule init
git submodule update
cmake -DCMAKE_BUILD_TYPE=Release ..
cd build
cmake ..
make
```

[![Build Status](https://travis-ci.org/whoenig/crazyflie_tools.svg?branch=master)](https://travis-ci.org/whoenig/crazyflie_tools)

# Crazyflie_tools

Standalone tools to use with the Crazyflie quadrotor.
This is also used as submodule in crazyflie_ros.

## Prerequisites

### Ubuntu 16.04, 18.04

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

## Tests

### CRTP-Related Queue Overflow Assert

See https://github.com/USC-ACTLab/crazyswarm/issues/182

```
./listMemories
```

* Observed: Firmware crashes with `SYS: Assert failed at .//src/modules/src/crtp.c:185`
* Expected: No crash
* Current solution idea: on the client, keep track of number of packets in flight per CRTP port. Ensure that this is bounded to avoid that queues overflow.

### Latency

```
$./comCheck 
numPacketsReceived: 98.1 %
Avg. roundtrip time: 7.07136 ms
742.391 packets/s sent
link quality: 0.983667

```

* Latency seems high? I'd expect < 5ms.

### ToDo

* Throughput of broadcasts
* Simultaneous broadcast and 1-to-1 communication

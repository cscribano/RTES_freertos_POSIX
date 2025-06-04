# microROS workspace with FreeRTOS LINUX/POSIX Port

## Introduction
This workspace allows you to compile microROS applications with FREERTOS in a Linux/POSIX environment.

## Included Examples
TBD;

## Install Prerequisite
1. Before you start, you need a working instllation of ROS2 and colcon.
2. Install cmake and compilers to build this repo:
```
$ sudo apt-get install build-essential
```

## Building Examples
Recursively clone the appropriate branck for your ROS2 distribution, this repo include support for `jazzy`, `humble` and `galactic`.
```
$ git clone --recursive -b $ROS_DISTRO https://github.com/cscribano/uros_freertos_posix.git
```

Compile all the sample applications provided:
```
$ cd uros_freertos_posix
$ mkdir build
$ cd build
$ cmake ..
$ make
```

## Running Examples

1. Setup and start microROS agent


```
# Create a workspace and download the micro-ROS tools
$ mkdir microros_ws
$ cd microros_ws
$ git clone -b $ROS_DISTRO https://github.com/micro-ROS/micro_ros_setup.git src/micro_ros_setup

# Update dependencies using rosdep
$ sudo apt update && rosdep update
$ rosdep install --from-paths src --ignore-src -y

# Install pip (if missing)
$ sudo apt-get install python3-pip

# Build micro-ROS tools and source them
$ colcon build
$ source install/local_setup.bash

# Download micro-ROS agent packages
$ ros2 run micro_ros_setup create_agent_ws.sh

# Build step
$ ros2 run micro_ros_setup build_agent.sh
$ source install/local_setup.bash
```

2. Start microROS agent
```
$ cd microros_ws
$ source install/local_setup.bash
$ ros2 run micro_ros_agent micro_ros_agent udp4 --port 8888
```

3. Running microROS example (publisher)
```
$ cd uros_freertos_posix/build
$ ./multithread_publisher
```

4. check published messages
```
$ ros2 topic list
/multithread_publisher_1
/multithread_publisher_2
/parameter_events
/rosout

$ ros2 topic echo multithread_publisher_1
data: 28
---
data: 29
---
data: 30
---
.....
```

## (Extra) Build microROS Static library
TBD;

## References
This package is released for teaching and educational purposes only.
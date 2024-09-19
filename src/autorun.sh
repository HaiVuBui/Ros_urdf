#!/bin/bash

python3 src/test.py

source /opt/ros/humble/setup.bash
ros2 launch urdf_tutorial display.launch.py model:=/ws/src/my_robot.urdf
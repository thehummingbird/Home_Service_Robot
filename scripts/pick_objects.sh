#!/bin/sh
xterm  -e  "cd $(pwd)/../..; source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/robot_home_service/src/turtlebot_simulator/turtlebot_gazebo/worlds/my_world.world" &
sleep 15
xterm  -e  "cd $(pwd)/../..; source devel/setup.bash; roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(pwd)/../../src/myMap.yaml" &
sleep 10
xterm  -e  "cd $(pwd)/../..; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 10
xterm  -e  "cd $(pwd)/../..; source devel/setup.bash; rosrun pick_objects pick_objects" &

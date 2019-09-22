#!/bin/sh
xterm  -e  "cd $(pwd)/../..; source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(pwd)/../../src/turtlebot_simulator/turtlebot_gazebo/worlds/my_world.world" &
sleep 15
xterm  -e  "cd $(pwd)/../..; source devel/setup.bash; roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(pwd)/../../src/myMap.yaml" &
sleep 10
xterm  -e  "cd $(pwd)/../..; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 10
xterm  -e  "cd $(pwd)/../..; source devel/setup.bash; rosrun add_markers add_markers" &

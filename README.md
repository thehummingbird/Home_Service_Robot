# Home Service Robot in ROS

This Project demonstrates Localization, Simultaneous Localizaton and Mapping (SLAM) and Navigation for mobile robots in ROS

Steps:
1. Create a world simulation in Gazebo and launch Turtlebot (Kobuki)
A world is created with some features for the robot to move around and perform tasks
world_file:=(pkg)/my_world.world

<img src="https://github.com/thehummingbird/Home_Service_Robot/blob/master/images/world.JPG">

A Turtlebot is used for interacting with the simulated environment using its odometry and depth camera

2. Create a map of the environment

Out of graph and grid based mapping, A grid based SLAM approach is used to map the environment using gmapping package. This approach uses particles based Adaptive Monte Carlo Localization (AMCL) and Occupancy Grids to map the environment

The map is stored using map_server.

map_file:=(pkg)/myMap.yaml

<img src="https://github.com/thehummingbird/Home_Service_Robot/blob/master/images/map_gmapping.JPG">

3. Perform Navigation Dijkstra based motion planning
A Dijkstra based motion planning approach is used by using move base package in ROS. The package creates local and global cost maps using fake laser data and the map (obtained from SLAM) respectively. Based on these, local and global path planners decide robot's path to reach a defined goal

4. Add markers to show robot's pick and drop functionalities in Gazebo
Markers are added to rviz for visualization purposes.


To launch the project, run home_service.sh in pkg/src/scripts. The environment is Gazebo is set up and the robot is given a command to pick up an object at location (2,4). The robot follows a path planned by move_base package and waits for 5 seconds before following another path to its destination (-2,-1). The object is dropped off at this point in time marking the end of this demonstration.

<img src="https://github.com/thehummingbird/Home_Service_Robot/blob/master/images/navigation.jpg">

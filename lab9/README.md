# Get latest instruction 
```
cd
cd XB100
git pull
```

# Follow the race track using PID Controller 
Make the robot move forward and follow the line of the track. <br>
<img src="racetrack.PNG" width=600>

# Detailed Project Description: 
[PID Controller following race track](https://github.com/chuanqichen/XB100/blob/main/lab9/robot_following_using_PID.md)


## launch simulator 
```
roslaunch texas_robotics_academy racetrack.launch
```

## Code Assignment
* robotcamp_exercises/7_1/src/ex_7_1_1.cpp
* robotcamp_exercises/7_1/src/ex_7_1_2.cpp
* robotcamp_exercises/7_1/src/ex_7_1_3.cpp
```
cd ~/catkin_ws
catkin build
rosrun 7_1 ex_7_1_1
rosrun 7_1 ex_7_1_2
rosrun 7_1 ex_7_1_3
```

## Tutorial 
* ROS Tutorial:
  * https://wiki.ros.org/ROS/Tutorials
* Shakey the Robot: The First Robot to Embody Artificial Intelligence
  * https://www.youtube.com/watch?v=7bsEN8mwUB8
* Grey Walter's tortoises
  * https://www.youtube.com/watch?v=lLULRlmXkKo

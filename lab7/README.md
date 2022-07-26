# Get latest instruction 
```
cd
cd XB100
git pull
```

# Turn and Push
Make the robot move forward.

When the obstacle sensor is triggered, rather than stopping the robot, 
make it go in reverse and to one side (you pick) for a moment. 
Use the usleep function to regulate how long it does this.


## launch simulator 
```
rosrun texas_robotics_academy maze.launch
```

## Code Assignment: robotcamp_exercises/5/src/ex_5.cpp
```
cd ~/catkin_ws
catkin build
rosrun 5_2 ex_5
```

## Tutorial 
* ROS Tutorial:
  * https://wiki.ros.org/ROS/Tutorials
* Shakey the Robot: The First Robot to Embody Artificial Intelligence
  * https://www.youtube.com/watch?v=7bsEN8mwUB8
* Grey Walter's tortoises
  * https://www.youtube.com/watch?v=lLULRlmXkKo

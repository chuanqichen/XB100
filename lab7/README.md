# Get latest instruction 
```
cd
cd XB100
git pull
```

# Maze Mission
 * Make the robot move forward and make turn when detecting obtacle. 
   When the obstacle sensor is triggered, start to make turn by adjust the power speed on the left or right. 
 * Let robot scout the maze and get out 

## launch simulator 
```
roslaunch texas_robotics_academy maze.launch
```

## Code Assignment: robotcamp_exercises/5/src/ex_5.cpp
```
cd ~/catkin_ws
catkin build
rosrun 5 ex_5
```

## How to reset Robot back to start position
Run following command in another terminal, then you can use the "Reset Robot" button on the rightest button of LCD screen. 
```
rosrun texas_robotics_academy reset_robot.py
```
If you run into error like this:
```
$ rosrun texas_robotics_academy reset_robot.py 
/usr/bin/env: ‘python’: No such file or directory
```
Then you can fix the above error by running this command on terminal:
```
sudo apt install python-is-python3
```

## Tutorial 
* ROS Tutorial:
  * https://wiki.ros.org/ROS/Tutorials
* Shakey the Robot: The First Robot to Embody Artificial Intelligence
  * https://www.youtube.com/watch?v=7bsEN8mwUB8
* Grey Walter's tortoises
  * https://www.youtube.com/watch?v=lLULRlmXkKo

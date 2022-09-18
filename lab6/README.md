# Lab5 
```
cd
cd XB100
git pull
```

# Download robotics programming code
```
cd ~/catkin_ws/src/
git clone https://github.com/texas-robocamp/robocamp_exercises.git
cd ..
catkin build
```
catkin build -DPYTHON_EXECUTABLE=/usr/bin/python3


## launch simulator 
open a terminal to run following two commands:
```
roslaunch texas_robotics_academy test_world.launch 
```

## Code using vscode  

## launch simulator 
```
rosrun texas_robotics_academy box.launch
```
open another terminal to run following two commands:
```
rosrun texas_robotics_academy teleop_texbot
```


## Code Assignment:
* Robot functions :  Exercise 4.2.1 and 4.2.2 
* Robot Move : Exercise 4.3.1 to 4.3.9
```
cd ~/catkin_ws
catkin build
rosrun 4_2 ex_4_2_1
```

## How to reset Robot to start position
Run following command in another terminal, then you can use the "Reset Robot" button on the rightest button of LCD screen. 
```
rosrun texas_robotics_academy reset_robot.py
```

## Tutorial 
* ROS Tutorial:
  * https://wiki.ros.org/ROS/Tutorials


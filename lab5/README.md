# Download robotics programming code
```
cd ~/catkin_ws/src/
git clone https://github.com/texas-robocamp/robocamp_exercises.git
cd ..
catkin build -DPYTHON_EXECUTABLE=/usr/bin/python3
```

## launch simulator 
open a terminal to run following two commands:
```
roslaunch texas_robotics_academy test_world.launch 
```

## Code using vscode  

## Helpful ROS commands
Here is a list of ROS commands that you will use often to understand what topics are being used.
* rostopic list - This lists all of the topics that have been used or are in use.
* rostopic echo -This echos the messages that are being sent to the particular topic.
* rostopic hz - This returns the frequency at which the topic is being published to


## Tutorial 
* ROS Tutorial:
  * https://wiki.ros.org/ROS/Tutorials

* CoppeliaSim ROS:
  * https://www.coppeliarobotics.com/helpFiles/en/ros1Tutorial.htm



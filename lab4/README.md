# Install ROS
```
cd
cd XB100
git pull
cd lab4
chmod +x ros.sh
./ros.sh
```
Close and reopen your terminal. ROS will be ready when you re-open the terminal.

## launch simulator 
```
roscore 
```
open another terminal to run following two commands:
```
rosrun texas_robotics_academy teleop_texbot
roslaunch texas_robotics_academy test_world.launch 
```

## Helpful ROS commands
Here is a list of ROS commands that you will use often to understand what topics are being used.
* rostopic list - This lists all of the topics that have been used or are in use.
* rostopic echo -This echos the messages that are being sent to the particular topic.
* rostopic hz - This returns the frequency at which the topic is being published to
* rostopic pub - This allows you to publish to a topic. It’s useful for debugging a subscriber.

## Code your own subscriber odom_subscriber.py and then run
```
python3 odom_subscriber.py
```

## Tutorial 
* ROS Tutorial:
  * https://wiki.ros.org/ROS/Tutorials

* CoppeliaSim ROS:
  * https://www.coppeliarobotics.com/helpFiles/en/ros1Tutorial.htm



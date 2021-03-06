# Install ROS
```
cd
cd XB100
git pull
cd lab4
chmod +x ros.sh
./ros.sh  (if you have problem with ros.sh, you can try ./ros2.sh)
```
Close and reopen your terminal. ROS will be ready when you re-open the terminal.

And run following if you have one failed build in above command: 
```
cd ~/catkin_ws
catkin build 
```
If "catkin build" fails with error like "[build]   Failed:    1 packages failed.", try to open new terminal and then run this: 
```
cd ~/catkin_ws
catkin build -DPYTHON_EXECUTABLE=/usr/bin/python3
```

## Common Error and solutions
catkin build -DPYTHON_EXECUTABLE=/usr/bin/python3
```
..............
Failed     << catkin_tools_prebuild:cmake           [ Exited with code 1 ]                                                                                 
Failed    <<< catkin_tools_prebuild                 [ 0.1 seconds ]                                                                                          Abandoned <<< texas_robotics_academy                [ Unrelated job failed ]                                                                               
[build] Summary: 0 of 2 packages succeeded.                                                                                                                 
[build]   Ignored:   None.                                                                                                                                 
[build]   Warnings:  None.                                                                                                                                 
[build]   Abandoned: 1 packages were abandoned.                                                                                                             
[build]   Failed:    1 packages failed.                                                                                                                     
[build] Runtime: 0.1 seconds total.   
```

## launch simulator 
Open a new terminal to run following command:
```
roslaunch texas_robotics_academy test_world.launch 
```

Then, open another terminal to run following command:
```
rosrun texas_robotics_academy teleop_texbot
```


## Helpful ROS commands
Here is a list of ROS commands that you will use often to understand what topics are being used.
* rostopic list - This lists all of the topics that have been used or are in use.
* rostopic echo -This echos the messages that are being sent to the particular topic.
* rostopic hz - This returns the frequency at which the topic is being published to
* rostopic pub - This allows you to publish to a topic. It???s useful for debugging a subscriber.

## Code your own subscriber odom_subscriber.py and then run
```
python3 odom_subscriber.py
```

## Tutorial 
* ROS Tutorial:
  * https://wiki.ros.org/ROS/Tutorials

* CoppeliaSim ROS:
  * https://www.coppeliarobotics.com/helpFiles/en/ros1Tutorial.htm



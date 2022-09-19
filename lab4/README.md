# Install ROS 
## You can skip this if you load Virtualbox image xbots.ova in Lab1
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


## Helpful ROS commands to understand, pratise and memeroize 
Here is a list of ROS commands that you will use often to understand what topics are being used.
* rostopic list - This lists all of the topics that have been used or are in use.
* rostopic echo -This echos the messages that are being sent to the particular topic.
* rostopic hz - This returns the frequency at which the topic is being published to
* rostopic pub - This allows you to publish to a topic. It’s useful for debugging a subscriber.

## Homework: 
1. Code your own subscriber odom_subscriber.py and then run
  *  subscribe Odometry msg and implement callback to print the pose and twist 
  *  [Odom msg: http://wiki.ros.org/navigation/Tutorials/RobotSetup/Odom](http://wiki.ros.org/navigation/Tutorials/RobotSetup/Odom) 
  ```
   python3 odom_subscriber.py
   odom_subscriber_sol.py is for your reference if getting stuck, don't copy and paste, please code yourself. 
  ```

2. (Optional) Code your own publisher vel_publisher.py to drive the robot and then run
   * You can implemente similar or subset functions of teleop_texbot
   * ROS topics "/cmd_vel" is what need to drive the robot, Twist is the data structure of Msg to publish to this topics. 
   * [Twist Class Reference](http://docs.ros.org/en/diamondback/api/geometry_msgs/html/classgeometry__msgs_1_1msg_1_1__Twist_1_1Twist.html)
   * [Python geometry_msgs.msg.Twist() Examples](https://www.programcreek.com/python/example/70251/geometry_msgs.msg.Twist)
   ```
   python3 vel_publisher.py
   vel_publisher_sol.py as your code reference, this version implements f, b, l, r for forward, backward, left and right turn. 
   ```

## Tutorial 
* ROS Tutorial:
  * https://wiki.ros.org/ROS/Tutorials

* CoppeliaSim ROS:
  * https://www.coppeliarobotics.com/helpFiles/en/ros1Tutorial.htm



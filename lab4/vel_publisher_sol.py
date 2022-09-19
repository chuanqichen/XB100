#!/usr/bin/env python
import rospy
from geometry_msgs. msg import Twist
from nav_msgs. msg import Odometry


rospy.init_node('vel_publisher')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
while not rospy.is_shutdown():
    vel = Twist()
    direction = input('f: forward, b: backward, l: left, r: right > ')
    if 'f' in direction:
        vel.linear.x = 0.5
    if 'b' in direction:
        vel.linear.x = -0.5
    if 'l' in direction:
        vel.angular.z = 1.0
    if 'r' in direction:
        vel.angular.z = -1.0
    if 'q' in direction:
        break
    print(vel)
    pub.publish(vel)

import rospy
from nav_msgs.msg import Odometry

def callback (data):
    # TODO: Print pose info (1 line) Hint: rospy.loginfo() What's inside "data" variable?
    # TODO: Print twist info (1 line)
    pass


def subscriber ():
	rospy.init_node("odom_subscriber" , anonymous=True )
    # TODO: Create a subscriber (1 line). http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28python%29#rospy_tutorials.2FTutorials.2FWritingPublisherSubscriber.Writing_the_Subscriber_Node
	rospy.spin()


if __name__ == '__main__':
    subscriber()

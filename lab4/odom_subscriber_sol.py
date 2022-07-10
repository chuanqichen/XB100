import rospy
from geometry_msgs. msg import Twist
from nav_msgs. msg import Odometry

def callback ( data ):
	rospy.loginfo( rospy.get_caller_id () + " said : % r " , data.pose.pose )
	rospy.loginfo( rospy.get_caller_id () + " said : % r " , data.twist.twist )


def subscriber ():
	rospy.init_node("odom_subscriber" , anonymous = True )
	rospy.Subscriber("odom" , Odometry , callback )
	rospy.spin()

if __name__ == '__main__':
    subscriber()


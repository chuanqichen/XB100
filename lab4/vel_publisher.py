import rospy
from geometry_msgs.msg import Twist


def publisher():
    rospy.init_node("vel_publisher")
    # TODO: Create publisher (1 line). http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28python%29#rospy_tutorials.2FTutorials.2FWritingPublisherSubscriber.Writing_the_Publisher_Node
    while not rospy.is_shutdown():
        direction = input("f: forward, b: backward, l: left, r: right >")
        vel = Twist()  # https://www.programcreek.com/python/example/70251/geometry_msgs.msg.Twist
        if "f" in direction:
            # TODO: Handle going forward by modifying vel (1 line) Hint: vel.linear.? = ?
            pass
        if "b" in direction:
            # TODO: Handle going backward by modifying vel (1 line)
            pass
        if "l" in direction:
            # TODO: Handle turning left by modifying vel (1 line)
            pass
        if "r" in direction:
            # TODO: Handle turning right by modifying vel (1 line)
            pass
        if "q" in direction:
            break
        # TODO: Publish the vel as a message (1 line)

if __name__ == "__main__":
    publisher()

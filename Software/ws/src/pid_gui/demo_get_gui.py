#!/usr/bin/python3

import rospy
from pid_gui.msg import PID_Para

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
    
def listener():
    rospy.init_node('listener', anonymous = True)
    rospy.Subscriber("GUI_PID", PID_Para, callback)
    rospy.spin()
    
if __name__ == '__main__':
    listener()
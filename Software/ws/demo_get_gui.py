#!/usr/bin/env python

import rospy
from std_msgs.msg import Float64

def kp_callback(data):
    rospy.loginfo("Received kp: %f", data.data.kp)

def kd_callback(data):
    rospy.loginfo("Received kd: %f", data.data)

def sKp_callback(data):
    rospy.loginfo("Received sKp: %f", data.data)

def Ki_callback(data):
    rospy.loginfo("Received Ki: %f", data.data)

if __name__ == '__main__':
    rospy.init_node('parameter_subscriber')
    rospy.Subscriber('kp', Float64, kp_callback)
    rospy.Subscriber('kd', Float64, kd_callback)
    rospy.Subscriber('sKp', Float64, sKp_callback)
    rospy.Subscriber('Ki', Float64, Ki_callback)
    rospy.spin()

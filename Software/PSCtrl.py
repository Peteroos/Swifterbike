#!/usr/bin/env python3
import numpy as np
import rospy
import roslib
import subprocess
from geometry_msgs.msg  import Twist
from sensor_msgs.msg import Joy
import sys
import signal
from NeuroLocoMiddleware.SoftRealtimeLoop import SoftRealtimeLoop
import time
from TMotorCANControl.mit_can import TMotorManager_mit_can

Type = 'AK60-6'
ID = 1

def signal_handler(signal, frame): # ctrl + c -> exit program
        print('You pressed Ctrl+C!')
        sys.exit(0)
signal.signal(signal.SIGINT, signal_handler)
''' class '''
class robot():
    def __init__(self):
        rospy.init_node('robot_controller', anonymous=True)
        self.pose_subscriber2 = rospy.Subscriber('/joy',Joy,self.callback)
        self.rate = rospy.Rate(1)
            
    def initmotor(self,dev):
        dev.set_zero_position()
        time.sleep(1.5) # wait for the motor to zero (~1 second)
        dev.set_speed_gains(kd=0.5)

    def updatemotor(self,dev,vel_msg):
        dev.update()
        print(vel_msg)
        dev.velocity = vel_msg



    def callback(self, data):
        global inn
        inn=0
        self.joy = data.buttons
        self.joy2= data.axes
        if np.shape(self.joy)[0]>0:
            inn=1
            self.A=self.joy[0]
            self.B=self.joy[1]
            self.X=self.joy[3]
            self.Y=self.joy[4]
        if np.shape(self.joy2)[0]>0:
            inn=1
            self.linear=self.joy2[1]
            self.angular=self.joy2[0]
        if inn==1:
            if self.joy[0]==0 and self.joy[1]==0 and self.joy[2]==0 and self.joy[3]==0 and self.joy2[0]==0 and self.joy2[1]==0:
                inn=0
            else:
                pass


data=Joy()
vel_msg=Twist()

''' robot position '''
turtle = robot()

#turtle.openmotor()
#turtle.initmotor()

turtle.callback(data) #without this, getting error
global inn
inn=0

''' main '''
if __name__ == '__main__':
 with TMotorManager_mit_can(motor_type=Type, motor_ID=ID) as dev:
     while 1:
         if inn==1:
        #按下A键时速度=行程*最大速度
             if turtle.A==1:
                 vel_msg.linear.x=turtle.linear*22
                 vel_msg.angular.z=turtle.angular*1.2
            #按下B键时速度=行程*最大速度
             elif turtle.B==1:
                 vel_msg.linear.x=turtle.linear*44
                 vel_msg.angular.z=turtle.angular*2
            #按下X键时电机停止
             elif turtle.x==1:
                 vel_msg.linear.x=0
                 vel_msg.angular.z=0
             #turtle.updatemotor(dev,vel_msg.linear.x)   

         else:
             print('no data in')
         
         turtle.initmotor(dev)
         turtle.updatemotor(dev, vel_msg.linear.x)
         turtle.rate.sleep()







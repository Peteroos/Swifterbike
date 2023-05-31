#!/usr/bin/python3

from NeuroLocoMiddleware.SoftRealtimeLoop import SoftRealtimeLoop
from TMotorCANControl.mit_can import TMotorManager_mit_can
import time
import os
import math
import subprocess
import signal
import sys
import rospy
from sensor_msgs.msg   import Imu
from yesense_imu.msg   import YesenseImuSensorData
from geometry_msgs.msg import Twist
from std_msgs.msg import Float64

# CHANGE THESE TO MATCH YOUR DEVICE!
Type = 'AK80-6'
ID   = 1

#Parameters for PID
Vertical_Kp        = 100
Vertical_Kd        = 0.05
Velocity_Kp        = 0
Velocity_Ki        = 0
'''Vertical_Kp        = 40
Vertical_Kd        = 0
Velocity_Kp        = 75
Velocity_Ki        = 1.68'''
#Global Variabes
med_angle          = 1
Integral           = 0
speed_0            = 0
F_output           = 0

def signal_handler(signal, frame): # ctrl + c -> exit program
        print('You pressed Ctrl+C!')
        sys.exit(0)
signal.signal(signal.SIGINT, signal_handler)




#class
class Get_Imu_Data():
    def __init__(self):
        rospy.init_node('PID', anonymous=True)
        rospy.Subscriber('/imu/data', Imu, self.callback_1)
        rospy.Subscriber('/yesense/sensor_data',YesenseImuSensorData ,self.callback_2)
        rospy.Subscriber('kp', Float64, self.kp_callback)
        rospy.Subscriber('kd', Float64, self.kd_callback)
        rospy.Subscriber('sKp', Float64, self.sKp_callback)
        rospy.Subscriber('Ki', Float64, self.Ki_callback)
        self.rate        = rospy.Rate(25)   
        self.angularvelo = 0
        self.pitch       = 0
        self.kp          = 0
        self.kd          = 0
        self.sKp         = 0
        self.Ki          = 0
    #motor side class
    def initmotor(self,dev):
        dev.set_zero_position()
        #dev.set_current_gains()
        time.sleep(1.5) 
        dev.set_speed_gains(kd=0.5)
        print("Staring PID control, be careful with the motor!!")
    def updatemotor(self,dev,vel_msg):
        dev.update()
        print(vel_msg)
        dev.velocity = vel_msg

    #imu side class 
    def callback_1(self,data):
        self.angularvelo = data.angular_velocity.y 

    def callback_2(self,data):   
        self.pitch = data.eulerAngle.pitch

    def kp_callback(self,data):
        self.kp = data.data

    def kd_callback(self,data):
        self.kd = data.data

    def sKp_callback(self,data):
        self.sKp = data.data

    def Ki_callback(self,data):
        self.Ki = data.data


vel_msg = Twist()
imu = Imu()
yese = YesenseImuSensorData()
    
data = Get_Imu_Data()
data.callback_1(imu)
data.callback_2(yese)



if __name__ == '__main__':
    with TMotorManager_mit_can(motor_type=Type, motor_ID=ID,can_num='can0') as dev:
        data.initmotor(dev)
        loop = SoftRealtimeLoop(dt = 0.01, report=True, fade=0)
        for t in loop :
            print('-----------')
            print('angular_velocity_x:',data.angularvelo)
            print('pitch:',data.pitch)
            print('kp:',data.kp)

        #PID 
            error    = data.pitch - med_angle
            print('error:',error)
            #current_speed = dev.get_output_velocity_radians_per_second() 
            #print('current_velocity:',current_speed)
            #print #speed_0: #speed_0)
            #bias     = current_speed - #speed_0
            #speed_0  = current_speed
            #print('bias:',bias)
            #Integral += bias
            #print('Integral:',Integral)
        
            vertical = data.kp * error + data.kd * data.angularvelo  
            print('vertical loop:',vertical)
        
            #Speed    = sKp * bias  + Ki * Integral
            #speed    = Vertical_Kp * Speed
            #print('speed loop:',speed)
        
            output = vertical #- speed
        

            print('output:',output)     
            print('-----------')

            if output > 83:
                output = 82 
            if output < -83:
                output = -82       
 
            data.updatemotor(dev, output)
            data.rate.sleep()

    
            
            


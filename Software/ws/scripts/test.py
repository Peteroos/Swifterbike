#!/usr/bin/env python

import rospy
from std_msgs.msg import Float64
import tkinter as tk
from tkinter import ttk

class ParameterGUI:
    def __init__(self):
        rospy.init_node('parameter_gui')
        self.kp_publisher = rospy.Publisher('kp', Float64, queue_size=10)
        self.kd_publisher = rospy.Publisher('kd', Float64, queue_size=10)
        self.sKp_publisher = rospy.Publisher('sKp', Float64, queue_size=10)
        self.Ki_publisher = rospy.Publisher('Ki', Float64, queue_size=10)
        
        self.root = tk.Tk()
        self.root.title("Parameter GUI")

        self.create_sliders()
         
        self.root.mainloop()
        # ... rest of the code for initializing the GUI
        
        def create_sliders(self):
        # create labels for each parameter
            kp_label = ttk.Label(self.root, text="kp:")
            kd_label = ttk.Label(self.root, text="kd:")
            sKp_label = ttk.Label(self.root, text="sKp:")
            Ki_label = ttk.Label(self.root, text="Ki:")

            # create sliders for each parameter
            kp_slider = ttk.Scale(self.root, from_=0, to=100, orient=tk.HORIZONTAL, command=self.update_kp)
            kd_slider = ttk.Scale(self.root, from_=0, to=1, orient=tk.HORIZONTAL, command=self.update_kd)
            sKp_slider = ttk.Scale(self.root, from_=0, to=10, orient=tk.HORIZONTAL, command=self.update_sKp)
            Ki_slider = ttk.Scale(self.root, from_=0, to=10, orient=tk.HORIZONTAL, command=self.update_Ki)

            # set initial slider values
            kp_slider.set(self.kp)
            kd_slider.set(self.kd)
            sKp_slider.set(self.sKp)
            Ki_slider.set(self.Ki)

            # pack labels and sliders into the GUI
            kp_label.pack()
            kp_slider.pack()
            kd_label.pack()
            kd_slider.pack()
            sKp_label.pack()
            sKp_slider.pack()
            Ki_label.pack()
            Ki_slider.pack()

    def update_kp(self, value):
        self.kp = float(value)
        print(f"kp: {self.kp}")
       #self.publisher.publish(self.kp)

    def update_kd(self, value):
        self.kd = float(value)
        print(f"kd: {self.kd}")
        #self.publisher.publish(self.kd)

    def update_sKp(self, value):
        self.sKp = float(value)
        print(f"sKp: {self.sKp}")
        #self.publisher.publish(self.sKp)

    def update_Ki(self, value):
        self.Ki = float(value)
        print(f"Ki: {self.Ki}")
        #self.publisher.publish(self.Ki)   

    def publish_parameters(self, event):
        kp = self.kp_slider.get()
        kd = self.kd_slider.get()
        sKp = self.sKp_slider.get()
        Ki = self.Ki_slider.get()
        
        self.kp_publisher.publish(Float64(kp))
        self.kd_publisher.publish(Float64(kd))
        self.sKp_publisher.publish(Float64(sKp))
        self.Ki_publisher.publish(Float64(Ki))

if __name__ == '__main__':
    parameter_gui = ParameterGUI()
    rospy.Timer(rospy.Duration(0.1), parameter_gui.publish_parameters)
    rospy.spin()

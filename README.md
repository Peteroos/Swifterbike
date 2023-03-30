# Swifterbike
A fully autonomous self-balancing bike 


![image](https://user-images.githubusercontent.com/97100920/196859645-f2c14f5a-aec7-4d89-97b3-0bc14e391040.png)


## Defintion of Swifter : German Inventor Karl von Drais is credited with developing the first bicycle. 
His machine, known as the "swiftwalker," hit the road in 1817. In this case, "Swifter" means a fast and quick bicycle transportation.
My initial goal for this project was to use bicycle robots in real-world applications, particularly in logistics and delivery




## Hardware Specifications：

`Hardware` : contains all the CAD files
+ CNC + 3D printing for components manufacture

+ T-motor brushless motors using: (https://store.tmotor.com/category.php?id=97)
    + Ak80-6
    + Ak60-6
+ 60KG servo 

+ Main Control Modules: 
    + Nvidia Jetson TX2-NX (https://www.nvidia.com/en-us/autonomous-machines/embedded-systems/jetson-tx2/) 
    


+ Sensors: 
    + Intel RealSense D415 (https://dev.intelrealsense.com/docs/docs-get-started)
    + RPLidar A2 (https://www.slamtec.com/en/Lidar/A2)

## Software Specifications:
`Software` : contains all the code files

+ 电机通讯结构: 本人目前的能力还没有达到去写一套完整的电机通讯的库，所以这里就直接使用了了Github上开源的CubeMars电机通讯库，项目相关的电机控制程序也都是在这个库的基础上写的，连接会放仓库最下面，关于如何使用仓库了也都有非常详细的介绍。因为tx2-nx直接带有CAN口，电机和开发板之间的通讯要加上两个120ohm的电阻，注意是要带CAN收发器的情况下。

+ PID:



## Reference Links:
+ Motor communication repository: https://github.com/neurobionics/TMotorCANControl
    









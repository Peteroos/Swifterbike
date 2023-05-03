# Swifterbike 复刻稚晖君的无人自行车！
A fully autonomous self-balancing bike 

用python复刻稚晖君的无人自行车！


![image](https://user-images.githubusercontent.com/97100920/196859645-f2c14f5a-aec7-4d89-97b3-0bc14e391040.png)


## Defintion of "Swifter" 本人为此项目取的名嘻嘻 : 

German Inventor Karl von Drais is credited with developing the first bicycle. 
His machine, known as the "swiftwalker," hit the road in 1817. 
In this case, "Swifter" means a fast and quick bicycle transportation.
My initial goal for this project was to use bicycle robots in real-world applications, particularly in logistics and delivery




## Hardware Specifications 硬件清单：

`Hardware` : contains all the CAD files
+ CNC + 3D printing for components manufacture 零件cnc加工+3D打印

+ T-motor brushless motors using 老虎电机: (https://store.tmotor.com/category.php?id=97)

    + Ak80-6
    + Ak60-6
+ 60KG servo 60kg舵机

+ Main Control Modules 主控模块: 
    + Nvidia Jetson TX2-NX (https://www.nvidia.com/en-us/autonomous-machines/embedded-systems/jetson-tx2/) 
    

+ Sensors 传感器: 
    + Intel RealSense D415 (https://dev.intelrealsense.com/docs/docs-get-started)
    + RPLidar A2 (https://www.slamtec.com/en/Lidar/A2)
    + Yesense IMU YIS300-V-DK (found on Alibaba) (淘宝上找的)
   

## Software Specifications 软件层面说明:
`Software` : contains all the code files

+ Motor communication framework: I have not yet reached the ability to write a complete motor communication library, so here I directly used an open source CubeMars motor communication library called the `TMotorCANControl`, the project-related motor control program is also written on the basis of this library, and the link for the motor library repository will be placed at the bottom, about how to use the library also has a very detailed introduction there. Since the Nvidia jetson tx2-nx module comes with CAN port, the communication between the motors and the board should be simply just added two 120ohm resistors between, note that my carrier board has CAN transceiver.
  
  电机通讯结构: 本人目前的能力还没有达到去写一套完整的电机通讯的库，所以这里就直接使用了了Github上开源的CubeMars电机通讯库，项目相关的电机控制程序也都是在这个库的基础上写的，连接会放仓库最下面，关于如何使用仓库了也都有非常详细的介绍。因为tx2-nx直接带有CAN口，电机和开发板之间的通讯要加上两个120ohm的电阻，注意是要带CAN收发器的情况下。
   
+ `yesense-ros-v1.3` file description: This package is the ros package for the sensor driver, the specific data are encapsulated in the form of rostopic, no need to use the filter to noise reduction processing of the data. The specific operation is described in detail in the file directory `README.md`.
   `yesense-ros-v1.3` 文件说明： 此包为传感器驱动的的ros包，具体的数据都以rostopic的形式封装好，不需要用滤波对数据进行降噪处理，直接调用就好。具体的操作方式在文件目录下 `README.md`都有详细描述

+ Interacting sensors with motors: In this project, I used ros to communication modules between modules. ROSPY can interact with motor libraries and sensors very efficiently and easily. In the `Software` directory, ws is a catkin workspace created by itself based on the msg type of the IMU, which needs to be `catkin_make` before it works. The main program for PID has to be run in the '/ws' directory, named `PID.py`, and needs to be executed before The main program for PID should be run in the '/ws' directory, and you need to enter `source devel/setup.bash` before executing it, otherwise python will report an import error.
 
  传感去与电机交互：在本项目中，我使用了ros作为模块之间的通讯件，rospy能够非常有效且便捷地与电机库和传感器进行交互。在`Software`的目录下，ws是基于传感器的msg类型自己创建的catkin工作空间，需要`catkin_make`一下。PID的主程序要在 ‘/ws’ 的目录下运行，命为`PID.py`，并且需要在执行之前输入 `source devel/setup.bash`，要不然python会报错import。有关注册msg类型的我参考的一篇CSDN的文章内容非常详细，我会放在仓库的最下面。

+ The basic principle of balancing base on PID: Since that there are actually a lot of documents and resources about this available oneline, I will just simply describle the principle here: Every time the bicycle is tilted in a certain direction(or side, like falling to the left ot right), the inertia wheel rotates to produce a torque opposite to the direction of tilting, so that the bicycle is balanced. Algorithm normally divide into two parts: PD control of the standing loop and PI control of the speed loop. The standing loop is mainly to keep the bike in balance, while the speed loop is added to reduce the speed of the inertia wheel and thus reduce the error. Overall the principle of PID is relatively easy to understand, the most important part is to adjust the parameter for the PID(tuning), which is also the biggest difficulty I encountered in this project.

   PID平衡基本原理：网上其实有非常多的相关资料能去参考，我在这里就大概地说一下，其实就是每次自行车在往某一方向倾倒时，惯性轮通过旋转产生与倾倒方向相反的作用力矩，使自行车保持平衡。PID的引入是为了减小误差。类似的项目正常情况下都将程序分为两个部分：直立环的PD控制和速度环的PI控制。直立环主要就是为了保持车声平衡，速度环的加入是为了减小惯性轮的转速从而减小误差。总体上来说PID的原理比较容易理解，最重要的部分还是去调参，这也是本人在此项目上遇到的最大的难点。

+ PID tuning: This is also the first time I came across this kind of project that requires a lot of time to tune the parameters. In order to adjust the pid parameters in the early stage, I simply wrote a GUI applet to run with the PID program. the GUI applet will publish the modified parameters through ros, and the PID main program will subscribe to it. the logic is actually very simple.
   
   PID调参：这也是本人第一次接触到此类的需要花大量时间调参的项目。为了在前期方便调整pid参数，我简单地写了一个GUI的小程序，搭配着PID程序一起运行。GUI小程序将修改后的参数通过ros发布出去，PID主程序那边订阅，逻辑其实很简单。



## Reference Links 参考链接:
+ Motor Library repository 电机库链接: https://github.com/neurobionics/TMotorCANControl
+ Creatig customize msg type 创建自定义的msg类型链接：https://blog.csdn.net/Yifancoder/article/details/118360588
+ rospy: http://wiki.ros.org/rospy










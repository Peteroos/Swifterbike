# Swifterbike
A fully autonomous self-balancing bike 


![image](https://user-images.githubusercontent.com/97100920/196859645-f2c14f5a-aec7-4d89-97b3-0bc14e391040.png)


Defintion of Swifter : German Inventor Karl von Drais is credited with developing the first bicycle. 
His machine, known as the "swiftwalker," hit the road in 1817. In this case, "Swifter" means a fast and quick bicycle transportation.
My initial goal for this project was to use bicycle robots in real-world applications, particularly in logistics and delivery



`Hardware` : contains all the CAD files

`Software` : contains all the code files



Some main hardware Specifications：
+ CNC + 3D printing for components manufacture

+ T-motor brushless motors (https://store.tmotor.com/category.php?id=97)
+ RMD brushless motors (https://www.aliexpress.com/store/1101572114)
+ 60KG servo 

+ Main Control Modules: 
    + Nvidia Jetson TX2-NX (https://www.nvidia.com/en-us/autonomous-machines/embedded-systems/jetson-tx2/) 
    + Arduino Canbus (https://www.amazon.com/Comidox-MCP2515-Receiver-Controller-Development/dp/B07J9KZ4L4/ref=asc_df_B07J9KZ4L4?tag=bingshoppinga-20&linkCode=df0&hvadid=80676781093377&hvnetw=o&hvqmt=e&hvbmt=be&hvdev=c&hvlocint=&hvlocphy=&hvtargid=pla-4584276308222730&psc=1)


+ Sensors: 
    + Intel RealSense D415 (https://dev.intelrealsense.com/docs/docs-get-started)
    + RPLidar A2 (https://www.slamtec.com/en/Lidar/A2)


Framework for brushless motors communication：
+ mcp2515 CAN module + arduino
+ reference resouces : https://github.com/autowp/arduino-mcp2515

![微信图片_20221022213834](https://user-images.githubusercontent.com/97100920/197369042-e8cc57fd-9f8f-445f-ae66-c9d658a728e4.jpg)







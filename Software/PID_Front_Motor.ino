#include <SPI.h>
#include <mcp2515.h>
#include<ros.h>
#include<sensor_msgs/Imu.h>
#include<geometry_msgs/Vector3.h>
#include<geometry_msgs/Quaternion.h>
#define P_MIN -12.5f
#define P_MAX 12.5f
#define V_MIN -76.0f
#define V_MAX 76.0f
#define KP_MIN 0.0f
#define KP_MAX 500.0f
#define KD_MIN 0.0f
#define KD_MAX 5.0f
#define T_MIN -12.0f
#define T_MAX 12.0f


struct can_frame canMsg;
struct can_frame turnOff;
MCP2515 mcp2515(10);
String command;
float serial_motor_values[5];


ros::NodeHandle nh;
float Pitch,Roll,Yaw;	
float q0,q1,q2,q3;


float Med_Angle=-3;	//Mechanical Median  --You can change it here
float 
	Vertical_Kp=820,//ֱKD and KP for balancing when there is no velocity(standing loop)
	Vertical_Kd=5.5;
float 
	Velocity_Kp=-58, //KP and KI for balancing when there is a velocity(speed loop)
	Velocity_Ki=-0.25;
float Vertical_out,Velocity_out,Turn_out;//ֱOutput variable for standing loop,speed loop, or turning loop
float PWM1;
float Encoder_Motor;	//Encoder data(veloity)
/*********************
ֱStanding loop PD controller: Kp*Ek+Kd*Ek_D

 Input:  Expected angle, Actual Angle(Data we get from imu), Actual angluar velocity
 Output: output for standing loop
*********************/
float Vertical(float Med,float Angle,float gyro_x)
{
	float PWM_out1;
	PWM_out1=Vertical_Kp*(Angle-Med)+Vertical_Kd*(gyro_x);
	return PWM_out1;
}
void messageCb(const sensor_msgs::Imu &imu_data){
	//Serial.print(imu_data.header.frame_id);
	//linear acc
	Serial.print(imu_data.linear_acceleration.x);
	Serial.print(imu_data.linear_acceleration.y);
	Serial.print(imu_data.linear_acceleration.z);
	//angular velocity
	Serial.print(imu_data.angular_velocity.x);
	Serial.print(imu_data.angular_velocity.y);
	Serial.print(imu_data.angular_velocity.z);
	//attitude
	Serial.print(imu_data.orientation.x);
	Serial.print(imu_data.orientation.y);
	Serial.print(imu_data.orientation.z); 
	Serial.print(imu_data.orientation.w);
	q0=imu_data.orientation.x;
	q1=imu_data.orientation.y;
	q2=imu_data.orientation.z;
	q3=imu_data.orientation.w;
	//Calculated pitch, roll and yaw
	pitch = asin(-2 * q1 * q3 + 2 * q0* q2)* 57.3;	// pitch
	roll  = atan2(2 * q2 * q3 + 2 * q0 * q1, -2 * q1 * q1 - 2 * q2* q2 + 1)* 57.3;	// roll
	yaw   = atan2(2*(q1*q2 + q0*q3),q0*q0+q1*q1-q2*q2-q3*q3) * 57.3;	//yaw
	Vertical_out=Vertical(Med_Angle,roll,imu_data.angular_velocity.x);			//ֱstanding loop
    sendToMotor(1, serial_motor_values[0], -serial_motor_values[1], serial_motor_values[2], serial_motor_values[3], serial_motor_values[4]);
	if (mcp2515.readMessage(&canMsg) == MCP2515::ERROR_OK) {
		Encoder_Motor = (canMsg.data[3] << 4) | (canMsg.data[4]>>4);
	}
    Velocity_out=Velocity(Encoder_Motor);	//speed loop
	//Load the final result output to the motor to complete the final control
    PWM1=Vertical_out+Velocity_out;//final output
    serial_motor_values[0] = PWM1;
    sendToMotor(1, serial_motor_values[0], -serial_motor_values[1], serial_motor_values[2], serial_motor_values[3], serial_motor_values[4]);
}
ros::Subscriber<sensor_msgs::Imu> sub("/arduino/imu", &messageCb);


void setup() {

  turnOff.can_id  = 0x001;
  turnOff.can_dlc = 8;
  turnOff.data[0] = 0xFF;
  turnOff.data[1] = 0xFF;
  turnOff.data[2] = 0xFF;
  turnOff.data[3] = 0xFF;
  turnOff.data[4] = 0xFF;
  turnOff.data[5] = 0xFF;
  turnOff.data[6] = 0xFF;
  turnOff.data[7] = 0xFD;

  while (!Serial);
  Serial.begin(115200);

  mcp2515.reset();
  mcp2515.setBitrate(CAN_1000KBPS);
  mcp2515.setNormalMode();

  //mcp2515.sendMessage(&turnOff);
  motorMode(1);
  delay(1000);
  motorZero(1);
  delay(1000);
  nh.initNode(); //for imu
  nh.subscribe(sub);
  Serial.print("normal");
}

float motor_position = 0;


void loop() {
  nh.spinOnce();
  delay(1);
}


void sendToMotor(int mot_id, float pos, float vel, float kp, float kd, float torq){
  struct can_frame cf;
  unsigned int con_pos = float_to_uint(constrain(pos, P_MIN, P_MAX), P_MIN, P_MAX, 16);
  unsigned int con_vel = float_to_uint(constrain(vel, V_MIN, V_MAX), V_MIN, V_MAX, 12);
  unsigned int con_kp = float_to_uint(constrain(kp, KP_MIN, KP_MAX), KP_MIN, KP_MAX, 12);
  unsigned int con_kd = float_to_uint(constrain(kd, KD_MIN, KD_MAX), KD_MIN, KD_MAX, 12);
  unsigned int con_torq = float_to_uint(constrain(torq, T_MIN, T_MAX), T_MIN, T_MAX, 12);
  cf.can_id  = mot_id;
  cf.can_dlc = 8;
  cf.data[0] = con_pos>>8;
  cf.data[1] = con_pos & 0xFF;
  cf.data[2] = con_vel >> 4;
  cf.data[3] = ((con_vel&0xF)<<4) | (con_kp>>8);
  cf.data[4] = con_kp&0xFF;
  cf.data[5] = con_kd>>4;
  cf.data[6] = ((con_kd&0xF)<<4) | (con_torq>>8);
  cf.data[7] = con_torq&0xFF;
  //for(int i = 0; i < 8; i++){
      //Serial.println(cf.data[i], HEX);
  //  }

  Serial.println(mcp2515.sendMessage(&cf), HEX);
}

void motorMode(int mot_id){
  struct can_frame cf;
  cf.can_id  = mot_id;
  cf.can_dlc = 8;
  cf.data[0] = 0xFF;
  cf.data[1] = 0xFF;
  cf.data[2] = 0xFF;
  cf.data[3] = 0xFF;
  cf.data[4] = 0xFF;
  cf.data[5] = 0xFF;
  cf.data[6] = 0xFF;
  cf.data[7] = 0xFC;
  mcp2515.sendMessage(&cf);
  //Serial.println(mcp2515.sendMessage(&cf), HEX);
}

void motorZero(int mot_id){
  struct can_frame cf;
  cf.can_id  = mot_id;
  cf.can_dlc = 8;
  cf.data[0] = 0xFF;
  cf.data[1] = 0xFF;
  cf.data[2] = 0xFF;
  cf.data[3] = 0xFF;
  cf.data[4] = 0xFF;
  cf.data[5] = 0xFF;
  cf.data[6] = 0xFF;
  cf.data[7] = 0xFE;
  mcp2515.sendMessage(&cf);
  //Serial.println(mcp2515.sendMessage(&cf), HEX);
}



//Function by Ben Katz:
//https://os.mbed.com/users/benkatz/code/CanMasterTest//file/d24fd64d1fcb/math_ops.cpp/
int float_to_uint(float x, float x_min, float x_max, int bits){
    // Converts a float to an unsigned int, given range and number of bits
    float span = x_max - x_min;
    float offset = x_min;
    unsigned int pgg = 0;
    if(bits == 12){
      pgg = (unsigned int) ((x-offset)*4095.0/span);
    }else if(bits == 16){
      pgg = (unsigned int) ((x-offset)*65535.0/span);
    }
    return pgg;
}

float uint_to_float(unsigned int x_int, float x_min, float x_max, int bits){
  float span = x_max - x_min;
  float offset = x_min;
  float pgg = 0;
  if(bits == 12){
    pgg = ((float)x_int)*span/4095.0 + offset;
  }else if(bits == 16){
    pgg = ((float)x_int)*span/65535.0 + offset;
  }
  return pgg;
}

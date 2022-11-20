

#include <SPI.h>
#include <mcp_can.h>

#ifdef ARDUINO_SAMD_VARIANT_COPLIANCE
  #define SERIAL SerialUSB
#else
  #define SERIAL Serial
#endif

//Joystick connection pins
#define UP    A1
#define DOWN  A3
#define LEFT  A2
#define RIGHT A5
#define CLICK A4

//Define LED pins
#define LED2 8
#define LED3 7

#define StepValue 130

const int SPI_CS_PIN = 10;

MCP_CAN CAN(SPI_CS_PIN);

void setup() 
{
  SERIAL.begin(115200);
  delay(1000);
  if(CAN.begin(MCP_STDEXT, CAN_1000KBPS, MCP_16MHZ) == CAN_OK) Serial.print("MCP2515 Init Okay!!\r\n");
  else Serial.print("MCP2515 Init Failed!!\r\n");
 

    //Init pins as necessary
    //pinMode(UP.INPUT);
   // pinMode(DOWN.INPUT);
    //pinMode(LED2.OUTPUT);
   // pinMode(LED3.OUTPUT);

    //Pull analog pins high to enable reading of joystick movements
    digitalWrite(UP,HIGH);
    digitalWrite(DOWN,HIGH);

    //Write LED pins low to turn them off by default
    digitalWrite(LED2,LOW);
    digitalWrite(LED3,LOW);
}

long GenPos = 0;

void loop() 
{
    unsigned char len = 0;
    unsigned char buf[8];   

    if (digitalRead(UP)==LOW)
    {
      GenPos = GenPos + StepValue;
      if (GenPos > 35999) {
        GenPos = max(GenPos - 35999, 0);
        }
        if (GenPos < 0){
          GenPos = 0;
         } 
         Serial.println(GenPos);
      //send data:   
         buf[0] = 0xA6;
         buf[1] = 0x00;
         buf[2] = 0x02;
         buf[3] = 0x02;
         buf[4] = GenPos;
         buf[5] = GenPos >> 8;
         buf[6] = 0x00;
         buf[6] = 0x00; 
         CAN.sendMsgBuf(0x141, 0, 8, buf);  
     }
     if (digitalRead(DOWN)==LOW)
     {
       GenPos = GenPos - StepValue;
       if (GenPos >= 36000) {
        GenPos = 35999;
        }
        if (GenPos < 0){
          GenPos = min(GenPos + 35999, 35999);
         } 
         Serial.println(GenPos);
      //send data:   
         buf[0] = 0xA6;
         buf[1] = 0x01;
         buf[2] = 0x02;
         buf[3] = 0x02;
         buf[4] = GenPos;
         buf[5] = GenPos >> 8;
         buf[6] = 0x00;
         buf[6] = 0x00; 
         CAN.sendMsgBuf(0x141, 0, 8, buf);
      }
     
//      if(CAN_MSGAVAIL == CAN0.checkReceive())     //check if data is coming
//      {
//          CAN0.readMsgBuf(&rxId, &len, rxBuf);             //read data, data len, data buf
//
//          //unsigned long canId = CAN0.getCanId();
//
//          SERIAL.println("----------------");
//          SERIAL.print("Get data from ID: 0x");
//         // SERIAL.println(canId, HEX);
//
//          for(int i = 0; i<len; i++)
//          {
//              SERIAL.print(rxBuf[i], HEX);
//              SERIAL.print("\t");
//           }
//           SERIAL.println();
//        
        
        
        
      //  }
}

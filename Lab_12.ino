#include<Servo.h>
Servo myServo;
int angle = 0;
bool increasing = true;
void setup() {
  // put your setup code here, to run once: 
    myServo.attach(10); //GPI05
}

void loop() {
  // put your main code here, to run repeatedly:
    myServo.write(angle);
    delay(20); //Smooth motion
    if(increasing){
      angle+=1;
      if(angle>= 180) increasing = false;
    } else{
       angle-=1;
      if(angle<=0) increasing = true;
     
    }
}

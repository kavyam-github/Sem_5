#include <SoftwareSerial.h>
SoftwareSerial myport(D6,D7);

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  myport.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
    if(Serial.available()>0)
    {
        Serial.println("Hello from server");
        String name_Sender = Serial.readStringUntil('\n');
        String name_Receiver = Serial.readStringUntil('\n'); 
      //int readValue = Serial.parseInt();
      myport.print("From B1");
      myport.println(name_Sender);
      Serial.println(name_Receiver);
      myport.println(name_Receiver);
      Serial.println(name_Sender);
   
    }
    
    if(myport.available()>0)
    {
      String name_Receiver = Serial.readString(); 
      String name_Sender = Serial.readString();
      myport.println(name_Receiver);
      Serial.println(name_Sender);
      myport.println(name_Sender);
      Serial.println(name_Receiver);
    }
    delay(2000);
}

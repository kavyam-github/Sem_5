#include <SoftwareSerial.h>
SoftwareSerial BTSerial(D7, D8); // RX, TX
void setup() {
 Serial.begin(9600); // Serial Monitor
 BTSerial.begin(9600); // Bluetooth Communication

 Serial.println("Bluetooth Module Ready");
}
void loop() {
 // Check if data received from Bluetooth
 if (BTSerial.available()) {
 String received = BTSerial.readString();
 Serial.print("Data Received: ");
 Serial.println(received);

 // Send Response back to Bluetooth

 
 BTSerial.print("Received: ");
 BTSerial.println(received);
 }

 // Check if data entered from Serial Monitor
 if (Serial.available()) {
 String data = Serial.readString();
 BTSerial.println(data);
 }
}
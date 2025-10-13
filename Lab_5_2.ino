//Read value of potentiometer and print in LED(adjust the brightness)
//A0_INPUT 
//pinMode(A0,INPUT)
//int value=0;
//analogRead(A0)
//potentiometer value range 0-1023
//LED value range 0-255

int pin = A0; //Analog pin
int output = 9;//Pin 9 is decleared as output
#define Pin A0
  void setup(){
  pinMode(output,OUTPUT);
  Serial.begin(9600);
} 

void loop() {
  // put your main code here, to run repeatedly:
    int read = analogRead(pin);//Read the value
  	int bright = read/4;
  	delay(500);
    Serial.println(read);
  	analogWrite(output,bright);
}

// IR Sensor digital Read
int irValue = 0;
int irPin = D0;
int pin = D3;
void setup() {
    pinMode(irPin,INPUT); // From sensor to NodeMCU D0 input
    pinMode(D3,OUTPUT);
    Serial.begin(9600);
}

void loop() {
    irValue = digitalRead(irPin);
    if(irValue == 0){
      digitalWrite(D3,LOW);
    }
    else{
      digitalWrite(D3,HIGH);
    }
    delay(1000); 

    Serial.println(irValue);
    
}

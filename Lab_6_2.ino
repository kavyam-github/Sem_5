// IR Sensor digital Read
int irValue = 0;
int irPin = D0;
void setup() {
    pinMode(irPin,INPUT); // From sensor to NodeMCU D0 input
    Serial.begin(9600);
}

void loop() {
    irValue = digitalRead(irPin);
    delay(1000); 
    Serial.println(irValue);
    
}

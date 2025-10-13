int priValue = 0;
int priPin = D0;
void setup() {
    pinMode(priPin,INPUT); // From sensor to NodeMCU D0 input
    Serial.begin(9600);
}

void loop() {
    priValue = digitalRead(priPin);
    delay(1000); 
    Serial.println(priValue);
    
}

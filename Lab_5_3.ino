// Read value of LDR (and print on Serial Monitor)
 int value;
void setup() {
  pinMode(D0,INPUT);
  Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
    value = digitalRead(D0);
    delay(500);
    Serial.begin(value);
}

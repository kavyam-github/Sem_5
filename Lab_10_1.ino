const int relayPin = D4;
void setup() {
  // put your setup code here, to run once:
  pinMode(relayPin, OUTPUT);
  digitalWrite(relayPin, HIGH);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(relayPin, LOW); // Turns the relay ON
  delay(3000);
  digitalWrite(relayPin, HIGH); // Turns the relay OFF
  delay(3000);
}

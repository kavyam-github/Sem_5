void setup() {
  // put your setup code here, to run once:
  pinMode(6,INPUT_PULLUP);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
    int read = digitalRead(6);
    Serial.println(read);
  if(read == 0){
  	digitalWrite(8,HIGH);
  }
  else{
  	digitalWrite(8,LOW);
  }
  
  
}
 
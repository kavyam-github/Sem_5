void setup() {
  // put your setup code here, to run once:
  int a=2;
  Serial.begin(9600);
  if(a%2==0){
    Serial.println("Even");
  }
  else{
    Serial.println("ODD");
  }

}

void loop() {
  // put your main code here, to run repeatedly:

}

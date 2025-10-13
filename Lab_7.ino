#define trigPin D4
#define echoPin D5

long duration;
int  distance;

void setup() {
  // put your setup code here, to run once:
  pinMode(trigPin,OUTPUT);
  pinMode(echoPin,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.begin(9600);
  digitalWrite(trigPin,LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin,HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin,LOW);
  delayMicroseconds(2);

  duration = pulseIn(echoPin, HIGH);
  // distance = speed*time----------ultrasonic sensor measurement = 343m/s
  distance = (0.0343*duration/2);
  Serial.println("Distance : ");
  Serial.println(distance);
  Serial.println("cm");
  Serial.println("");
  delay(1000);
  
}

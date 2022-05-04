byte val;
const int LED1 = 13;
const int LED2 = 12;
const int LED3 = 11;
void setup() {
  pinMode(LED1, OUTPUT); 
  pinMode(LED2, OUTPUT); 
  pinMode(LED3, OUTPUT); 
    Serial.begin(9600); 
}

void loop() {
 
if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
  }
  if (val == 0) { // If 0 received
    digitalWrite(LED1, LOW); 
    digitalWrite(LED2, LOW);
        digitalWrite(LED3,LOW);

  }
  else if (val == 1) { // If 1 received
    digitalWrite(LED1, HIGH); 
    delay(20);
    digitalWrite(LED1, LOW); 
    digitalWrite(LED2, HIGH); 
    delay(20);
    digitalWrite(LED2, LOW); 
     digitalWrite(LED3, HIGH);
    delay(20);
    digitalWrite(LED3, LOW); 
  }
  else if (val == 2) { 
    digitalWrite(LED2, HIGH); 
    digitalWrite(LED1, LOW); 
  }
}

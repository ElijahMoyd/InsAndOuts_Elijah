byte val;  
//int value = 0;  
const int LED1 = 13;
const int LED2 = 7;
const int LED3 = 12;
int xValue = 0 ;
int yValue = 0 ; 
int joystickstate = 0;
void setup() {    
  pinMode(3, OUTPUT);
 pinMode(LED1, OUTPUT);    
  Serial.begin(9600);  
}  
void loop() { 

  xValue = analogRead(A0); 
  yValue = analogRead(A1);  
  delay(20);
  // Serial.println(xValue);
   //Serial.println(yValue);
//Serial.println(joystickstate);
Serial.write(joystickstate);
if (xValue < 10 && yValue > 450 && yValue < 550 ){
  
  joystickstate = 3; 
  } else if 
   (xValue > 1000 && yValue > 450 && yValue < 550){
    joystickstate =1;
    } else if
(yValue > 1000 && xValue > 450 && xValue < 550 ){
  joystickstate = 2;
  } else if 
  (yValue == 0 &&  xValue > 450 && xValue < 550){
    
    joystickstate = 4;
    } else {
      joystickstate = 0;
      }


    
  
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
   
    digitalWrite(LED2, HIGH); 
    
     digitalWrite(LED3, HIGH);
   
  }

    
 // value = analogRead(0);    
  //Serial.print("X:");    
  //Serial.print(value, DEC);
      
 // value = analogRead(1);    
 // Serial.print(" | Y:");    
  //Serial.print(value, DEC);   
   

  
   
 // serial.write (xValue);
   
 // serial.write(yValue);
}

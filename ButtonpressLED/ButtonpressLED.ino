const int LED = 11;
const int LED2 = 10;
const int LED3= 9;
const int LED4 = 6;
const int LED5 = 3;
const int LED6 = 5;
const int buttonPin = 13;

int buttonState = 0; 

void setup() {
  // put your setup code here, to run once:
pinMode(LED,OUTPUT);
pinMode(LED2,OUTPUT);
pinMode(LED3,OUTPUT);
pinMode(LED4,OUTPUT);
pinMode (LED5, OUTPUT);
pinMode (LED6, OUTPUT);
pinMode(buttonPin,INPUT);
}

void loop() {
 
buttonState = digitalRead(buttonPin);
delay(10);//small delay for debouncing to increase accuracy
if(buttonState == HIGH){
    //for (int i = 0 ; i <= 255; i += 5){

  analogWrite(LED, i);
    }
  analogWrite(LED2, 150);
  analogWrite(LED3, 100);
  analogWrite(LED4, 70);
  analogWrite (LED5, 50);
  analogWrite (LED6. 30);
}else  {
   for (int i = 0 ; i >= 100; i += 1){
    analogWrite(LED,i); 

   }
//delay(200); 
 //digitalWrite(LED,LOW); 
analogWrite(LED2,0); 
delay(500); 
 analogWrite(LED2,255); 

analogWrite(LED3,0); 
delay(300); 
 analogWrite(LED3,140); 

analogWrite(LED4,0); 
delay(200); 
 analogWrite(LED4,120); 

analogWrite(LED5,0); 
delay(160); 
 analogWrite(LED5,120); 

 analogWrite(LED6,0); 
delay(120); 
 analogWrite(LED6,120);
}
}

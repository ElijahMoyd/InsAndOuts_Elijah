import processing.serial.*; //imports Serial library from Processing
Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port
int lineeyex = 70; 
int lineeyey = 50; 
float xface =3.25;
float yface =33.25;
 float R = random(255);
float G = random (255);
float B = random (255); 


void setup(){
size(800,800);
background(120,190,111);
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[1]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void keyPressed(){
textSize(70);
text("Smile a litte more", 150, 400); 
fill(0, 408, 612);

}

void draw(){
    if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
stroke(0);
ellipse(50,50,100,100);
stroke(1);
line(lineeyex,lineeyey,lineeyex,32);
line(35,50,35,32);
fill(R,G,B);
arc(50, 55, 60, 60, HALF_PI, PI);

if (val < 170){
text("Smile a litte more", 150, 400); 

}


if (mousePressed){

//spawnface = random(255);

fill(random(0, 255), random(0, 255), random(0, 255));
ellipse(50+xface,50+yface,val,val);
stroke(1);
line(lineeyex,lineeyey,lineeyex,32);
line(35,50,35,32);
arc(50, 55, 60, 60, HALF_PI, PI);
xface=random(mouseX, mouseY);
yface=random(mouseX, mouseY);
}
else{
  background(mouseX,mouseY);
xface=random(mouseX, mouseY);
yface=random(mouseX, mouseY);
 }
 
 if (val < 170){
 textSize(70);
 text("Smile a litte more", 150, 400); 

}
 
 if (val > 220 ){
 textSize(70);
 text("Not that much", 150, 400); 

}
}

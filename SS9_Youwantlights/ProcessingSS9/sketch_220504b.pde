import processing.serial.*;  //import Serial library
String State;
Serial myPort;  // create object from Serial class
int scene=0;
void setup() {
  size(500, 500); 
  background (255);
  fill(0);
  textSize (22);
  textAlign (CENTER, CENTER);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[1]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  //text stuff
  
  if (scene==0) {
   
    question();
  } else if (scene == 2){
  yay();
  }
  else if (scene == 3){
  no();
  }

//mouse location controls communication to Serial 
 // if (mouseY > width/2 && mouseY < height) {  
 //   myPort.write(0); //send a 0
 //   println ("0");
//  } else if (mouseX < width/2 && mouseX > 0) { //if mouse is on left side of screen
 //   myPort.write(1);  //write '1' to Serial port
 //   println("1"); //also print '1' to console
 // } else if (mouseX > width/2 && mouseX < width) {
  //  myPort.write(2);  //write '2' to Serial port
  //  println ("2"); //print to '2' to console
 // } else {  //otherwise
 //   myPort.write(0); //send a 0
 //   println ("0");
//  }
}

void question(){
text ("Am I gonna get a passing grade?", 250, 100 );
  text ("Hit 1 for Yes", width/4, height/3);
  text ("Hit 2 for No", width-width/4, height/3);
}
void yay(){
text ("YAY THANK YOU", width/2, width/2);
 myPort.write(1);  //write '1' to Serial port
 println("1"); //also print '1' to console
myPort.write(2);  //write '2' to Serial port
 println ("2"); //print to '2' to console
}
void no(){
text ("No lights for you! :(", width/2, width/2);



}

void keyPressed() {
  if (key== '0') {
    scene=1;
  }
   else if (key== '1') {
    scene=2;
}
else if (key == '2'){
scene=3;
}
}

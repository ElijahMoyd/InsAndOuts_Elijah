 //2AM Piano by Elijah Moyd
 
 PImage img;
import processing.sound.*; SoundFile file;
 Float rotation = random(360);
float x, y; 
int i;
String State;

 void setup (){
 size(600,600);
 background(255);
 img = loadImage("DsI0TYXXgAAuLsO.jpg");
 State = "begin";
    file = new SoundFile(this, "Adult Swim Bump Piano (FULL SONG).mp3");
 }
 
 void draw(){
 if (State == "begin"){
 menu();
 } else if (State == "Piano"){
  Piano(); 
 }
 
 reset();
 }
 
 void menu (){
   for (int i = 0; i < width; i++) {
    float r = random(255);
    stroke(r);
     strokeWeight(4);
 line(i, 0, 100, 600);
 line(i, 0, 500, 600);
  strokeWeight(8);
  }
/* strokeWeight(4);
 line(100, 0, 100, 600);
 line(500, 0, 500, 600);
  strokeWeight(8);
  */ 
  fill(0);
    rect(300, 0, 20, 300);
    textSize(26);
    text("Click to Continue", 190, 500); 
        textSize(20);
    text("Music Changer by Elijah Moyd", 160, 550); 

  if (mousePressed == true){
  
  State = "Piano";
  }
 }
 
 void Piano(){
  image(img,0,0);
 img.resize(600, 600);
 
textSize(20);
text("Anger of the Earth - Nomak",100,100);
  //tint(mouseX,0,mouseY);
 tint(mouseX, 153, mouseY, 126);  
  if(keyPressed){
    if (key == 'm' || key =='M'){
   file = new SoundFile(this, "Adult Swim Bump Piano (FULL SONG).mp3");
  file.play();
  file.jump(145.5);
    }
 }
  
 if (keyPressed){
   if (key == 'a' || key == 'A')
 filter(DILATE);
 }
 if (keyPressed){
   if (key == 's' || key == 'S')
 filter(ERODE);
 }
 if (keyPressed){
   if (key == 'd' || key == 'D')
 filter(INVERT);
 }
 
 }
  
  void reset() {
if (keyPressed){
   if (key == 'r' || key == 'R')
 
  menu();
}
}
  

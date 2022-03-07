 //2AM Piano by Elijah Moyd
 
 PImage img;
import processing.sound.*; SoundFile file;
 Float rotation = random(360);
float x, y; 
int i;
 void setup (){
 size(600,600);
 img = loadImage("DsI0TYXXgAAuLsO.jpg");
 }
 
 void draw(){
 image(img,0,0);
 img.resize(600, 600);
 
textSize(20);
text("Anger of the Earth - Nomak",100,100);
  //tint(mouseX,0,mouseY);
 tint(mouseX, 153, mouseY, 126);  
  if(mousePressed){
   file = new SoundFile(this, "Adult Swim Bump Piano (FULL SONG).mp3");
  file.play();
  file.jump(145.5);
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

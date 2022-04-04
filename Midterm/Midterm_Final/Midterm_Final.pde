 //Musicical Collage Midterm by Elijah Moyd
 //Credit with Processing Forum Mimum
PImage img;
//import processing.sound.*; SoundFile file;
Float rotation = random(360);
float x, y; 
int i;
String State;
PImage guitars;
PImage drumimg;
PImage sax;
int scene=0;
PImage drummer;
import ddf.minim.*;
static final int FADE = 90;
AudioOutput out;
Minim minim;
AudioPlayer player;
AudioPlayer Arnold;
AudioPlayer drums;
AudioPlayer guitar;
int[] numbers = { 0, 300, 600 };



 void setup (){
 size(600,600);
 minim = new Minim(this);

 background(255);
 drummer = loadImage("drummer.jpg");
 img = loadImage("DsI0TYXXgAAuLsO.jpg");
 guitars = loadImage("Elecguitar.jpg");
 drumimg = loadImage("Drums.jpg");
 State = "begin";
 //file = new SoundFile(this, "Adult Swim Bump Piano (FULL SONG).mp3");
 player = minim.loadFile("Adult Swim Bump Piano (FULL SONG).mp3");
 Arnold = minim.loadFile("Y2Mate.is - Say Yes - Floetry - Alto Saxophone Cover-Zbu6uABqgdc-96k-1649076930812.mp3");
 drums = minim.loadFile("NSYNC - Pop (DRUMS ONLY).mp3");
 guitar = minim.loadFile("Sen no Kiseki II OST - Severe Blow.mp3");
 sax = loadImage("saxophone.jpg");
 }
 
 void draw(){
if (scene==0) {
   
    menu();
  } else if (scene ==1){
  for(int i = 0; i < player.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, player.bufferSize(), 0, width );
 line( x1, 300 + player.left.get(i)*50, 50, 300 + player.left.get(i+1)*50 );  
}
Piano();  
  }else if (scene==2) {
         for(int i = 0; i < guitar.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, guitar.bufferSize(), 0, width );
 line( x1, 300 + guitar.left.get(i)*50, 50, 300 + guitar.left.get(i+1)*50 );  
}
   guitar();
  } else if (scene==3) {
      for(int i = 0; i < Arnold.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, Arnold.bufferSize(), 0, width );
 line( x1, 300 + Arnold.left.get(i)*50, 50, 300 + Arnold.left.get(i+1)*50 );  
}
 saxophone();
    }else if (scene ==4){
      for(int i = 0; i < drums.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, drums.bufferSize(), 0, width );
 line( x1, 300 + drums.left.get(i)*50, 50, 300 + drums.left.get(i+1)*50 );  
}
      drums();
    //expand+=0.2;
  }
  println(scene);
}
 
 void keyPressed() {
  if (key== '1') {
    scene=1;
  } else if (key== '2') {
    player.pause();
    scene=2;
  } else if (key=='3') {
    scene=3;
  }
  else if (key== '4'){
  scene = 4;
  }
}

 
 
 void menu (){
   for (int i = 0; i < width; i++) {
    float r = random(255);
    stroke(random(i));
      

     strokeWeight(4);
 line(random(i), numbers[0], numbers[1], numbers[2]);
 line(random(i),numbers[0], numbers[1], numbers[2]);
  strokeWeight(8);
  }
/* strokeWeight(4);
 line(100, 0, 100, 600);
 line(500, 0, 500, 600);
  strokeWeight(8);
  */ 
  fill(0);
    rect(300, 0, 20, 300);
    pushMatrix();
    textSize(23);
     float angle = radians(375);
    rotate(angle);
    text("Hit a number key from ", 160, 430); 
        text("1 to 4", 250, 490); 

        textSize(20);
    text("Music Changer by Elijah Moyd", 150, 460); 
popMatrix();
  if (mousePressed == true){
  
  State = "Piano";
  }
 }
 
 void Piano(){
   
  image(img,0,0);
 img.resize(600, 600);
 
textSize(20);
//text("Anger of the Earth - Nomak",100,100);
  //tint(mouseX,0,mouseY);
 tint(mouseX, 153, mouseY, 126);  
 if(keyPressed){
    if (key == 'm' || key =='M'){
      player.rewind();
            player.shiftGain(player.getGain(),-5,FADE);

      player.play();
   
    }
}

if(keyPressed){
    if (key == 'p' || key =='P'){
      player.pause();
   
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
 
pushStyle();
fill(0, 408, 612, 204);
text("Piano",50,30);
text("1",70,50);
text("Guitar",150,30);
text("2",170,50);
text("Saxophone",250,30);
text("3",280,50);
text("Drum",370,30);
text("4",390,50);
text("Dilate",50, 80);
text("A",70, 100);
text("Erode",150, 80);
text("S",170, 100);
text("Invert",250, 80);
text("D",270, 100);
text("Play",50, 130);
text("M",60, 150);
text("Pause",150, 130);
text("P",170, 150);

popStyle();
//if(mouseX > 150){
//guitar();

//}

  }
 
  
  void reset() {
if (keyPressed){
   if (key == 'r' || key == 'R')
 
  menu();
}
}

void guitar(){
image(guitars,0,0);
img.resize(600, 900);


pushStyle();
fill(0, 408, 612, 204);
text("Piano",50,30);
text("1",70,50);
text("Guitar",150,30);
text("2",170,50);
text("Saxophone",250,30);
text("3",280,50);
text("Drum",370,30);
text("4",390,50);
text("Dilate",50, 80);
text("A",70, 100);
text("Erode",150, 80);
text("S",170, 100);
text("Invert",250, 80);
text("D",270, 100);
text("Play",50, 130);
text("M",60, 150);
text("Pause",150, 130);
text("P",170, 150);

popStyle();

tint(mouseX, 153, mouseY, 126); 
if(keyPressed){
    if (key == 'm' || key =='M'){
      guitar.rewind();
      guitar.play();
      guitar.shiftGain(player.getGain(),-6,FADE);
    }
}

if(keyPressed){
    if (key == 'p' || key =='P'){
      guitar.pause();
   
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


void drums(){

image(drummer,0,0);
img.resize(600, 600);

pushStyle();
fill(0, 408, 612, 204);
text("Piano",50,30);
text("1",70,50);
text("Guitar",150,30);
text("2",170,50);
text("Saxophone",250,30);
text("3",280,50);
text("Drum",370,30);
text("4",390,50);
text("Dilate",50, 80);
text("A",70, 100);
text("Erode",150, 80);
text("S",170, 100);
text("Invert",250, 80);
text("D",270, 100);
text("Play",50, 130);
text("M",60, 150);
text("Pause",150, 130);
text("P",170, 150);

popStyle();

tint(mouseX, 153, mouseY, 126); 
if(keyPressed){
    if (key == 'm' || key =='M'){
      drums.play();
     drums.shiftGain(player.getGain(),-5,FADE);

    }
}

if(keyPressed){
    if (key == 'p' || key =='P'){
      drums.pause();
   
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


void saxophone(){
image(sax,0,0);
img.resize(600, 600);

pushStyle();
fill(0, 408, 612, 204);
text("Piano",50,30);
text("1",70,50);
text("Guitar",150,30);
text("2",170,50);
text("Saxophone",250,30);
text("3",280,50);
text("Drum",370,30);
text("4",390,50);
text("Dilate",50, 80);
text("A",70, 100);
text("Erode",150, 80);
text("S",170, 100);
text("Invert",250, 80);
text("D",270, 100);
text("Play",50, 130);
text("M",60, 150);
text("Pause",150, 130);
text("P",170, 150);

popStyle();

tint(mouseX, 153, mouseY, 126); 
if(keyPressed){
    if (key == 'm' || key =='M'){
      Arnold.rewind();
      Arnold.shiftGain(player.getGain(),-5,FADE);

      Arnold.play();
   
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

if(keyPressed){
    if (key == 'p' || key =='P'){
      Arnold.pause();
   
    }
}


}

  

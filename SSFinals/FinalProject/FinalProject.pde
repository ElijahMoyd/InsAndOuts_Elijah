//reference help from software_technolgy youtube

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


import processing.serial.*;
AudioOutput out;
Minim minim;
AudioPlayer player;
Serial myPort; 
int value =0;
int[] xaxis = {150,200,250,300};
boolean[] hits = {false, false, false, false}; 
int hitY; 
int beatnum = 40;
PVector[] beat = new PVector [beatnum];
int speed = 3;
int xValue=0;
int yValue=0;
int sensorval;
static final int FADE = 90;


void setup (){
size(500,500);
background(0);
rectMode(CENTER);
hitY = 450;
minim = new Minim(this);
player = minim.loadFile("You_and_Me_(getmp3.pro).mp3");
printArray(Serial.list());
String portName = Serial.list()[1]; 
myPort = new Serial(this, portName, 9600);

for(int i = 0; i < beatnum; i++){
int randomX = floor (random(4));
beat[i] = new PVector (xaxis[randomX],random(-600, -20));
}


}

void draw(){
background(0);
stroke(255);
Analogon();
player.play();
if ( myPort.available() > 0) { // If data is available,
    sensorval = myPort.read(); // read it and store it in val
    
  }
  println(sensorval);
  
  
for(int i = 0 ; i < xaxis.length; i++){
line (xaxis[i], 0, xaxis[i], height);
}
for (int i = 0; i < beat.length; i++){

for (int a = 0; a < hits.length; a++){
if (hits[a] && xaxis[a] == beat[i].x && beat[i].y > hitY - 30 && beat[i].y < hitY + 30){
  
  reset(i);


}
}
}

for (int i =0; i < beat.length; i++){
ellipse(beat[i].x, beat[i].y, 30, 30);
beat[i].y += speed;

}


for (int i = 0; i < hits.length; i++){
rect(xaxis[i], hitY, 40,40); 
if (hits[i]){
fill(#fec22d);
}
else{
 fill(255); 
}
Analogoff();
}




}
void reset (int index){
beat[index].x = xaxis [floor(random(4))];
beat[index].y -= 640;
}


void Analogon(){
if (sensorval == 3 ){
hits[3] = true;
 myPort.write(1);
} 

if (sensorval == 1){
hits[0] = true;
 myPort.write(1);
}

if (sensorval ==2){
hits[1] = true;
 myPort.write(1);
 
}

if (sensorval == 4){
hits[2] = true;
 myPort.write(1);
}
}


void Analogoff(){
if (sensorval == 3 ){
hits[3] = false;
 myPort.write(0);

} 

if (sensorval == 1){
hits[0] = false;
 myPort.write(0);

}

if (sensorval ==2){
hits[1] = false;
 myPort.write(0);
 
}

if (sensorval == 4){
hits[2] = false;
 myPort.write(0);

}
}

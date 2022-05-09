
//reference help from software_technolgy youtube
int[] xaxis = {150,200,250,300};
boolean[] hits = {false, false, false, false}; 
int hitY; 
int beatnum = 20;
PVector[] beat = new PVector [beatnum];
int speed = 3;


void setup (){
size(500,500);
background(0);
rectMode(CENTER);
hitY = 450;

for(int i = 0; i < beatnum; i++){
int randomX = floor (random(4));
beat[i] = new PVector (xaxis[randomX],random(-600, -20));
}


}

void draw(){
background(0);
stroke(255);

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
}




}
void reset (int index){
beat[index].x = xaxis [floor(random(4))];
beat[index].y -= 640;
}
void keyPressed(){
if (key == 'q'){
hits[3] = true;
}

if (key == 'w'){
hits[0] = true;
}

if (key == 'e'){
hits[1] = true;
}

if (key == 'r'){
hits[2] = true;
}

}


void keyReleased (){
if (key == 'q'){
hits[3] = false;
}
if (key == 'w'){
hits[0] = false;
}

if (key == 'e'){
hits[1] = false;
}

if (key == 'r'){
hits[2] = false;
}
}

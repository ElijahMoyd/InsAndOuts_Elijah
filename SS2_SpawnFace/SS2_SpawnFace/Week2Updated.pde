//float spawnface;
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

}

void keyPressed(){
textSize(70);
text("Smile a litte more", 150, 400); 
fill(0, 408, 612);

}

void draw(){
stroke(0);
ellipse(50,50,100,100);
stroke(1);
line(lineeyex,lineeyey,lineeyex,32);
line(35,50,35,32);
fill(R,G,B);
arc(50, 55, 60, 60, HALF_PI, PI);

if (mousePressed){

//spawnface = random(255);

fill(random(0, 255), random(0, 255), random(0, 255));
ellipse(50+xface,50+yface,100,100);
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
}

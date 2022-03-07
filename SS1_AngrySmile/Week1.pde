// run one time only

void setup(){
size (1080,720);

}
//loops infinitely
void draw (){
  background (24);
  ellipseMode(CENTER);
  fill(255,244,67);
  ellipse(400,400,500, 500);
  fill(255);
  ellipse(490,350,170, 170);
  fill(255);
  ellipse(310,350,170, 170);
  fill(0);
  ellipse(290,340,40,40);
 fill(0);
   ellipse(500,340,40,40);
//arc(50, 55, 50, 50, 0, HALF_PI);
fill(0);
arc(390, 450, 300, 300, HALF_PI, PI);
fill(0);
arc(390, 450,300, 300, 0, HALF_PI);

pushStyle(); 
strokeWeight(13); 
line(260, 200, 400, 300);
 
popStyle();

pushStyle(); 
strokeWeight(13); 

line(410, 300, 550, 190);
popStyle();

pushStyle(); 

textAlign(CENTER, TOP);
textSize(64);
fill(123,21,21);
text("Angry Smile", 850, 280);
popStyle();

}

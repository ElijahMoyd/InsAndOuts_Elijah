/// 4 Squares of Light by ELijah Moyd 
int light;
int counter=0;
int value = 0;
float y = 180;

void setup() {
  size(800, 800);
}
void draw() {
for (int i = 0; i > width; i = i+20){
point(i, i);
}
  println (mouseX +"," + mouseY);
  background(#fad7d7);
  stroke(0);
  line(400, 0, 400, 800);
  line(0, 400 , 800, 400);
  noStroke();
  fill(0);

pushStyle();
  fill(#646457);
square(400, 0, 400);


popStyle();


pushStyle();
fill(#b6eb4c);
stroke(12);
triangle(120, 300, 232, 80, 344, 300);
popStyle();

pushStyle();
stroke(12);
fill(#edf7ad);
for (int x = 400; x < 800; x = x+20) { 
  line(x, 0,x, 400);
}
square(562, 226, 50);

popStyle();
stroke(12);

pushStyle();
stroke(12);
fill(#eab957);
rect(490, 180, 191, 50);
popStyle();

pushStyle();
fill(255);
beginShape(TRIANGLES);
vertex(550, 180);
vertex(590, 20);
vertex(620, 180);
endShape();
popStyle();

for (int i = 0; i < 350; i = i+20) {
pushStyle();
strokeWeight(4);  
fill (255);
circle(i, 600, 100);
fill(0);
circle(i, 600, 50);
fill(0);
strokeWeight(4);  

fill (255);
circle(i, 500, 100);
fill(0);
circle(i, 500, 50);
fill(0);
strokeWeight(4);  

fill (255);
circle(i, 700, 100);
fill(0);
circle(i, 700, 50);
fill(0);
strokeWeight(4);  
popStyle();
}
pushStyle();
fill(value);
square(400, 400, 800);

textSize(130);
fill(0, 408, 612);

text("Switch", 420, 600); 
popStyle();
if (mouseX < 120 && mouseY < 300) {
fill(255);
stroke(12);
triangle(120, 300, 232, 80, 344, 300);




if (mouseX <= 580){
  fill(#ffff00);
  square(400, 0, 400);
  
}
}
println(counter);
}
void mouseClicked(){
if (value == 0){
  value = 255; 
}
else {
  value = 0;
  
}
counter++;
}

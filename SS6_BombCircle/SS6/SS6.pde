

int wait = 1000;
int start;
int duration = 5;
int time = 5;
int[] numbers = { 110, 200, 220 };
void setup(){
size (600,600);  
background(50);
time = millis();
}



void draw(){
pushStyle();
fill(#c1c1af);
rect(numbers[0], numbers[1], 380, numbers[2]);
popStyle();


pushStyle();
fill(#c7b66a);
rect(150, 210, 300, 200);
popStyle();
countdown();
 textSize(50);
  text(time, 270, 320);

}

void countdown(){
 
if (time > 0){  
    time = duration - (millis() - start)/1000;
  
  }
 else operation();
}

void operation (){
  background(255);

for (int i = 20; i < width; i = i+40) {
  fill(millis()*((i+1) * width * 10));
 ellipse(i, 20, 30, 30);
  ellipse(i, 59, 30, 30);
   ellipse(i, 108, 30, 30);
    ellipse(i, 150, 30, 30);
     ellipse(i, 200, 30, 30);
    ellipse(i, 250, 30, 30);
    ellipse(i, 300, 30, 30);
    ellipse(i, 350, 30, 30);
    ellipse(i, 400, 30, 30);
    ellipse(i, 450, 30, 30);
    ellipse(i, 500, 30, 30);
    ellipse(i, 550, 30, 30);
}
}

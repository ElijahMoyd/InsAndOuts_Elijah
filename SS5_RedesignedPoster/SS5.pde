//MVC Poster Redesigned by Elijah Moyd


//rain coding helpec by Coding Train
int changecolor = 0;
int s = second();
PImage bg;
PImage crossover;
Drop [] drops = new Drop[100];

void setup(){
  frameRate(60);
  size(800,800);
  colorMode(RGB);
  bg = loadImage("wallpaperflare.com_wallpaper.jpg");
  crossover = loadImage("nvc1.png");
  for (int i = 0; i < drops.length; i++){
  drops[i] = new Drop();
  }
}



void draw(){
 

background(255);
image(bg,0,0);
image(crossover,0,0);
crossover.resize(800, 800);

for (int i = 0; i < drops.length; i++){

drops[i].show();
drops[i].fall();

}
 


}

void mousePressed(){
int bc = 256;
tint(random(bc), random(bc),random(bc));
  
}

void BackColor(){
pushMatrix();
if (mousePressed){
int bc = 256;
 image(bg,0,0);
tint(random(bc), random(bc),random(bc));
popMatrix();

}

 for (int i = 0; i < s; i++){
   int bg = 225;
 tint(random(bg), random(bg),random(bg));
 }
}

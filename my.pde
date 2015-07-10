/* @pjs preload="./data/1.jpg,./data/2.jpg,./data/3.jpg" */

PImage[] img = new PImage[10];
int time, wait = 2000;
void setup() {
  size(800, 800);
  img[0] = loadImage("./data/1.jpg");
  img[1] = loadImage("./data/2.jpg");
  img[2] = loadImage("./data/3.jpg");
  fill(255);
  time = millis();
}

int Image = 0;

void draw() {
 if (millis() - time > wait)
   image(img[Image],1,1);
}

int oldImage;


void mouseClicked() {
  Image++;
  if(Image>2)
   Image = 0;
}

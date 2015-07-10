int x, y, a, b, c, d;
void setup() 
{
  size (500,500);
  background(255);
}
 int count = 0;
void draw()
{
   noStroke();
    fill(255);
    ellipse(x,y,24,24);
    stroke(1);
  if ((key == 'd') && (keyPressed))
  {
    x+= 3;
  }
  else if ((key == 's') && (keyPressed))
  {
    y+= 3;
  }  
  else if ((key == 'a') && (keyPressed))
  {
    x-= 3;
  }
  else if ((key == 'w') && (keyPressed))
  {
    y-= 3;
  }
  if( x < -20){
    x = 520;
  }
  if(x > 520){
    x = -20;
  }
  if( y < -20){
    y = 520;
  }
  if(y > 520){
    y = -20;
  }
   fill(255);
   ellipse(x,y,20,20); 
   count ++;
  if(count == 150){
   c = int(random(500));
   d = int(random(500));
   fill(255,0,0);
   ellipse(c,d,5,5);
   count = 0;
  }
}

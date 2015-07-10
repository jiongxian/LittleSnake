int x, y, a, b, c, d;
int[] fx = new int[1000], fy = new int [1000];
int top = 0;
int e = 0;
int time = 60000;
int s = 0;
void setup() 
{
  size (500,500);
  background(255);
  s = millis(); 
}
 int count = 0;
void draw()
{  

   fill(255);
   rect(350,0,150,100);
   textSize(40);
   fill(0);
   
   
   String timeString = (60 - (millis() - s) / 1000) + "S";
   int p = (60 - (millis() - s) / 1000);
   
   text(e + "\n" + timeString,360,30);
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
  if( p < 0){
    x = 0; y = 0;
  }
  for(int i = 0; i < top; i++){
   if(dist(fx[i],fy[i],x,y)<15){
     int t = fx[i]; 
     fx[i] = fx[top-1];
     fx[top-1] = fx[i];
     t = fy[i];
     fy[i] = fy[top-1];
     fy[top-1] = fy[i];
     top--;
     e++;
   }
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
   fx[top] = c;
   fy[top] = d;
   top++;
  }
   fill(0);

}
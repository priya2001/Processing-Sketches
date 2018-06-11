PImage priya;

Mover []mover = new Mover[20];
void setup()
{
  
  priya=loadImage("priya.gif");
 
  size(600, 500);
  for (int i=0; i<mover.length; i++)
  {
    mover[i] = new Mover(random(100));
  }
}
void draw()
{
  background(0);
  for (int i=0; i<mover.length; i++)
  {
    mover[i].display();
    mover[i].moved();
    mover[i].edge();
  }
}
class Mover
{
  float x, y, D;
  
  Mover(float ptr)
  {
    x = random(width);
    y = random(height);
    D = ptr;
  }
  void display()
  {
    
    image(priya, x, y, D, D);
  }
  void moved()
  {
    y++;
    x+=random(-2,2);
  }
  void edge()
  {
    if (y>height)
    y=0;  
}
}
PImage ila;

Mover []mover = new Mover[50];
void setup()
{
  
  ila=loadImage("ila.gif");
 
  size(600, 500);
  for (int i=0; i<mover.length; i++)
  {
    mover[i] = new Mover(random(50));
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
    
    image(ila, x, y, D, D);
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
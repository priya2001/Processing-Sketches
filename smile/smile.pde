PImage priya;
PImage smile;
Mover []mover = new Mover[1];
void setup()
{
  
  priya=loadImage("priya.gif");
  smile=loadImage("smile.jpg");
  size(490, 408);
  for (int i=0; i<mover.length; i++)
  {
    mover[i] = new Mover(200);
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
  float speedx = random(10);
  float speedy = random(-10);
  Mover(float ptr)
  {
    x = random(width);
    y = random(height);
    D = ptr;
  }
  void display()
  {
    image(smile, 0, 0);
    image(priya, x, y, D, D);
  }
  void moved()
  {
    x += speedx;
    y += speedy;
  }
  void edge()
  {
    if (x>width||x<0)
      speedx = speedx*-1;
    if (y>height||y<0)
      speedy = speedy*-1;
  }
}
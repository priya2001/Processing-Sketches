PImage jaya;
Mover[]mover = new Mover[50];
void setup()
{ background(0);
jaya=loadImage("jaya.gif");
  size(700,600);
  for (int i = 0; i<mover.length; i++)
  {
    mover[i] = new Mover(random(20));
  }
}
void draw()
{image(jaya,50,100);
  for (int i = 0; i<mover.length; i++)
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
    fill(0);
    stroke(255);
    rect(x, y, D, D);
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
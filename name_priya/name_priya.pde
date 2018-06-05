PImage name;
Ball []ball=new Ball[100];
void setup()
{
  name=loadImage("name.gif");
  size(400, 300);
  for (int i=0; i<100; i++)
  {
    ball[i]=new Ball(random(10));
  }
}
void draw()
{
  image(name, 50, 60);
  for (int i=0; i<100; i++)
  {
    ball[i].display();
    ball[i].moved();
    ball[i].check();
  }
}
class Ball
{
  float x, y, D;
  float speedx = random(1);
  float speedy = random(-1);
  Ball(float ptr)
  {
    x=random(width);
    y=random(height);
    D=ptr;
  }
  void display()
  {
    fill(255);
    stroke(0);
    ellipse(x, y, D, D);
  }
  void moved()
  {
    x+=speedx;
    y+=speedy;
  }
  void check()
  {
    if (x>width||x<0)
      speedx=speedx*-1;
    if (y>height||y<0)
      speedy=speedy*-1;
  }
}
Ball []ball = new Ball[100];
void setup()
{
  size(600, 600);
  for (int i=0; i<100; i++)
  {
    ball[i] = new Ball(10);
  }
}
void draw()
{
  background(0);
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
  float speedx =random( 5);
  float speedy = random(-5);
  Ball(float ptr)
  {
    x = random(width);
    y = random(height);
    D = ptr;
  }
  void display()
  {
    fill(255, random(255), random(255));
    ellipse(x, y, D, D);
  }
  void moved()
  {
    x = x+speedx;
    y = y+speedy;
  }
  void check()
  {
    if (x>width||x<0)
      speedx=speedx*-1;
    if (y>height||y<0)
      speedy=speedy*-1;
  }
}
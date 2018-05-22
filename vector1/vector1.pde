Ball []ball = new Ball[100];
void setup()
{
  size(500, 500);
  for (int i=0; i<100; i++)
  {
    ball[i] = new Ball(20);
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
  float D;
  PVector location;
  PVector velocity;
  Ball(float ptr)
  {
    location = new PVector(random(width), random( height));
    velocity = new PVector(random(-2), random(2));
    D=ptr;
  }
  void display()
  {
    fill(random(255), random(255),random( 255));
    stroke(0);
    ellipse(location.x, location.y, D, D);
  }
  void moved()
  {
    location.add(velocity);
  }
  void check()
  {
    if (location.x>width||location.x<0)
      velocity.x = velocity.x*-1;
    if (location.y>height||location.y<0)
      velocity.y = velocity.y*-1;
  }
}
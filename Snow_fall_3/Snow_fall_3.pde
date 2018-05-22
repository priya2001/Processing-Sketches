PImage priya;
Ball []ball = new Ball[500];
void setup()
{
  priya=loadImage("priya.png");
  size(625, 315);
  for (int i=0; i<500; i++)
  {
    ball[i] = new Ball(random(2));
  }
}
void draw()
{
  background(0);
  image(priya, 0, 0);
  for (int i=0; i<500; i++)
  {
    ball[i].display();
    ball[i].moved();
    ball[i].top();
  }
}
class Ball
{
  float x, y, D;
  Ball(float ptr)
  {
    x = random(width);
    y = random(height);
    D = ptr;
  }
  void display()
  {
    stroke(255);
    fill(255);
    ellipse(x, y, D, D);
  }
  void moved()
  {
    y++;
    x += random(-2, 2);
  }
  void top()
  {
    if (y>height)
      y = 0;
  }
}
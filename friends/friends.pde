PImage friend;
Ball []ball = new Ball[500];
void setup()
{friend=loadImage("friend.jpg");
  size(839, 560);
  for (int i=0; i<500; i++)
  {
    ball[i] = new Ball(random(2));
  }
}
void draw()
{
  background(0);
  image(friend,0,0);
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
    y =random( height);
    D = ptr;
  }
  void display()
  {
    fill(255);
    stroke(255);
    ellipse(x, y, D, D);
  }
  void moved()
  {
    y++;
   // x = x+random(-2, 2);
    y=y+random(-2,2);
  }
  void top()
  {
    if (y>height)
      y=0;
  }
}
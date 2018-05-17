Ball []ball = new Ball[1000];
void setup()
{

  size(600, 600);
  for (int i=0; i<1000; i++)
  {
    ball[i]=new Ball(random(5));
  }
}
void draw()
{ 
  background(0);
  for (int i=0; i<1000; i++)

  {
    ball[i].display();
  }
}
class Ball
{
  float x, y, D;
  Ball(float ptr)
  {
    x=random(width);
    y=random(height);
    D=ptr;
  }
  void display()
  {
    fill(random(255),255,255);
    stroke(0);
    ellipse(x, y, D, D);
  }
}
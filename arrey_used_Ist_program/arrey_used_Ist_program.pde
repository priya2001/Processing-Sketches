Ball []ball = new Ball[2000];
void setup()
{
  size(600, 500);
  for (int i=0; i<2000; i++)
  {
    ball[i] = new Ball(random(25));
  }
}
void draw()
{
  background(0);
  for (int i=0; i<2000; i++)
  {
    ball[i].display();
    ball[i].ascend();
    ball[i].top();

  }
}
class Ball
{
  float  x, y, diameter ;
  Ball(float temp)
  {
    x = random(width);
    y = height;
    diameter=temp;
  }
  void display()
  {
    fill(random(255), 255, 255);
    stroke(0);
    ellipse(x, y, diameter, diameter);
  }
  void ascend()
  {
    y--;
    y += random(-20, 20);
    x += random(-20, 20);
  }
  void top()
  {
    if (y<0)
      y =random(500);
  }
}
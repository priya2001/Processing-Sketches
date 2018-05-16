Ball[]ball = new Ball[10];
float total = 10;
void setup()
{
  size(600, 600);
  for (int i=0; i<ball.length; i++)
  {
    ball[i] = new Ball(25);
  }
}
void mouseMoved()
{
  println(total);
  if (total < 10)
  {
    total +=1;
  }
}
void keyPressed()
{
  println(total);
  if (total > 0)
  {
    total -= 1;
  }
}
void draw()
{
  background(255);
  for (int i = 0; i < total; i++)
  {
    ball[i].display();
    ball[i].ascend();
    ball[i].top();
  }
}
class Ball
{
  float x, y, diameter;
  Ball(float ptr)
  {
    x =  random(width);
    y = height;
    diameter = ptr;
  }
  void display()
  {
    fill(150);
    stroke(0);
    ellipse(x, y, diameter, diameter);
  }
  void ascend()
  {
    y--;
    x += random(-1, 1 );
    y += random(-1, 1);
  }
  void top()
  {
    if (y<-500)
      y=500;
  }
}
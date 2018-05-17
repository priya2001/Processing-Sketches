PImage flower;
Ball []ball=new Ball[100];
void setup()
{flower = loadImage("flower.jpg");
  size(600, 600);
  for (int i=0; i<100; i++)
  {
    ball[i]=new Ball(random(50));
  }
}
void draw()
{
  background(0);
 
 
  for (int i=0; i<100; i++)
  {
    ball[i].display();
    ball[i].moved();
    ball[i].top();
  }
}
class Ball
{
  float x, y, D ;
  Ball(float ptr)
  {
    x = random(width);
    y = random(height);
    D = ptr;
  }
  void display()
  {
    image(flower,x, y, D, D);
  }
  void moved()
  {
    y++;
    x += random(-2, 2);
  }
  void top()
  {
    if (y>height)
      y=0;
  }
}
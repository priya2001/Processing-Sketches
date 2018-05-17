PImage flowers;
Ball []ball=new Ball[100];
void setup()
{flowers=loadImage("flowers.jpg");
  size(1000, 500);
  for (int i=0; i<100; i++)
  {
    ball[i]=new Ball(2);
  }
}
void draw()
{background(0);
image(flowers,500,200);
imageMode(CENTER);
  
  for (int i=0; i<100; i++)
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
    x=random(width);
    y=random( height);
    D=ptr;
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
    x+=random(-2, 2);
  }
  void top()
  {
    if (y>height)
      y=0;
  }
}
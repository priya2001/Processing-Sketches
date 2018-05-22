PImage senri;
Ball []ball = new Ball[100];
void setup()
{senri=loadImage("senri.jpg");
  size(720,480);
  for (int i=0; i<100; i++)
  {
    ball[i] = new Ball(random(5));
  }
}
void draw()
{background(0);
  image(senri,0,0);
  
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
    x = random(width);
    y = random(height);
    D = ptr;
  }
  void display()
  {stroke(0,0,0);
    fill(255,0,0);
    
    ellipse(x, y, D, D);
  }
  void moved()
  {
    y++;
    x = x+random(-2, 2);
  }
  void top()
  {
    if (y>height)
      y = 0;
  }
}
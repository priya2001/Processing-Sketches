PImage nature;
Ball  []ball=new Ball[100];
void setup()
{
  nature=loadImage("nature.jpg");
  size(900,716);
  for (int i=0; i<100; i++)
  {
    ball[i] = new Ball(random(5));
  }
}
void draw()
{background(0);
  
  
  image(nature, 0, 0);
  for (int i=0; i<100; i++)
  {
    ball[i].display();
    ball[i].moved();
    ball[i]. top();
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
    x += random(-1, 1);
  }
  void top()
  {
    if (y>height)
      y = 0;
  }
}
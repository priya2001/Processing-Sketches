PImage flower1, flower2, flower3 ;
Ball []ball = new Ball[100] ;
void setup()
{
  flower1 = loadImage("flower1.jpg");
  flower2 = loadImage("flower2.jpg");
  flower3 = loadImage("flower3.jpg");

  size(600, 600);
  for (int i=0; i<100; i++)
  {
    ball[i] = new Ball(random(10));
  }
}
void draw()
{
  background(0);
  image(flower1, 0, 0);
  image(flower1, 350, 0);
  image(flower2, 200, 180);
  image(flower3, 350, 380);
  image(flower3,10, 380);
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

  Ball( float ptr)
  {
    x = random(width);
    y = random(height);
    D = ptr;
  }
  void display()

  { fill(255,255,random(255));
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
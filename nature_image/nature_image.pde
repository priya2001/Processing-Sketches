PImage thought;
Ball  []ball = new Ball[100];
void setup()
{
  thought = loadImage("thought.jpg");
  size(800, 700);
  background(0);
  for (int i=0; i<100; i++)
  {
    ball[i] = new Ball(random(20));
  }
}
void draw()
{
  
  
  image(thought, 125,80);
  
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
  float speedx=random(-5);
  float speedy=random(5);
  Ball(float ptr)
  {
    x = random(width);
    y = random(height);
    D = ptr;
  }
  void display()
  {
    stroke(255);
    fill(0);
 rect(x, y, D, D);
  }
  void moved()
  {
  x += speedx;
  y += speedy;
    
  }
  void top()
  {if(x>width||x<0)
  speedx = speedx*-1;
  if(y>height||y<0)
  speedy = speedy*-1;
  }
}
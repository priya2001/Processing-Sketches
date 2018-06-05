PImage image;
Ball []ball= new Ball[2000];
void setup()
{
  size(713, 481);
  image=loadImage("image.jpeg");
  for (int i=0; i<2000; i++)
  {

    ball[i]=new Ball(random(5));
  }
} 

void draw()
{background(0);
  image(image, 0, 0);
  for (int i=0; i<2000; i++)
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
  {stroke(random(255),random(255),random(255));
   // fill(255,255,random(255));
    ellipse(x, y, D, D);
    
  }
  void moved()
  {
    x++;
    
    y+=random(-2,2);
  }
  void top()
  {
    if (x<0);
    x=random(713);
  }
}
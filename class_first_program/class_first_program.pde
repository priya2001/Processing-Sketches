boolean going=true;
Squre s;
void setup()
{ 
  size(500, 500);
  s = new Squre();
}
void draw()
{
  s.display();
  s.descend();
}
class Squre
{
  float x;
  float y;
  Squre()
  {
    x = width;
    y = height;
  }
  void display()
  {
    fill(255, 0, 0);
    ellipse(x, y, 50, 50);
  }
  void descend()
  {
    if (x>0||y>0)
    { 
      if (going)
      
        y--;
        x--;
      
    }
  }
}
void mousePressed()
{
  going=!going;
}
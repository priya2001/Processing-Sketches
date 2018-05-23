Mover m1, m2;
void setup()
{
  size(500, 500);
  m1=new Mover(100, 100, 50);
  m2=new Mover(200, 200, 50);
  
  
}
void draw()
{background(0);
  
  m1.display();
  m1.moved();
  m1.check();

  m2.display();
  m2.moved();
  m2.check();
  

}
class Mover
{
  float x; 
  float y;
  float D;
  float r;
  float speedx =random( -5);
  float speedy = random(5);
  Mover(float ptr1, float ptr2, float ptr3)
  {
    x = ptr1;
    y = ptr2;
    r = ptr3;
  }
  void display()
  {
    fill(0, 0, 255);
    rect(x, y, r, r);
  }
  void moved()
  {
    x += speedx;
    y += speedy;
  }
  void check()
  {
    if (x>width||x<0)
      speedx = speedx*-1;
    if (y>height||y<0)
      speedy = speedy*-1;

    D=dist(m1.x, m1.y, m2. x, m2. y);
    if (D<r/2+r/2 )
      background(255,0,0);
  }
}
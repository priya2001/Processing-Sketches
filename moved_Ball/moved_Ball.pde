Ball B1, B2, B3, B4, B5, B6, B7, B8, B9, B10,B11 , B12 ;
void setup()
{
  size(500, 500);
  B1 = new Ball(20, 200, 30);
  B2 = new Ball(40, 10, 30);
  B3 = new Ball(60, 200, 30);
  B4 = new Ball(200, 300, 30);
  B5 = new Ball(40, 100, 30);
  B6 = new Ball(16, 10, 30);
  B7 = new Ball(10, 125, 30);
  B8 = new Ball(160, 100, 30);
  B9 = new Ball(10, 15, 30);
  B10 = new Ball(16, 100, 30);
  B11 = new Ball(100, 150, 30);
  B12 = new Ball(120, 150, 30);
}
void draw()
{
  background(0);
  B1.display();
  B1.moved();
  B1.check();

  B2.display();
  B2.moved();
  B2.check();

  B3.display();
  B3.moved();
  B3.check();

  B4.display();
  B4.moved();
  B4.check();

  B5.display();
  B5.moved();
  B5.check();

  B6.display();
  B6.moved();
  B6.check();

  B7.display();
  B7.moved();
  B7.check();

  B8.display();
  B8.moved();
  B8.check();

  B9.display();
  B9.moved();
  B9.check();

  B10.display();
  B10.moved();
  B10.check();
}
class Ball
{
  float x, y, r ;
  float speedx = random(5);
  float speedy = random(-10);
  Ball(float ptr1, float ptr2, float ptr3)
  {
    x = ptr1;
    y = ptr2;
    r = ptr3;
  }
  void display()
  {
    fill(0,0,255);
    stroke(0);
    ellipse(x, y, r, r);
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
  }
}
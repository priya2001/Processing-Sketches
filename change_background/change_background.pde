Particle P1, P2 ;
float R, G, B ;
void setup()
{
  size(500, 500);
  P1 = new Particle(400, 400, 180);
  P2 = new Particle(200, 200, 90);
  R = G = B = 0;
}
void draw()
{ 
  background(R, G, B);
  P1.display();
  P1.check();

  P2.display();
  P2.moved();
}
class Particle
{
  float x, y, r, D ;
  Particle( float ptr1, float ptr2, float ptr3)
  {
    x = ptr1;
    y = ptr2;
    r = ptr3;
  }
  void display()
  {
    stroke(0);
    fill(255, 0, 0);
    ellipse(x, y, r, r);
  }
  void moved()
  {
    x = mouseX;
    y = mouseY;
  }
  void check()
  {
    D = dist(x, y, mouseX, mouseY);

    if (r/2+P2.r/2 > D)
    {
      R=random(255);
      G=random(255);
      B=random(255);
    }
  }
}
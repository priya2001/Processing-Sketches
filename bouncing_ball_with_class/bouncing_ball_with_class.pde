Particle P1, P2 ;
float R, G, B ;
void setup()
{
  size(500, 500);
  P1 = new Particle(400, 400,  100);
  P2 = new Particle(200, 200,  100);
  
  R=G=B+10;
}
void draw()
{
  background(R, G, B);
  P1.display();
  P1.moved();
  P1.check();

  P2.display();
  P2.moved();
  P2.check();

  
}
class Particle
{
  float x, y , r , D ;
  float speedx = 5;
  float speedy = -2.3 ;
  Particle(float ptr1, float ptr2, float ptr3)
  {
    x = ptr1;
    y = ptr2;
   r = ptr3;
  }
  void display()
  {
    fill(0, 0, 255);
    stroke(0);
    strokeWeight(2);
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


    D =dist(P1.x, P1.y, P2.x, P2.y);
    if (P1.r/2+P2.r/2>D)
    {
      R=random(255);
      G=random(255);
      B=random(255);
    }
  }
}
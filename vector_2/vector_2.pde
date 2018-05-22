Ball []ball = new Ball[1000];
void setup()
{
  size(500, 500);
  for (int i=0; i<1000; i++)
  {
    ball[i] = new Ball(random(20));
  }
}
void draw()
{
  background(255,0,255);
  for (int i=0; i<1000; i++)
  {
    ball[i].display();
    ball[i].moved();
    ball[i].check();
  }
}
class Ball
{
  float d;
  PVector loc;
  PVector velo;
  Ball(float ptr)
  {
    loc = new PVector(random(width), random(height));
    velo = new PVector(random(-2), random(2));
    d = ptr;
  }
  void display()
  {strokeWeight(2);
    stroke(255);
    fill(0);
    rect(loc.x, loc.y, d, d);
  }
  void moved()
  {
    loc.add(velo);
  }
  void check()
  {
    if (loc.x>width||loc.x<0)
      velo.x = velo.x*-1;
    if (loc.y>height||loc.y<0)
      velo.y = velo.y*-1;
  }
}
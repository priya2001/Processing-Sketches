Particle P1, P2;
float R,B,G;
void setup()
{
  size(500, 500);
  P1 = new Particle(400, 200, 180);
   R = B = G = 11;
}
void draw()
{ 
  background(R,G,B);

  P1.display();
  P1.check();

  ellipse(mouseX, mouseY, 20, 20);
}
class Particle
{
  float x, y, r ;
  float D;
  Particle(float ptr1, float ptr2, float ptr3)
  {
    x = ptr1;
    y = ptr2;
    r = ptr3;
  }
  void display()
  {
    fill(255, 0, 0);
    stroke(255);
    strokeWeight(3);
    ellipse(x, y, r, r);
  }

  void check()
  {
    D = sqrt((mouseX-x)*(mouseX-x)+(mouseY-y)*(mouseY-y));
    if (D < r/2+10)
    {
    
       R = random(255);
       B = random(255);
      G = random(255);
    }
  }
}
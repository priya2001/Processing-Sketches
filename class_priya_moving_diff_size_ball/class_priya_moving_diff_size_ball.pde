Priya G1, G2, G3, G4, G5 ;
void setup()
{
  size(1000, 500);
  G1 = new Priya(100);
  G2 = new Priya(50);
  G3 = new Priya(25);
  G4 = new Priya(15);
  G5 = new Priya(75);
}
void draw()
{ 
  background(0);

  G1.display();
  G1.moved();
  G1.top();

  G2.display();
  G2.moved();
  G2.top();

  G3.display();
  G3.moved();
  G3.top();

  G4.display();
  G4.moved();
  G4.top();

  G5.display();
  G5.moved();
  G5.top();
}
class Priya
{
  float x;
  float y;
  float diameter;
  float speedx=5;
  float speedy=random(-2, 2);
  Priya(float ptr)
  {
    x=width;
    y=height/2;
    diameter=ptr;
  }
  void display()
  {
    fill(255, 0, 0);
    ellipse(x, y, diameter, diameter);
  }
  void moved()
  {
    x +=random( speedx);
    y +=random( speedy);
  }
  void top()
  {
    if (x>width||x<0)
    { 
      speedx=speedx*-1;
    }
    if (y>height||y<0)
    { 
      speedy=speedy*-1;
    }
  }
}
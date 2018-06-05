Mover []mover = new Mover[500];
PImage time;
void setup()
{
  time = loadImage("time.jpg");
  
  size(600, 500);
  for (int i = 0; i<mover.length; i++)
  {
    mover[i] = new Mover(random(3));
  }
}
void draw()
{background(0);

  image(time, 50, 50);
  for (int i = 0; i < mover.length; i++)
  {
    mover[i].display();
    mover[i].edge();
    mover[i].moved();
  }
}
class Mover
{

  float mass, x, y;
  float speedx=random(2), speedy=random(-2);
  Mover(float ptr)
  {
    x=random(width);
    y=random(height);
    mass = ptr;
  }
  void display()
  {
    fill(255,255,0); 
    stroke(0);
    strokeWeight(0);
    
    ellipse(x, y, mass, mass);
  }
  void edge()
  {
    if (x>width||x<0)
      speedx = speedx*-1;
    if (y>height||y<0)
      speedy = speedy*-1;
  }
  void moved()
  {
    x += speedx;
    y += speedy;
  }
}
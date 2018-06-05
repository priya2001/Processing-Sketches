Mover[] mover= new Mover[10];
void setup()
{
  size(600, 400);
  for (int i=0; i<mover.length; i++)
  {
    mover[i]=new Mover();
  }
}
void draw()
{

  for (Mover m : mover)
  {  
    PVector G=new PVector(0, 0.03);
    m.appledForce(G);
    if (mousePressed)
    {  
      PVector wind=new PVector(0.02, 0);
      m.appledForce(wind);
    }

    background(0);
    for (int i=0; i<mover.length; i++)
    {
      mover[i].display();
      mover[i].update();
      mover[i].moved();
    }
  }
}
class Mover
{
  PVector loc;
  PVector velo;
  PVector acc;
  float mass;
  Mover()
  {
    loc = new PVector(random(width), height/2);
    velo = new PVector(0, 0);
    acc = new PVector(0, 0);
    mass=random(1, 2);
  }
  void display()
  {
    fill(180);
    stroke(0);
    ellipse(loc.x, loc.y, mass*20, mass*20);
  }
  void update()
  {
    loc.add(velo);
    velo.add(acc);
    acc.mult(0);
  }
  void moved()
  {
    if (loc.x>width||loc.x<0)
      velo.x = velo.x*-1;
    if (loc.y>height||loc.y<0)
      velo.y = velo.y*-1;
  }
  void appledForce(PVector force)
  {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }
}
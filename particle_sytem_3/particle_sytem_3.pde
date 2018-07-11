ArrayList<Particle>particle;

void setup()
{
  size(600, 500);
  particle=new ArrayList<Particle>();
}
void draw()
{
  background(0);
  particle.add(new Particle(random(50)));
  for (int i=0; i< particle.size(); i++)
  {
    Particle p= particle.get(i);
    p.display();
    p.update();
    p.dead();

    if (p.dead())
    {
      particle.remove(i);
    }
  }
}
class Particle
{
  PVector loc;
  PVector velo;
  PVector acc;
  float D;
  float span = 255;
  Particle(float ptr)
  {
    D=ptr;
    loc = new PVector(width/2, 10);
    velo = new PVector(random(-1, 1), random(-1, 1));
    acc = new PVector(0, 0.01);
  }
  void display()
  {
    fill(0);
    stroke(255,255,random(255));
  
    rect(loc.x, loc.y,random( D/2), D);
  }
  void update()
  {
    loc.add(velo);
    velo.add(acc);
  }
  boolean dead()
  {
    if (span<=0)
    {
      return true;
    } else 
    {
      return false;
    }
  }
}
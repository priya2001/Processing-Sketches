ArrayList<Particle>particle;
PImage star;
void setup()
{star=loadImage("star.gif");
  size(700, 700);
  particle=new ArrayList<Particle>();
}
void draw()
{
  background(0);
  particle.add(new Particle(random(20)));
  for (int i=0; i<particle.size(); i++)
  {
    Particle p=particle.get(i);
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
  float span=255;
  Particle(float ptr)
  {
    D=ptr;
    loc=new PVector(width/2, height/2);
    velo=new PVector(random(-1, 1), random(-1, 1));
    acc=new PVector(0,0.0001);
  }
  void display()
  {
    
    image(star,loc.x, loc.y, D, D);
   
  }
  void update()
  {
    loc.add(velo);
    velo.add(acc);
    span-=1;
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
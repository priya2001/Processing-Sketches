ArrayList<Particle>particle;
PImage star1;
void setup()
{
 star1=loadImage("star1.gif");
  size(500, 500 );
  particle=new ArrayList<Particle>();
}
void draw()
{ 
 background(0);

  particle.add(new Particle( random(20)));
  for (int i=0; i<particle.size(); i++)
  {
    Particle p=particle.get(i);
    p.display();
    p.update();
    p.dead();
    p.edge();
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
  float span=255;
  float D;
  Particle(float ptr)
  {D=ptr;
    loc=new PVector(width/2,10);
    velo= new PVector(random(-1, 1), random(-1, 1));
    acc=new PVector(0, 0.05);
  }
  void display()
  {
   image(star1,loc.x,loc.y,D,D);
    
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
  void edge()
  {
   if (loc.x>width||loc.x<0)
      velo.x = velo.x*-1;
    if (loc.y>height||loc.y<0)
      velo.y = velo.y*-1;
  }
}
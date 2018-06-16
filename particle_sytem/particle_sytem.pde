Particle []particle=new Particle[1];
void setup()
{
  background(0);
  size(600,500 );
  for (int i=0; i<particle.length; i++)
  {
    particle[i]=new Particle(new PVector(width,height));
  }
}
void draw()
{

  for (int i=0; i<particle.length; i++)
  {
    particle[i].display();
    particle[i].update();
    particle[i].dead();
    particle[i].edge();
  }
}
class Particle
{
  PVector loc;
  PVector velo;
  PVector acc;
  float span=255;
  Particle(PVector l)
  {
    loc=new PVector(random(width), random(height));
    velo= new PVector(random(-1, 1), random(-1, 1));
    acc=new PVector(0, 0.05);
  }
  void display()
  {
    stroke(random(255),random(255),random(255));
    fill(0);
    strokeWeight(1);
    ellipse(loc.x, loc.y, random( 10), random( 200));
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
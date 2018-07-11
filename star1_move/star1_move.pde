ArrayList<Particle>particle;
PImage star;
void setup()
{star=loadImage("star.gif");
  size(500, 500);
  particle =new ArrayList<Particle>();
  for (int i=0; i<20; i++)
  {
    particle.add(new Particle(random(50)));
  }
}
void draw()
{

  background(0);
  for (Particle p : particle)
  {
    p.display();
    p.update();
    p.edge();
  }
}
class Particle
{
  PVector loc;
  PVector velo;
  PVector acc;
  float l ;
  Particle(float ptr)
  {
    l = ptr;
    loc = new PVector(random(width), random( height));
    velo = new PVector(0, 0);
    acc = new PVector(0, 0.01);
  }
  void display()
  {
    stroke(200);

    line(loc.x, loc.y, loc.x, l);
    
   image(star,loc.x, loc.y, l, l);
  }
  void update()
  {
    loc.add(velo);
    velo.add(acc);
  }
  void edge()
  {
    if (loc.x>width||loc.x<0)
      velo.x = velo.x*-1;
    if (loc.y>height||loc.y<0)
      velo.y = velo.y*-1;
  }
}
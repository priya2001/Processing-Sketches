Mover []mover = new Mover[10000];
PImage image;
void setup()
{image=loadImage("image.jpg");
  size(500, 500);
  for (int i = 0; i<mover.length; i++)
  {
    mover[i] = new Mover(random(10));
  }
}
void draw()
{
 background(0); 
 image(image,0,0);
  for (Mover m : mover)
  { 
    PVector G=new PVector(0,3);
    m.appledForce(G);
    PVector friction =m.velo.get();
    friction.normalize();
    float c = -1;
    friction.mult(c);
    m.appledForce(friction);
  }
  for (int i=0; i<mover.length; i++)
  {
    mover[i].display();
    mover[i].edge();
    mover[i].update();
  }
}
class Mover
{
  PVector loc;
  PVector velo;
  PVector acc;
  float D;
  Mover(float ptr)
   { loc = new PVector(random(width),random(height));
    velo = new PVector(0, 0);
    acc = new PVector(0, 0);
    D = ptr;
  }
  void display()
  {
    fill(255,255,0);
    stroke(0);
    strokeWeight(2);
    rect(loc.x, loc.y, D,D );
  }
  void edge()
  {
    if (loc.x>width||loc.x<0)
      velo.x = velo.x*-1;
    if (loc.y>height||loc.y<0)
      velo.y = velo.y*-1;
  }
  void update()
  {
    loc.add(velo);
    velo.add(acc);
    acc.mult(0);
  }
  void appledForce(PVector f )
  {
    acc.add( f);
  }
}
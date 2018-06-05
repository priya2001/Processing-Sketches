mover m;
void setup()
{
  background(0);
    size(600, 600);
  m = new mover();
}
void draw()
{

  if (keyPressed)
  {
    PVector gravity= new PVector(0.4,0.002);
    m.appledForce(gravity);
  }
  if (mousePressed)
  {
    PVector wind=new PVector(0.2,0.3);
    m.appledForce(wind);
  }
  m.display();
  m.update();
  m.moved();
}
class mover
{
  PVector velo;
  PVector acc;
  PVector loc;
  mover()
  {
    loc = new PVector(width/2, height/2);
    velo = new PVector(0, 0);
    acc = new PVector(0, 0);
  }
  void display()
  {
    fill(255,0,0);
    stroke(255);
    ellipse(loc.x, loc.y, 20, 100);
    fill(0,0,255);
    ellipse(loc.y,loc.x,100,20);
  }
  void moved()
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
  }
  void appledForce(PVector f)
  {
    acc=f;
  }
}
mover m;
void setup()
{
  size(500, 500);
  {
    m=new mover();
  }
}
void draw()
{
  background(0);


  m.update();
  m.edge();
  m.display();
}
class mover
{
  PVector loc;
  PVector velo;
  PVector accel;
  float D;
  mover()
  {
    loc = new PVector(width/2, height/2);
    velo = new PVector(0, 1);
  }
  void update()
  { 
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(loc);
    accel = mouse;
    mouse.setMag(1);

    loc.add(velo);
    velo.add(accel);
    velo.limit(5);
  }
  void edge()
  {
    if (loc.x > width)
      loc.x = 0;
    if (loc.x < 0)
      loc.x = width;
    if (loc.y > height)
      loc.y = 0;
    if (loc.y < 0)
      loc.y = height;
  }
  void display()
  {
    stroke(0);
    fill(255, 0, 0);
    ellipse(loc.x, loc.y, 50, 50);
  }
}
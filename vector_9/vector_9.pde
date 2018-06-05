mover m;
void setup()
{
  size(500, 500);
  m = new mover();
}
void draw()
{
  background(0);
  m.display();
  m.update();
  
}
class mover
{
  PVector loc;
  PVector velo;
  PVector accel;
  mover()
  {
    loc = new PVector(width/2, height/2);
    velo = new PVector(2, 0);
  }
  void display() 
  {
    fill(255, 0, 0);
    ellipse(loc.x, loc.y, 50, 50);
    
  }
 
  void update()
  {
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(loc);
    mouse.setMag(1);
    accel = mouse;

    loc.add(velo);
    velo.add(accel);
    velo.limit(5);
  }
}
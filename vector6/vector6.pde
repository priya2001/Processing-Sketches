mover m;
void setup()
{
  size(500, 500);
  m = new mover();
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
  PVector velocity;
  PVector location;
  PVector accel;
  
  mover()
  {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,1);
    accel=new PVector(0.01,0);
    
  }
  void update()
  {
    velocity.add(accel);
    location.add(velocity);
  }
  void edge()
  {
    if (location.x>width)
      location.x = 0;
    if (location.x<0)
      location.x = width;
    if (location.y>height)
      location.y = 0;
    if (location.y<0)
      location.y = height;
  }
  void display()
  {
    stroke(0);
    strokeWeight(2);
    fill(random(255), 255, 255);
    ellipse(location.x, location.y, 50, 50);
   ellipse(location.y,location.x,50,50);
  }
}
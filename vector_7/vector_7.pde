Mover []mover=new Mover[5];
void setup()
{
  size(500, 500);
  {
    for (int i=0; i<5; i++)
      mover[i]= new Mover(random(50));
  }
}
void draw()
{
  background(0);
  for (int i=0; i<5; i++)
  {
    mover[i].update();
    mover[i].edge();
    mover[i].display();
  }
}
class Mover
{
  PVector loc;
  PVector velo;
  PVector accel;
  float D;
  Mover(float ptr)
  {
    loc = new PVector(width/2, height/2);
    velo = new PVector(0, 1);
    D = ptr;
  }
  void update()
  { 
    accel = PVector.random2D();
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
    ellipse(loc.x, loc.y, D, D);
    
  }
}
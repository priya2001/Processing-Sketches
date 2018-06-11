float len;
PVector origin;
PVector bob;
float velo=0.0;
float acc=0.0;
float angle=45;

void setup()
{ 
  size(600, 300);
  len = 150;
  origin = new PVector(width/2, 0);
  bob = new PVector(width/2, len);
}
void draw()
{
  background(0);
  bob.x =  origin.x + len*sin(angle);
  bob.y = origin.y + len*cos(angle);
  fill(255);
  stroke(255);
  strokeWeight(2);
  line(origin.x, origin.y, bob.x, bob.y);
  ellipse(bob.x, bob.y, 50, 50);
  acc = -0.001 * sin(angle);
  angle += 0.1;
  velo += acc;
  angle += velo;
  velo *= 0.99;
}
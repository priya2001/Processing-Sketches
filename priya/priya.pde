float x=0;
float y=0;
float speedx=5;
float speedy=random(-0.5);
void setup()
{
  size(500,500);
  background(0);
}
void draw()
{
  
  stroke(0);
  fill(random(255),random(255),random(255));
  rect(x,y,50,50);
  x=x+speedx;
  y=y+speedy;
if(x>width||x<0)
speedx=speedx*-1;
if(y>height||y<0)
speedy=speedy*-1;
}
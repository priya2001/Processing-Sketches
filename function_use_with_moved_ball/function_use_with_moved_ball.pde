float i=0;
float j=0;
float speedx=10;
float speedy=-0.1;
void setup()
{
  size(600,500);
  background(0);
}
void draw()
{
display();
moved();
check();
}
void display()
{
  fill(255,0,0);
  ellipse(i,j,50,50);
}
void moved()
{
  i=i+speedx;
  j=j+speedy;
}
void check()
{
if(i>width||i<0)
speedx=speedx*-1;
if(j>height||j<0)
speedy=speedy*-1;
}
int i=0;
void setup()
{
  size(600,600);
}
void draw()
{
  background(0);
  i=0;
while(i<width)
{
  if(i<mouseX)
{
  i=i+1;
}
  else
{
  i=i+mouseX;
}
  
  fill(255,0,0);
  ellipse(i,200,25,25);
  i=i+10;
}
}
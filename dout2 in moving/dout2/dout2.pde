boolean going;
int i;
void setup()
{
  size(600, 600);
  going=true;
  i=10;
}
void draw()
{
  background(0);
  ellipse(i, 400, 25, 25);
  if (going)
  {
    print(going+"\n");
    i=i+1;
  }
}
void mousePressed()
{
  if (going)
    going=false;
  else
    going=true;
}
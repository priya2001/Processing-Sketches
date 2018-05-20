PImage senri;
void setup()
{
  size(441, 600);
  senri = loadImage("senri.JPG");
}
void draw()
{
  loadPixels();
  senri.loadPixels();
  for(int i=0;i<100;i++)
  {
  float x = random(width);
  float y = random(height);
  color c = senri.get(int (x), int (y));
  fill(c);
  ellipse(x, y, 5, 5);
}
}
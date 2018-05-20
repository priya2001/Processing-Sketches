PImage priya;
void setup()
{
  size(236, 314);
  priya=loadImage("priya.jpg");
}
void draw()
{
  loadPixels();
  priya.loadPixels();
  for (int i=0; i<100; i++)
  {
    float x=random(width);
    float y=random(height);
    color c= priya.get(int (x), int( y));

    fill(c);

    ellipse(x, y, 10, 10);
  }
}
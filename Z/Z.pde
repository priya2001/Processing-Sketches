PImage zinq;
void setup()
{
  size(1200, 675);
  zinq=loadImage("zinq.jpg");
}
void draw()
{
  loadPixels();
  zinq.loadPixels();
  for (int i=0; i<100; i++)
  {
    float x=random(width);
    float y=random(height);
    color c= zinq.get(int (x), int( y));

    fill(c);

    ellipse(x, y, 10, 10);
  }
}
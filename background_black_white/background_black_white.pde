PImage priya;
void setup()
{
  size(625, 315);
  priya=loadImage("priya.png");
}
void draw()
{
  loadPixels();
  priya.loadPixels();
  for (int x=0; x<width; x++)
  {
    for (int y=0; y<height; y++)
    {
      int loc=x+y*width;
      float b=brightness(priya.pixels[loc]);
      if (b<mouseX)
        pixels[loc]=color(0);
      else
        pixels[loc]=color(255);
    }
  }
  updatePixels();
}
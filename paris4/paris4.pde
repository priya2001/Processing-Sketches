PImage paris;
void setup()
{
  size(768, 384);
  paris = loadImage("paris.jpg");
}
void draw()
{
  loadPixels();
  paris.loadPixels();
  for (int x = 0 ; x<width ; x++)
  {
    for (int y = 0 ; y<height ; y++)
    {
      int loc = x+y*width;

      float b = brightness(paris.pixels[loc]);
      if (b<mouseX)
        pixels[loc] = color(0);
      else
        pixels[loc] = color(255);
    }
  }
  updatePixels();
}
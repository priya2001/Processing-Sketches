PImage pawan;
void setup()
{
  size(720, 960);
  pawan = loadImage("pawan.jpg");
}
void draw()
{
  loadPixels();
  pawan.loadPixels();
  for (int x = 0 ; x<width ; x++)
  {
    for (int y = 0 ; y<height ; y++)
    {
      int loc = x+y*width;

      float b = brightness(pawan.pixels[loc]);
      if (b<mouseX)
        pixels[loc] = color(0,0,105);
      else
        pixels[loc] = color(255);
    }
  }
  updatePixels();
}
PImage LOGO;
void setup()
{
  size(441, 600);
  LOGO=loadImage("LOGO.JPG");
}
void draw()
{
  loadPixels();
  LOGO.loadPixels();
  for (int x=0; x<width; x++)
  {
    for (int y=0; y<height; y++)
    {
      int loc=x+y*width;
      float b=brightness(LOGO.pixels[loc]);
      if(b>mouseX)
      pixels[loc]=color(0);
      else
      pixels[loc]=color(0,255,0);
    }
  }
  updatePixels();
}
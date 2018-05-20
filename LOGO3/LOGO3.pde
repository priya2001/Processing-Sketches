PImage LOGO;
void setup()
{
  size(441, 600);
  LOGO = loadImage("LOGO.JPG");
}
void draw()
{
  loadPixels();
  LOGO.loadPixels();
  for (int x=0; x<width-1; x++)
  {
    for (int y=0; y<height; y++)
    {
      int loc1 = x  +  y*width;
      int loc2 = x+1  +   y*width;
      float b1 =brightness( LOGO.pixels[loc1]);
      float b2 =brightness( LOGO.pixels[loc2]);
      float  D = abs(b1-b2);
      if (D>mouseX)
      { 
        pixels[loc1] = color(255);
      } else
      {
        pixels[loc1] = color(0);
      }
    }
  }
  updatePixels();
}
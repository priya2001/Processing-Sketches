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
      float d=dist(x, y, mouseX, mouseY);
      float f= map(d, 0, 100, 1, 0);
      float r=red(LOGO.pixels[loc]);
      float g=green(LOGO.pixels[loc]);
      float b=blue(LOGO.pixels[loc]);
      pixels[loc]=color(r*f,g*f,b*f);
    }
  }
  updatePixels();
}
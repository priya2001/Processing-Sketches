PImage paris;
void setup()
{
  size(768, 384);
  paris=loadImage("paris.jpg");
}
void draw()
{
  loadPixels();
  paris.loadPixels();
  for (int x=0; x<width; x++)
  {
    for (int y=0; y<height; y++)
    {
      int loc=x+y*width;
      float r=red(paris.pixels[loc]);
      float b=blue(paris.pixels[loc]);
      float g=green(paris.pixels[loc]);
      pixels[loc]=color(r, random(g),r );
    }
  }
  updatePixels();
}
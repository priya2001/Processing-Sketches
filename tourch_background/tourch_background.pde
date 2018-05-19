PImage snow;
void setup()
{
  size(625, 315);
  snow=loadImage("snow.png");
}
void draw()
{
  loadPixels(); 
  snow.loadPixels();
  for (int x=0; x<width; x++)
  {
    for (int y=0; y<height; y++)
    {
      int loc=x+y*width;
      float r=red(snow.pixels[loc]);
      float b=blue(snow.pixels[loc]);
      float g=green(snow.pixels[loc]);
      float d=dist(mouseX, mouseY, x, y);
      float f=map(d, 0, 200, 1, 0);
      pixels[loc]=color(r*f, g*f, b*f);
    }
  }
  updatePixels();
}
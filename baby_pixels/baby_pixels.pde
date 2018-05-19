PImage baby;
void setup()
{background(0);
  size(236, 314);
  baby=loadImage("baby.jpg");
}
void draw()
{//image(baby,0,0);
  baby.loadPixels();
  loadPixels();
  for (int x=0; x<width; x++)
  {
    for (int y=0; y<height; y++)
    {
      int loc=x+y*width;
         pixels[loc]=baby.pixels[loc];
    }
  }
  updatePixels();
}
size(500, 500);
background(0);
loadPixels();
for (int x=0; x<width; x++)
{
  for (int y=0; y<height; y++)
  {
    float D=dist(x, y, width/2, height/2);
    pixels[x+y*width]=color(D);
  }
}
updatePixels();
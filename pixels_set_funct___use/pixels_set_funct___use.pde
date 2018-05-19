

size(600, 600);
background(0);
for (int x=0; x<width; x++)
{
  for (int y=0; y<height; y++)
  {
    {
      set(200, y, color(255, 0, 255));
      set(300, y, color(255, 255, 0));
      set( x, 300, color(255, 255, 0) );
      set(x, 200, color(255, 0, 255));
      set(x, 400, color(255, 0, 255));
      set(400, y, color(255, 0, 255));
    }
  }
}
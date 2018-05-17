PImage frozen;
void setup()
{
  size(350, 200);
  frozen = loadImage("frozen.jpg");
}
void draw()
{
  background(0);
  tint(255,255,0);
  image(frozen, 15,15);
}
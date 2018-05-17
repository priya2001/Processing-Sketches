PImage frozen;
void setup()
{
  size(500, 500);
  frozen = loadImage("frozen.jpg");
}
void draw()
{
  background(0);
  tint(255,255,0);
  image(frozen, 0,0,mouseX,mouseY);
}
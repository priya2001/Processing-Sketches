void setup()
{
  size(500, 300);
}
void draw()
{
  strokeWeight(4);
  background(0);
  stroke(255);
  noFill();
  translate(width/2, height/2);
  ellipse(0, 0, 4, 4);
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width, height);
  mouse.sub(center);
  line(0, 0, mouse.x, mouse.y);
}
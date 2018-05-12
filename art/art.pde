void setup() {
  size(600, 300);
  background(0);
}
void draw()
{
  fill(255, 0, 0);
  stroke(0);

  rect(mouseX, mouseY, 50, 50);
  fill(0, 0, 255);
  ellipse(mouseX, mouseY, 100, 50);
  fill(255, 255, 0);
  ellipse(mouseX, mouseY, 50, 50);
}

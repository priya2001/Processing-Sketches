void setup()
{
  size(600, 600);
  background(0);
}
void draw()
{
  
  if (mouseX > 200)
  {
    fill(random(255), random(255), random(255));
    ellipse(random(600), random(600), 25, 25);
  }
  if (mouseX < 300)
  {
    fill(255);
    rect(random(600), random(600), 25, 25);
  }
}
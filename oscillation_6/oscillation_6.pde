float ampli = 300;
float angle = 0.0;
void setup()
{
  size(600, 600);
}
void draw()
{
  background(0);
  translate(width/2, height/2);
  float x = ampli*sin(angle);
  fill(255);
  stroke(255);
  line(0, 0, x, 0);
  ellipse(x, 0, 50, 50);
  angle += 0.2;
}
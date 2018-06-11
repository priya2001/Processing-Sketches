float loc = 0.0;
float velo = 0.0;
float acc = 0.0001;
float r = 10;
float a = PI/4;
void setup()
{
  size(600, 600);
  background(0);
}
void draw()
{
  loc += velo;
  velo += acc;
  translate(width/2, height/2);
  rotate(loc);
  float x = r*sin(a);
  float y = r*cos(a);
  fill(0);
  stroke(random(255), random(255), random(255));
  line(0, 0, x, y);
  rect(x, y, 100, 50);
  {
    fill(0);
    stroke(random(255), random(255), random(255));
    rect(100, 100, 100, 50);
  }
  {
    fill(0);
    stroke(random(255), random(255), random(255));
    rect(150, 150, 100, 50);
  }
}
float velo = 0.0;
float loc = 0.0;
float acc = 0.001;
void setup()
{
  size(500, 500);
  background(0);
}
void draw()
{
  {
    loc += velo;
    velo += acc;
    translate(width/2, height/2);
    rotate(loc);
    fill(0);
    stroke(255);
    ellipse(0, 0, 200, 100);
    fill(255, 0, 0);
    stroke(255);
    ellipse(0, 0, 100, 50);
    fill(0, 255, 0);
    stroke(0);
    ellipse(0, 0, 50, 25);
  }
  {
    fill(255, 0, 0);
    stroke(0);
    ellipse(150, 150, 100, 5);
    fill(0, 200, 200);
    stroke(0);
    ellipse(100, 100, 50, 5);
    fill(255,255,0);
    stroke(0);
    ellipse(200,200,200,5);
  }
}
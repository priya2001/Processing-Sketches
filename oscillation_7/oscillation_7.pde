float D;
float angle =0;
void setup()
{
  size(700,345);
  D=height-10;
  
  fill(255,255,0);
}
void draw()
{
  background(0);

  float d1=10+(sin(angle)*D/2)+D/2;
  float d2=10+(sin(angle+PI/2)*D/2)+D/2;
  float d3=10+(sin(angle+PI)*D/2)+D/2;

  ellipse(0, height/2, d1, d1);
  ellipse(width/2, height/2, d2, d2);
  ellipse(width, height/2, d3, d3);

  angle+=0.02;
}
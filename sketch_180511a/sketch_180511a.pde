float i=10;
float j=100;
void setup()
{
  size(200,200);
}
void draw()
{
  background(0);
  stroke(255);
  fill(255,0,0);
  strokeWeight(5);
  ellipse(random(i),random(j),50,50);
  ellipse(i,j,random(100),random(100));
  rect(random(i),random(j),random(100),random(100));
  i=i+j;
  if(i>width||i<0)
  j=j*-1;
 
}
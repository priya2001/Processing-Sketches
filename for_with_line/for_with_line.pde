float i=10;
float j=10;
void setup()
{
  size(500,500);
}
void draw()
{
  background(0);
  stroke(255,255,random(255));
  strokeWeight(8);
 for(float i=0;i<width;i=i+25)
 {
   for(float j=0;j<height;j=j+25)
   line(j,0,j,width);
   line(0,i,height,i);
 }
}
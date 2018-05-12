float j=10;
float i=10;
float k=10;
void setup()
{size(600,600);
}
void draw()
{
background(0);
k=k+random(-1,1);
stroke(255);
strokeWeight(5);
for(float i=10;i<width;i=i+k)
{
  line(i,0,i,width);
}
for(float j=10;j<height;j=j+k)
{
  line(0,j,height,j);
}
}
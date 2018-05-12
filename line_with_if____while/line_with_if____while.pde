float i=50;
float j=50;
float k=50;
void setup()
{size(500,400);
}
void draw()
{
  background(0);
  k=k+random(-1,1);
  stroke(255);
  strokeWeight(5);
  
  i=50;
  while(i<width)
  {line(i,0,i,height);
  i=i+k;
  }
  j=50;
while(j<height)
{line(0,j,width,j);
j=j+k;
}
}
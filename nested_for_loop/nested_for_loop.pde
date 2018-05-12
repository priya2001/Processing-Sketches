float x=10;
float y=10;
float k=20;
void setup()
{size(500,500);
}
void draw()
{background(0);
//k=k+random(-2,2);
stroke(0);
strokeWeight(5);
for(float x=1;x<width;x=x+k)
{
  for(float y=1;y<height;y=y+k)
  rect(x,y,200,200);
// fill(random(255));
}
}
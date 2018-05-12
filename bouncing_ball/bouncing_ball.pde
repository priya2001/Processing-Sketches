float i=10;
float j=10;
void setup()
{size(600,600);
background(0);
}
void draw()
{
fill(random(255),random(255),random(255));
ellipse(300,300,i,i);
i=i+j;
if(i>width||i<0)
{j=j*-1;
}
}
int i=1;
void setup()
{size(600,200);
background(0,0,255);
}
void draw()
{
fill(0);
stroke(255,0,0);
rect(i,i-40,50,50);
rect(i,i-200,50,50);
rect(i,i-400,50,50);
i=i+5;
}
PImage mikey;
void setup()
{size(500,400);
mikey=loadImage("mikey.jpg");
}
void draw()
{background(0);
tint(255,255,255);
image(mikey,100,100);
}
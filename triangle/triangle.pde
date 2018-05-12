void setup()
{size(500,500);
background(150);
}
void draw()
{stroke(255,0,0);
triangle(mouseX,mouseY,pmouseX,pmouseY,50,50);
}
void mousePressed()
{background(20);
}
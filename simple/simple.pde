void setup()
{size(500,500);
background(0,255,255);
}
void draw()
{fill(255,0,0);
stroke(255);
rect(mouseX,mouseY,pmouseX,pmouseY);
}
void mousePressed()
{background(0);
}
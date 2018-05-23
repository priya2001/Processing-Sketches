void setup()
{size(500,500);
}
void draw()
{background(0);
fill(255);
stroke(255);
strokeWeight(4);

translate(width/2,height/2);
ellipse(0,0,5,5);

PVector mouse=new PVector(mouseX,mouseY);
PVector center=new PVector(width/2,height/2);
mouse.sub(center);
mouse.setMag(50);
line(0,0,mouse.x,mouse.y);
}
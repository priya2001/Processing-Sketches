size(600,600);
background(0);
loadPixels();
for(int x=0;x<width;x++)
{for(int y=0;y<height;y++)
pixels[x+y*width]=color(0,y/2,x/2);
}
updatePixels();
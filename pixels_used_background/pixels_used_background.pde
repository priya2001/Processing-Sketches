
size(600,600);

  background(0);
  
loadPixels();
for(int i=0;i<pixels.length;i++)
{
pixels[i]=color(0,0,random(255));
}
updatePixels();
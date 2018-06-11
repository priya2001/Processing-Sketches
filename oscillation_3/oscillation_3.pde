
float loc = 0.0;
float acc = 0.0001;
float velo = 0.0;
void setup()
{
  background(0);
  
  
  size(600, 600);
}
void draw()
{
  loc += velo;
  velo += acc;

 fill(0);
    strokeWeight(2);
    stroke(255);
    translate(width/2, height/2);
    rotate(loc);
    rect(0, 0, 500, 50);

}
size(600, 600);
background(0);
PFont f = createFont("Const", 64);
String s = "Priya Gautam";
textFont(f);
float x = 100;

for (int i = 0; i < s.length(); i++)
{
  fill(255, 0, 255);
  char c=s.charAt(i);
  text(c, x, 300);
  text(c, x, 200);
  text(c, x, 400);
  text(c, x, 100);
  text(c, x, 500);
  x = x+textWidth(c);
  
}
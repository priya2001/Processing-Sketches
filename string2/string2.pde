size(500, 500);
background(0);
PFont f=createFont("conts", 50);
String s = "This Is My book";
textFont(f);

float x=100;
for (int i=0; i<s.length(); i++)
{
  char c=s.charAt(i);
  text(c, x, 200);  
  text(c, x, 300);
  x=x+textWidth(c);
  fill(255,255,0);
}
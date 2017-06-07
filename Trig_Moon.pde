float ang, ang2, ang3, ang4 = random(360);
float x, y;
float x2,y2,x3,y3,x4,y4,x5,y5,x6,y6;

void setup() {
  background(0);
  size(600, 600);
}

void draw() {
  int radOne = 200;
  int radTwo = 100;
  
  x=(sin(ang) * radOne + width / 2);
  y=(cos(ang) * radOne + height / 2);
  x2=(sin(ang2) * radOne + width / 2);
  y2=(cos(ang2) * radOne + height / 2);
  x3=(sin(ang3) * radTwo + width / 2);
  y3=(cos(ang3) * radTwo + height / 2);
  x4=(sin(ang4) * radTwo + width / 2);
  y4=(cos(ang4) * radTwo + height / 2);
  /* x, y, and their different versions are points on the edge
  of a circle of radius radOne or radTwo */
  
  stroke(255,30);
  line(x, y, x2, y2);
  line(x3, y3, x4, y4);
  // These are semi transparent lines between the points aforementioned
  
  ang += random(360);
  ang2 += random(360);
  ang3 += random(360);
  ang4 += random(360);
  // Update the angle so the lines move around the circle.
  
  saveFrame("Captures/cap_####.png");
}
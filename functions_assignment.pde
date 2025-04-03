color red = #FFADAD;
color orange = #FFD6A5;
color yellow = #FDFFB6;
color green = #CAFFBF;
color cyan = #9BF6FF;
color blue = #A0C4FF;
color purp = #BDB2FF;
int a;
int x;
int y;

void setup() {
  a = 0;
  x = 100;
  y = 150;
  size(800, 800);
  background(random(0, 255), random(0, 255), random(0, 255));
  strokeWeight(3);
  while (a < 9) {
    house(x,y, 0.7, 0);
    a += 1;
    x += 200;
    if (x == 700) {
      x = 100;
      y += 230;
    }
  }
}
// colour rotation size placement
void draw() {

}

void house(float x, float y, float s, float r) { // these variables only exist when house is called
// parameter variables take priority over globle variables
  pushMatrix();
  translate(x, y);
  scale(s);
  rotate(r);
  
  building();
  door();
  window();
  chim();
  roof();
  
  popMatrix(); 
}

void building() {
  stroke(0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(0,0, 200,170);
}

void door() {
  stroke(0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(50,100, 40,70);
  fill(0);
  circle(60, 143, 7);
}

void window() {
  stroke(0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(120,70, 40,40);
  line(140,70, 140, 110);
  line(120,90, 160, 90);
}

void roof() {
  stroke(0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  //triangle(-30, 0, 230, 0, 100, -100);
  triangle(-30, 0, 230, 0, 100, random(-150,-50));
}

void chim() {
  stroke(0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(140, 0, 30, random(-140,-100));
}

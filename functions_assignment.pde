color red = #FFADAD;
color orange = #FFD6A5;
color yellow = #FDFFB6;
color green = #CAFFBF;
color cyan = #9BF6FF;
color blue = #A0C4FF;
color purp = #BDB2FF;

void setup() {
  size(800, 800);
  background(random(0, 255), random(0, 255), random(0, 255));
  strokeWeight(3);
  for(int i = 0; i < 10; i += 1) {
    house(random(0, 800), random(0,800), random(.5, 1.2), random(radians(0),radians(360)));
  }
}

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
  triangle(-30, 0, 230, 0, 100, -100);
}

void chim() {
  stroke(0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(140, 0, 30, -120);
}

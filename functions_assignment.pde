color red = #FFADAD;
color orange = #FFD6A5;
color yellow = #FDFFB6;
color green = #CAFFBF;
color cyan = #9BF6FF;
color blue = #A0C4FF;
color purp = #BDB2FF;

void setup() {
  size(800, 800);
  strokeWeight(3);
}

void draw() {
  house(200, 100, .5, PI/-9);
  house(700, 400, .2, PI/-3);
  house(350, 300, .8, PI/6);
  house(300, 650, 1.1, PI/4);
  house(150, 350, .4, PI/PI);
}

void house(int x, int y, float s, float r) {
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
  fill(orange);
  rect(0,0, 200,170);
}

void door() {
  stroke(0);
  fill(red);
  rect(50,100, 40,70);
  fill(0);
  circle(60, 143, 7);
}

void window() {
  stroke(0);
  fill(255);
  rect(120,70, 40,40);
  line(140,70, 140, 110);
  line(120,90, 160, 90);
}

void roof() {
  stroke(0);
  fill(yellow);
  triangle(-30, 0, 230, 0, 100, -100);
}

void chim() {
  stroke(0);
  fill(blue);
  rect(140, 0, 30, -120);
}

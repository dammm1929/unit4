color red = #FFADAD;
color orange = #FFD6A5;
color yellow = #FDFFB6;
color green = #CAFFBF;
color cyan = #9BF6FF;
color blue = #A0C4FF;
color purp = #BDB2FF;

void setup() {
  size(800, 800);
}

void draw() {
  house(200, 100);
  house(500, 400);
}

void house(int x, int y) {
  pushMatrix();
  translate(x, y);
   
  building();
  door();
  window();
  roof();
  
  popMatrix(); 
}

void building() {
  stroke(0);
  fill(orange);
  rect(0,0, 200,200);
}

void door() {
  stroke(0);
  fill(red);
  rect(50,130, 40,70);
}

void window() {
  stroke(0);
  fill(255);
  rect(120,100, 40,40);
  line(140,100, 140, 140);
  line(120,120, 160, 120);
}

void roof() {
  stroke(0);
  fill(yellow);
  triangle();
  
}

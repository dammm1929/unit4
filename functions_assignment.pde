// damon 2-2 functions animation
color gray = #8B8B8B;
color red = #D65252;
color orange = #FFD6A5;
color green = #099010;
color blue = #9BF4FF;
int treeplace;
int treeplacey;
int toptrees;
int cloudplace;


void setup() {
  size(1000,800);
  strokeWeight(3);
  background(255);
  fill(#59BC5D);
  noStroke();
  rect(0,0, 1000,600);
  fill(blue);
  rect(0,0, 1000,250);
  treeplace = -50;
  treeplacey = 300;
  toptrees = -50;
  cloudplace = 50;
  track();
  cloud();
  
  
  for (int p = 0; p < 22; p += 1) {
    tree(random(0, 10) + toptrees, random(250,280));
    toptrees += 50;
  }
  
  for (int i = 0; i < 126; i += 1) {
    tree(random(0, 10) + treeplace, random(0, 100) + treeplacey);
    i += 1;
    treeplace += 50;
    if (treeplace >= 1000) {
      treeplace = -50;
      treeplacey += 100;
    }
  }
  
}


void track() {
  tile(-25);


}

void tree(float a, float b) {
  strokeWeight(5);
  stroke(#527953);
  fill(green);
  triangle(a,b, a+random(65,75),b, a+random(30,40),b-random(80,100));
}


void car(float x, float y) {
  //pushMatrix();
  //translate(x, y);
  

  
  //popMatrix();
}

void tile(int x) {
  stroke(0);
  fill(#8B8B8B);
  for (int i = 0; i < 20; i += 1) {
    rect(x,600, 80,15);
    x += 80;
  }
}

void cloudball(float x, float y) {
  fill(255);
  strokeWeight(3);
  noStroke();
  ellipse(x,y, random(40,70), random(40,50));
}

void cloud() {
  for (int a = 0; a < 20;) {
    cloudball(random(0, 20) + cloudplace, random(-20,20) + 50);
    a += 1;
    cloudplace += 20;
    if (a == 10) {
      cloudplace = 50;
    }
  }
}

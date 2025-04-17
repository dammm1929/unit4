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
//int steamplace;


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
  //steamplace = -20;
  track();
  cloud(0,20);
  cloud(70,100);
  cloud(150,50);
  cloud(300,90);
  cloud(200,-20);

  
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
  
  windowcar(450,500);
  coalcar(625,500);
  frontcar(800,480);
  
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

void wheel(float x, float y) {
  pushMatrix();
  translate(x,y);
  fill(#3D3E3E);
  stroke(#3D3E3E);
  circle(0,0, 20);
  
  popMatrix();
  
}

void windowcar(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(red);
  stroke(#985151);
  rect(0,0, 150,80);
  stroke(#059AFA);
  fill(#00D7FF);
  rect(30,20,90,40);
  line(60,35, 60,60);
  line(90,35, 90,60);
  stroke(#C4C6C6);
  fill(#F7F7F7);
  rect(0,0, 150,-15);
  fill(#3D3E3E);
  stroke(#3D3E3E);
  rect(155,60, 15,5);
  wheel(30,90);
  wheel(120,90);
  popMatrix();
}

void coalcar(float x, float y) {
  pushMatrix();
  translate(x, y);
  for (int i = 0; i < 70; i += 1) {
    coal();
  }
  fill(#242424);
  stroke(#242424);
  ellipse(76,20, 140,20);
  ellipse(85, 10, 110,20);
  fill(red);
  stroke(#985151);
  rect(0,25, 150,55);
  line(37.5,25, 37.5,55);
  line(75,25, 75,55);
  line(112.5,25, 112.5,55);
  fill(#3D3E3E);
  stroke(#3D3E3E);
  rect(155,60, 15,5);
  wheel(30,90);
  wheel(120,90);
  popMatrix();
  
}

void frontcar(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(red);
  stroke(#985151);
  rect(0,40, 150,60);
  rect(0,0, 90,100);
  noStroke();
  rect(60,43, 60,55);
  stroke(#C4C6C6);
  fill(#F7F7F7);
  rect(0,0, 90,-15);
  stroke(#059AFA);
  fill(#00D7FF);
  rect(30,20,80,30);
  line(55,35, 55,50);
  line(85,35, 85,50);
  steam(5,-60, -20);
  steam(50,-60, -20);
  stroke(0);
  fill(0);
  rect(50,-20, 13,-10);
  rect(15,-20, 18,-10);
  wheel(30,110);
  wheel(120,110);
  popMatrix();
  
}

void coal() {
  fill(#242424);
  stroke(#242424);
  ellipse(random(15,135),random(-10,20),random(10,20),random(7,14));
}

void tile(int x) {
  stroke(#545555);
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

void steamball(float x, float y) {
  fill(255);
  strokeWeight(1);
  noStroke();
  ellipse(x,y, random(14,21), random(14,16));
}

void cloud(float x, float y) {
  pushMatrix();
  translate(x,y);
  for (int a = 0; a < 20;) {
    cloudball(random(0, 20) + cloudplace, random(-20,20) + 50);
    a += 1;
    cloudplace += 20;
    if (a == 10) {
      cloudplace -= 230;
    }
  }
  popMatrix();
}

void steam(float x, float y, int steamplace) {
  pushMatrix();
  translate(x, y);
  steamball(8,23);
  steamball(8,23);
  for (int a = 0; a < 12;) {
    steamball(random(-9,3) - steamplace, random(-6,3) - steamplace + 5);
    
    a += 1;
    steamplace += 10;
    if (a == 6) {
      steamplace -= 60;
    }
  }
  
  
  popMatrix();
  
}

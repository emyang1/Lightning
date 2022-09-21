PImage img;
PImage img1;
PImage img2;

void setup(){
  size(700,700);
  background(30, 18, 248);
  noLoop();
  img = loadImage("noeasyshadow.png");
  img1 = loadImage("noeasy.png");
  img2 = loadImage("track.png");
}

void draw(){
  background(30, 18, 248, 10);
  int x = 0;
  int y = 80;
  int a = 700;
  int b = 360;
  int c = 700;
  int d = 50;
  while(x <= 450){  
    int r = (int)(Math.random()*8)+1;
    int m = (int)(Math.random()*20)-12;
    stroke(250);
    strokeWeight((float)(Math.random()*3));
    line(x, y, x + r, y - m); //left
    line(a, b, a - r, b - m); //right
    strokeWeight(9);
    stroke(250, 60);
    line(x, y, x + r, y - m);
    line(a, b, a - r, b - m);
    x = x+r;
    y = y-m;
    a = a-r;
    b = b- m;
  }
  while(c>=500){
    int r = (int)(Math.random()*8)+1;
    int m = (int)(Math.random()*20)-12;
    stroke(250);
    strokeWeight((float)(Math.random()*3));
    line(c, d, c - r, d - m);
    strokeWeight(9);
    stroke(250, 60);
    line(c, d, c - r, d - m);
    c = c - r;
    d = d - m;
  }
  image(img, 0, 525, width/1, height/4);
  image(img1, 150, 300, width/1.8, height/3.5);
  image(img2, 10, 10, width/1, height/2.5);
}

void mousePressed(){
  redraw();
}

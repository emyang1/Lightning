PImage img;
PImage img1;
PImage img2;

void setup(){
  size(700,700);
  background(30, 18, 248);
  frameRate(6);
  img = loadImage("noeasyshadow.png");
  img1 = loadImage("noeasy.png");
  img2 = loadImage("track.png");
}

void draw(){
  background(30, 18, 248, 50);
  int x = 0;
  int y = 80;
  int a = 700;
  int b = 360;
  while(x <= 450){   
    int r = (int)(Math.random()*8)+1;
    int m = (int)(Math.random()*20)-12;
    int c = (int)(Math.random()*20)-9;
    stroke(250);
    strokeWeight((float)(Math.random()*3));
    line(x, y, x + r, y - m); //left
    line(a, b, a - r, b - m); //right
    strokeWeight(7);
    stroke(250, 60);
    line(x, y, x + r, y - m);
    line(a, b, a - r, b - m);
    x = x+r;
    y = y-m;
    a = a-r;
    b = b- m;
  }
  image(img, 0, 525, width/1, height/4);
  image(img1, 150, 300, width/1.8, height/3.5);
  image(img2, 10, 10, width/1, height/2.5);
}

void mousePressed(){
  redraw();
}



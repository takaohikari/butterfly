/*
   want to be the a butterfly
 */
int tamacolor[] = {0, 0, 0, 1, 1, 1, 2, 2, 2};
int tamax[] = {100, 100, 100, 300, 400, 500, 700, 700, 700};
int tamay[] = {200, 300, 400, 700, 700, 700, 200, 300, 400};
int tamanum = 9;
int flag;
int y;

void setup() {

  size(800, 800);
  mouseX=400;
  mouseY=400;
  flag = 0;
  y = height;
}

void draw() {

  /*PImage img=loadImage("food.png");
   image(img,0,0);*/

if (flag == 0) {
  float mx = mouseX;
  float my = mouseY;

  food(mx, my);

  int cnt = 0;
  for (int i = 0; i < tamanum; i++) {
    if (tamacolor[i] == 3) {
      cnt++;
    }
  }
  if (cnt >= 3) {
    flag = 1;
  }
  
  translate(mx, my);


  fill(255, 127, 0);
  ellipse(560-500, 400-400, 60, 60);/*4th*/

  fill(0, 255, 0);
  ellipse(525-500, 400-400, 65, 65);/*3rd*/
  fill(0, 0, 255);
  ellipse(490-500, 400-400, 70, 70);/*2nd*/

  fill(255, 0, 0);
  ellipse(450-500, 400-400, 80, 80);/*1st*/

  fill(255, 255, 255);
  ellipse(400-500, 400-400, 100, 100);/*head*/

  fill(255, 0, 0);
  ellipse(435-500, 345-400, 30, 30);/*right head 1*/

  fill(0, 255, 0);
  ellipse(445-500, 320-400, 25, 25);/*right head 2*/

  fill(0, 0, 255);
  ellipse(365-500, 345-400, 30, 30);/*left head 1*/

  fill(255, 0, 0);
  ellipse(355-500, 320-400, 25, 25);/*left head 2*/

  fill(0, 0, 0);
  rect(388-500, 405-400, 24, 5);/*mouth*/

  fill(0, 0, 0);
  ellipse(420-500, 390-400, 10, 10);/*right eye*/

  fill(0, 0, 0);
  ellipse(380-500, 390-400, 10, 10);/*left eye*/
} else {
  background(255,255,255);

fill(255,0,0);
textSize(60);
textAlign(CENTER);
text("Thank you!!",400,200+600-y);

int c[] = {0,0,0};
for (int i = 0; i < tamanum; i++) {
  if (tamacolor[i] == 3) {
    c[i/3]++;
  }
}

fill(255/3*c[0],255/3*c[1],255/3*c[2]);
ellipse(490,600+440-y,200,250);/*rightwing b*/
ellipse(310,600+440-y,200,250);/*leftwing b*/
ellipse(450,600+530-y,140,150);/*rightwing s*/
ellipse(350,600+530-y,140,150);/*leftwing s*/
y++;
fill(0,0,0);
ellipse(540,600+380-y,25,25);/*right black*/
ellipse(260,600+380-y,25,25);/*left black*/
ellipse(485,600+560-y,20,20);/*right black s*/
ellipse(315,600+560-y,20,20);

fill(255,255,221);
ellipse(400,600+500-y,50,200);/*body*/

fill(255,0,0);
ellipse(400,600+456-y,80,50);/*neck*/

fill(255,255,255);
ellipse(400,600+400-y,100,100);/*head*/

fill(255,0,0);
ellipse(435,600+345-y,30,30);/*right head 1*/

fill(0,255,0);
ellipse(445,600+320-y,25,25);/*right head 2*/

fill(0,0,255);
ellipse(365,600+345-y,30,30);/*left head 1*/

fill(255,0,0);
ellipse(355,600+320-y,25,25);/*left head 2*/

fill(0,0,0);
arc(400,600+405-y,24,10,0,PI);/*mouth*/

fill(0,0,0);
ellipse(420,600+390-y,10,10);/*right eye*/

fill(0,0,0);
ellipse(380,600+390-y,10,10);/*left eye*/

fill(255,0,0);
textSize(60);
textAlign(CENTER);
text("See you Again!",400,1350-y);

fill(255,0,0);
textSize(60);
textAlign(CENTER);
text("[I want to be a butterfly.] ",400,2150-y);

fill(255,0,0);
textSize(30);
textAlign(CENTER);
text("when you click,this program is end.",400,2200-y);
if(y>=1750){
noLoop();
};
  if (mousePressed) {
    exit();
  }

}
}

void food(float mx, float my) {
  background(255, 255, 255);
  for (int i = 0; i < tamanum; i++) {
    if (dist(mx-100, my, tamax[i], tamay[i])<65) {
      tamacolor[i]=3;
    }
    if (tamacolor[i]==0) {
      fill(255, 0, 0);
    } else if (tamacolor[i]==1) {
      fill(0, 255, 0);
    } else if (tamacolor[i]==2) {
      fill(0, 0, 255);
    } else {
      fill(255);
    }
    ellipse(tamax[i], tamay[i], 30, 30);
  }


}

/*
   want to be the a butterfly
*/
int colors[]={0,0,0,1,1,1,2,2,2};//food's color
int foodx[]={100,100,100,300,400,500,700,700,700};//food's x coodinate
int foody[]={200,300,400,700,700,700,200,300,400};//food's y coodinate
int foodnum=9;//The number of foods
int y;
int flag;
void setup(){
 
 size(800,800);
 mouseX=400;//butterfly's first x coodinate
 mouseY=400;//butterfly's first y coodinate
 flag=0;
 y=height;
 
}
void draw(){
if(flag==0){
float mx = mouseX;//mouse's x coodinate
float my = mouseY;//mouse's y coodinate

food(mx,my);

int count=0;
for(int i=0;i<foodnum;i++){
  if(colors[i]==3){
  count++;
  }
}
if(count>=3){
  flag = 1;
}

translate(mx,my);


fill(255,127,0);
ellipse(560-500,400-400,60,60);/*4th*/

fill(0,255,0);
ellipse(525-500,400-400,65,65);/*3rd*/
fill(0,0,255);
ellipse(490-500,400-400,70,70);/*2nd*/

fill(255,0,0);
ellipse(450-500,400-400,80,80);/*1st*/

fill(255,255,255);
ellipse(400-500,400-400,100,100);/*head*/

fill(255,0,0);
ellipse(435-500,345-400,30,30);/*right head 1*/

fill(0,255,0);
ellipse(445-500,320-400,25,25);/*right head 2*/

fill(0,0,255);
ellipse(365-500,345-400,30,30);/*left head 1*/

fill(255,0,0);
ellipse(355-500,320-400,25,25);/*left head 2*/

fill(0,0,0);
rect(388-500,405-400,24,5);/*mouth*/

fill(0,0,0);
ellipse(420-500,390-400,10,10);/*right eye*/

fill(0,0,0);
ellipse(380-500,390-400,10,10);/*left eye*/

}else{
background(255,255,255);

int c[]={0,0,0};//color of butterfly's wing
for(int i=0;i<foodnum;i++){
  if(colors[i]==3){
    c[i/3]++;
 }
}
y++;
fill(255/3*c[0],255/3*c[1],255/3*c[2]);
ellipse(490,440+800-y,200,250);/*rightwing b*/
ellipse(310,440+800-y,200,250);/*leftwing b*/
ellipse(450,530+800-y,140,150);/*rightwing s*/
ellipse(350,530+800-y,140,150);/*leftwing s*/

fill(0,0,0);
ellipse(540,380+800-y,25,25);/*right black*/
ellipse(260,380+800-y,25,25);/*left black*/
ellipse(485,560+800-y,20,20);/*right black s*/
ellipse(315,560+800-y,20,20);

fill(255,255,221);
ellipse(400,500+800-y,50,200);/*body*/

fill(255,0,0);
ellipse(400,456+800-y,80,50);/*neck*/

fill(255,255,255);
ellipse(400,400+800-y,100,100);/*head*/

fill(255,0,0);
ellipse(435,345+800-y,30,30);/*right head 1*/

fill(0,255,0);
ellipse(445,320+800-y,25,25);/*right head 2*/

fill(0,0,255);
ellipse(365,345+800-y,30,30);/*left head 1*/

fill(255,0,0);
ellipse(355,320+800-y,25,25);/*left head 2*/

fill(0,0,0);
arc(400,405+800-y,24,10,0,PI);/*mouth*/

fill(0,0,0);
ellipse(420,390+800-y,10,10);/*right eye*/

fill(0,0,0);
ellipse(380,390+800-y,10,10);/*left eye*/


fill(255,0,0);
textSize(60);
textAlign(CENTER);
text("Thank you!!",400,1000-y);
text("See you Again!",400,1550-y);
text("[I want to be a butterfly.] ",400,2150-y);
fill(255,0,0);
textSize(30);
text("when you click,this program is end.",400,2200-y);
if(y>=1750){
noLoop();
}
}

}


void food(float mx,float my){
  background(255,255,255);
  fill(0,0,0);
 textSize(60);
 textAlign(CENTER);
 text("I'm very hungry!!",400,70);
 text("Please move me!",400,130);
  for(int i=0;i<foodnum;i++){
  if(dist(mx-100,my,foodx[i],foody[i])<65){
  colors[i]=3;
  }//distance between head and food  
  if(colors[i]==0){
  fill(255,0,0);//colors[0] is red.
  }else if(colors[i]==1){
  fill(0,255,0);//colors[1] is green.
  }else if(colors[i]==2){
  fill(0,0,255);//colors[2] is blue.
  }else{
  fill(255);
  }//others is white.
  ellipse(foodx[i],foody[i],30,30);
  }
}

void mousePressed(){
exit();
}

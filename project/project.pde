import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int x1;
int x2;
int x3;
int a1;
int a2;
int a3;
int a4;
int a5;
int c1;
int c2;
int c3;
int c4;
int d;
PImage img;
Minim minim;
AudioPlayer player;
void setup(){
  size(800,600);
  x1=200;
  x2=600;
  x3=-200;
  a1=0;
  a2=200;
  a3=400;
  a4=600;
  a5=800;
  c1=0;
  c2=0;
  c3=30;
  c4=-30;
  d=800;
  img=loadImage("magikarp.png");
  minim=new Minim(this);
  player=minim.loadFile("song.mp3");
  player.play();
}
void draw(){

  //mountain
  background(85,178,227);
  fill(108,237,115);
  stroke(108,237,115);
  ellipse(x1,400,400,400);
  ellipse(x2,400,400,400);
  ellipse(x3,400,400,400);
  x1=x1+2;
  if (x1>1000){x1=-200;}
  x2=x2+2;
   if (x2>1000){x2=-200;}
  x3=x3+2;
   if (x3>1000){x3=-200;}
   //bush
  fill(18,126,22);
  stroke(18,126,22);
  ellipse(a1,400,200,200);
  ellipse(a2,400,200,200);
  ellipse(a3,400,200,200);
  ellipse(a4,400,200,200);
  ellipse(a5,400,200,200);
  a1=a1+5;
  if (a1>900){a1=-100;}
  a2=a2+5;
  if (a2>900){a2=-100;}
  a3=a3+5;
  if (a3>900){a3=-100;}
  a4=a4+5;
  if (a4>900){a4=-100;}
  a5=a5+5;
  if (a5>900){a5=-100;}
  fill(245,236,67);
  stroke(245,236,67);
  rect(0,400,800,300);
  //cloud
  fill(255);
  stroke(255);
  ellipse(c1,70,60,60);
  ellipse(c2,100,60,60);
  ellipse(c3,100,60,60);
  ellipse(c4,100,60,60);
  c1++;
  if (c1>840){c1=-40;}
  c2++;
  if (c2>840){c2=-40;}
  c3++;
  if (c3>870){c3=-10;}
  c4++;
  if (c4>820){c4=-60;}
  //psyduck
  image(img,d,375, width/3,height/3);
  d=d-5;
  if(d<-250){d=850;}

}

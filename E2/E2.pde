PImage sun ;
PImage earth ;
PImage moon ;
float a=0;

void setup (){
  
  size(600,600);
  sun = loadImage("img/sun.png");
  earth = loadImage("img/earth.png");
  moon = loadImage("img/moon.png");
  
}
void draw(){
  background(0);
  imageMode(CENTER);
  image(sun,width/2,height/2);
 
  float distance =dist(mouseX,height/2,0,height/2);
  float earthMove= map(distance,0,width,-PI,TWO_PI);
  
  float earthX= width/2+cos(earthMove)*200;
  float earthY=height/2+sin(earthMove)*200;
  image(earth,earthX,earthY);
  
  float moonX=earthX+cos(a)*50;
  float moonY=earthY+sin(a)*50;
  image(moon,moonX,moonY);
  a+=0.105;
  

//Global Variables
int appWidth, appHeight;
int reset, smallerDisplayDimension;
color whiteReset;
Boolean nightMode=false;
//
float eyeDiameter;
//
float imageX, imageY, imageWidth, imageHeight;
float imageX1, imageY1, imageWidth1, imageHeight1;
PImage pic;
PImage pic1;
void setup() 
{
  fullScreen();
  displaySetup();
  population();
  faceSetup();
}//End setup
//
void draw() 
{
  measleDraw();
  leftEyeDraw();
  rightEyeDraw();
  noseDraw();
  mouthDraw();
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program

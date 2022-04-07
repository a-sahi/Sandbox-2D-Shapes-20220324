//Global Variables
int appWidth, appHeight;
//
int reset, smallerDisplayDimension, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
//
float measleDiameter, measleRadius, measleX, measleY;
Boolean nightMode=false;
color measleColour, whiteReset;
float measleRectX, measleRectY, measleWidth, measleHeight;
//
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
  //Left Eye
  //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
  //Right Eye
  //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  //
  //Nose
  //rect(xNose2, yNose1, xNose3-xNose2, yNose3-yNose1);
  triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
  //
  //Mouth
  int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
  int mouthHeight = mouthOpen;
  //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //reset to 1 pixel
  //comparison rect() line only, no caps, no strokeWeight
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program

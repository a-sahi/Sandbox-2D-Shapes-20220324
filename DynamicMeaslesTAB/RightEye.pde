//Global Variables
float rightEyeX, rightEyeY;
//
void rightEyeDraw() {
  //Right Eye
  //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  fill(#3392F0);
  circle(rightEyeX, rightEyeY, eyeDiameter);
  fill(#000000);
  circle(rightEyeX, rightEyeY, eyeDiameter/2);
  fill(#FFFFFF);
}//End rightEyeDraw

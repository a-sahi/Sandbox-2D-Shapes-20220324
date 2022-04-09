//Global Variables
float leftEyeX, leftEyeY;
//
void leftEyeDraw() {
  //Left Eye
  //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  fill(#3392F0);
  circle(leftEyeX, leftEyeY, eyeDiameter);
  fill(#000000);
  circle(leftEyeX, leftEyeY, eyeDiameter/2);
  fill(#FFFFFF);
}//End leftEyeDraw

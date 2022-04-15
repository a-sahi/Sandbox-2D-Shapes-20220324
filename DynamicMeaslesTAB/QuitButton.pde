//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#FFFF00, purple=#FF00FF, buttonColour; //Notice NightMode Blue Values
//
void quitButtonSetupPopulation(int centerX, int centerY) { //ignore Parameter concept
  quitButtonX = 30; //1/4 on one-half, 1/4 on other half
  quitButtonY = centerY - appHeight*1/6;
  quitButtonWidth = appWidth*1/8;
  quitButtonHeight = appHeight*1/8;
}//End quitButtonSetup
//
void quitButtonDraw() {
  //Display Orientation Feedback, works better if feedback to CANVAS
  if ( displayOrientation==portrait) println ( displayOrientation ); //Portrait Display Orientation
  // Will need to rerun the appWidth & appHeight code here
  //(seperate void, 2nd reason to create subprograms is "copy and paste lines of code")
  //
  //Hover-Over effect
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonColour = #F0A2EB;
  } else {
    buttonColour = #F22CE5;
  }//End Hover-Over Effect
  //
  //Alternate verification that mouseX&Y is on the button
  println("X-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  println("Y-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
  
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(#000000);
  textSize(50);
  text("Quit", (quitButtonX+quitButtonWidth/4)+5, (quitButtonY+quitButtonHeight/2)+20);
  fill(whiteReset); //Not night mode compatible, must change
}//End quitButtonDraw
//
void quitButtonKeyPressed() {
  //Quit KeyBoard Button
  if ( key=='Q' || key=='q' ) exit(); //Key Board is separated on key-variables: key & keyCode
  //
}//End quitButtonKeyPressed
//
void quitButtonMousePressed () {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
}//End quitButtonMousePressed
//
//End Quit Button

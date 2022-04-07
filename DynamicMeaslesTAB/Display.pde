void displaySetup() {
  //Display Geometry
  //Landscape, not square or portrait
  println (width, height, displayWidth, displayHeight); //Verification of values
  appWidth = displayWidth;
  appHeight = displayHeight;
  println(appWidth, appHeight); //Canavas Flexibility
  //
  //Display Orientation
  //Purpose: a few comparisons of IFs to ID orientation (similar to image() aspect ratio calculations)
  //Computer Tells us the orientation, important for Cell Phone Orientation
  //-tell user specific orientation
  //if ( appWidth >= appWidth ) {println("Landscape or Square");} else {println("Portrait");}
  String Is="Landscape or Square", p="Portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth >= appHeight) ? Is : p; //Ternary Operator, repeats IF-ELSE
  println(DO, orientation); //Verification of value
  if ( orientation==p ) println(instruct);
  //With Strings, easier to print to console or canvas
  /* if ( orientation=="Landscape or Square" ) {
   //Empty IF
   } else { 
   println("Turn your phun"); //FUN
   }
   */
}//End displaySetup

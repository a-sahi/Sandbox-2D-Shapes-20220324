//Global Variables
float measleDiameter, measleRadius, measleX, measleY;
float measleRectX, measleRectY, measleWidth, measleHeight;
color measleColour;
//
void measleDraw() {
  //Measle
  measleDiameter = random( smallerDisplayDimension*1/100, smallerDisplayDimension*1/25); //Range of measle size: small=*1/100, large=4xbigger (*1/25)
  measleRadius = measleDiameter*1/2;
  measleX = random( faceX-(faceDiameter/2)-measleRadius, faceX+(faceDiameter/2)-measleRadius );
  measleY = random( faceY-(faceDiameter/2)-measleRadius, faceY+(faceDiameter/2)-measleRadius );
  nightMode=false; //Note: IF-ELSE is similar to ternary operator
  measleColour = ( nightMode==false ) ? color( 255, random(0, 50), random(120) ) : color( 255, random(0, 50), 0 ) ; //ternary operator for day:night
  whiteReset=#FFFFFF;
  //
  measleRectX = measleX-measleDiameter*1/2;
  measleRectY = measleY-measleDiameter*1/2;
  measleWidth = measleDiameter;
  measleHeight = measleDiameter;
  //rect( measleRectX, measleRectY, measleWidth, measleHeight );
  //random values given other variables (similar to button code)
  if(((measleX-faceX)*(measleX-faceX))+((measleY-faceY)*(measleY-faceY)) <((faceDiameter/2)*(faceDiameter/2)))
  {
  noStroke(); //Shape outline
  fill(measleColour); 
  ellipse( measleX, measleY, measleDiameter, measleDiameter ); 
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first colour (i.e. blackReset)
  //
  }
}//End measleDraw

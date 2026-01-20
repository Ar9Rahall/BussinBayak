/* Buttons
 - quitButton
 - DIVs
 - musicButtonShapes, 2-D Music Buttons
 - hoverOver_draw(), Hoverover for buttons, draw()
 - TBA
 */
//
void quitButton() {
  noLoop(); //Adjusts the exit of the program using finishing draw()
  exit(); //With noLoop(), exit happens here
  println("Final Line of mousePressed and finishes draw()");
}//End Quit Button
//
void DIVs() {
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
} //End DIVs
//
void musicButtonShapes() {
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
} // End Msuic Button Shapes
//
void quitButtonActive() {
  fill(quitBackgroundActivated);



  //AKWARD
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);


  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
} //End Quit Button Active
//
void quitButtonRegular() {
  fill(quitBackground);


  //AKWARD
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);



  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
} //End Quit Button Active
//
void playButtonActive() {
  fill(playColourBackgroundActivated);

  //AKWARD
  rect(playDivX, playDivY, playDivWidth, playDivHeight);



  fill(playColourSymbolActivated);


  //AKWARD
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);



  fill(resetBackground);
} // End Play Button Active
//
void playButtonReady() {
  fill(playColourBackground);


  //AKWARD
  rect(playDivX, playDivY, playDivWidth, playDivHeight);



  fill(playColourSymbol);

  //AKWARD
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);



  fill(resetBackground);
} // End Play Button Ready
//
void hoverOver_draw() {
  //Button HoverOver
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY &&mouseY<quitDivY+quitDivHeight ) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }//End Quit Button Hover Over
  if ( mouseX>playDivX && mouseX<playDivX+playDivWidth && mouseY>playDivY && mouseY<playDivY+playDivHeight ) {
    if ( playButton == false ) playButtonActive();
  } else {
    //Order of below creates optical illusion - switching colours
    playButtonReady();
    if ( playButton == true ) playButtonActive();
  }//End Play Button Hover Over
  //
} //End Hoverover, draw()
//
//End Buttons Subprogram

/* Text
 - Easy Text, default font, size
 - TBA
 */
//
void drawText() {
  textdraw();
  songTitle();
  //
} // End Draw Text
//
//CAUTION: if any other text in setup() executed, formatting is not defaulted
void easyTextQuitButton() {
  //Note: rect() starts top-right corner, text() starts bottom-right corner
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*1/2); //adjust ratios or decimals until working
} //End Easy Text
//
void textSetup() {
  /*Fonts from OS
   println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
   //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
   */
  fontSize = appHeight;
  fontSize = stringDivHeight;
  String harrington = "Harrington";
  titleFont = createFont(harrington, fontSize);
  //
  float fontSizeHarrington = 83.0;
  float harringtonAspectRatio = fontSizeHarrington / stringDivHeight;
  fontSize = stringDivHeight*harringtonAspectRatio;
  //
} //End Text Setup
//
void textdraw() {
  //NOTE: Only one Font
  textFont(titleFont, fontSize); //see variable note
  float constantDecrease = 0.99;
  int iWhile=0;
  while ( textWidth( playListMetaData[currentSong].title() ) > stringDivWidth ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease;
    textFont(titleFont, fontSize);
  } //End WHILE Error Check Text-wrap
  //println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth-textWidth( playListMetaData[currentSong].title() ), "\tUsing", constantDecrease*100+"%" );
} //End Text Draw
//
void songTitle() {
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  fill(titleInk); //Ink, hexidecimal copied from Color Selector
  text( songTitle, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
  fill(resetInk);
} //End Song Title
//
//End Subprogram Text

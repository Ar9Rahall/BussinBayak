/*Aspect Ratio: Bike Only Demonstration
- Old Man
*/
//
//Display
fullScreen(); // Landscape
size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\tFullScreendisplayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "height:"+height);
//
//Population
float imageDivX = appWidth*1/4;
float imageDivY = appHeight*1/10;
float imageDivWidth = appWidth*1/2;
float imageDivHeight = appHeight*4/5;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Lesson Dependancies Folder/Images/"; //**Akward
String bike = "bike";
String fileExtentionJPG = ".jpg" ;
String imagePathway1 = upArrow + folder + bike + fileExtentionJPG;
//println("Bike Pathway", imagePathway1);
//Image Loading & Aspect Ratio
PImage image1 = loadImage( imagePathway1 );
int imageWidth1 = 860; //Hardcoded
int imageHeight1 = 529; //Hardcoded
//
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );

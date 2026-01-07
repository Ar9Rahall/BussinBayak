/* Hearing Music and Sound Effects
 - Reading Code with CTRL-T & Braces
 */
//
//Library - Minim
//Reminder: activate the Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
void setup() {
  size(700, 500); //width //height
  //fullScreen(); //displayWidth //displayHeight
  int appWidth = width; //Best Practice
  int appHeight = height;
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program

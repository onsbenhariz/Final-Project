import ddf.minim.*; //<>//
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions 
AudioPlayer song; //creates a playlist
AudioMetaData SongMetaData1;
float xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false, drawThinButton=false, drawMidButton=false, drawThickButton=false, blackButton=false, whiteButton=false, grayButton=false, brownButton=false, redButton=false, orangeButton=false, yellowButton=false, greenButton=false, blueButton=false, purpleButton=false, violetButton=false, pinkButton=false;
color mud = color(219, 128, 97), black = color(0, 0, 0), white = color(255, 255, 255), gray = color(128, 128, 128), brown = color(150, 75, 0), red = color(255, 0, 0), orange = color(255, 165, 0), yellow = color(255, 255, 0), green = color(0, 255, 0), blue = color(0, 0, 255), purple = color(106, 13, 173), violet = color(215, 152, 247), pink = color(255, 192, 203);
color c1 = color(204, 153, 0);
PFont font;
String box1Title = "Brush Width";
String box2Title = " Brush Color", eraser = "Eraser", randombrush = "Random";
String box3Title = "Background Color", randombackground = "Random";
String box5Title = "Music"; 
String loopfunction = " plays forever if you click, to change this press keys 1-9 to choose number of repeats";
int brushWidth = 1;
float hex = #FFCC00;
float r=0, g=0, b=0;
float br, bg, bb;
//
void setup () 
{
  size(1200, 600); //Landscape (Portrait or Square)
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker

  println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) { //CANVAS in Display Checker
    //CANVAS Too Big
    appWidth = displayWidth;
    appHeight = displayHeight;
    println("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls="Landscape or Square", p="portraint", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth>=appHeight ) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populate a variable
  println( DO, orientation );
  if ( orientation==ls ) { //Test for chosen display orientation
    println("Good to Go");
  } else {
    appWidth *= 0; //asignment operator, works like appWidth=appWidth*0
    appHeight *= 0;
    println(instruct);
  }
  //
  populatingvariables();




  //Text Setup
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList);
  font = createFont ("Bookman Old Style", 48); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  //
  //
  rect( xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  //SONG STUFF
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage *
  song = minim.loadFile("goodday.mp3"); //able to pass absolute path, file name & extenstion, and URL *
  SongMetaData1 = song.getMetaData();
} //End setup
//
void draw () 
{

  strokeWeight(brushWidth);
  stroke(r, g, b);

  //BRUSH TOOL
  if (mousePressed && mouseX>xdrawingSurface && mouseX<xdrawingSurface+drawingSurfaceWidth && mouseY>ydrawingSurface && mouseY<ydrawingSurface+drawingSurfaceHeight)
    line (mouseX, mouseY, pmouseX, pmouseY);
  //END BRUSH TOOL


  //rect (xbox2, ybox2, box2Width, box2Height);
  rect( showcolorx, showcolory, showcolorWidthx, showcolorHeight);
  noStroke();
  rect (xboxTitle2, yboxTitle2, boxTitle2Width, boxTitle2Height);
  fill(black);
  rect ( xbox2black1, ybox2black1, box2SectionsWidth, box2SectionsHeight);
  stroke(0);
  strokeWeight(0);
  fill(white);
  rect ( xbox2white2, ybox2white2, box2SectionsWidth, box2SectionsHeight);
  fill(gray);
  rect ( xbox2gray3, ybox2gray3, box2SectionsWidth, box2SectionsHeight);
  fill(brown);
  rect ( xbox2brown4, ybox2brown4, box2SectionsWidth, box2SectionsHeight);
  fill(red);
  rect ( xbox2red5, ybox2red5, box2SectionsWidth, box2SectionsHeight);
  fill(orange);
  rect ( xbox2orange6, ybox2orange6, box2SectionsWidth, box2SectionsHeight);
  fill(yellow);
  rect ( xbox2yellow7, ybox2yellow7, box2SectionsWidth, box2SectionsHeight);
  fill(green);
  rect ( xbox2green8, ybox2green8, box2SectionsWidth, box2SectionsHeight);
  fill(blue);
  rect ( xbox2blue9, ybox2blue9, box2SectionsWidth, box2SectionsHeight);
  fill(purple);
  rect ( xbox2purple10, ybox2purple10, box2SectionsWidth, box2SectionsHeight);
  fill(violet);
  rect ( xbox2violet11, ybox2violet11, box2SectionsWidth, box2SectionsHeight);
  fill(pink);
  rect ( xbox2pink12, ybox2pink12, box2SectionsWidth, box2SectionsHeight);
  fill(white);
  rect(xbox2eraser, ybox2eraser, box2SectionsBottomButtonsWidth, box2SectionsBottomButtonsHeight);
  fill(white);
  rect(xbox2random, ybox2random, box2SectionsBottomButtonsWidth, box2SectionsBottomButtonsHeight);
  stroke(0);


  //COLORS
  if (mousePressed && mouseX>xbox2black1 && mouseX<xbox2black1+box2SectionsWidth && mouseY>ybox2black1 && mouseY<ybox2black1+box2SectionsHeight) {
    r = 0; 
    g = 0; 
    b = 0;
  }


  if (mousePressed && mouseX>xbox2white2 && mouseX<xbox2white2+box2SectionsWidth && mouseY>ybox2white2 && mouseY<ybox2white2+box2SectionsHeight) {
    r = 255; 
    g = 255; 
    b = 255;
  }


  if (mousePressed && mouseX>xbox2gray3 && mouseX<xbox2gray3+box2SectionsWidth && mouseY>ybox2gray3 && mouseY<ybox2gray3+box2SectionsHeight) {
    r = 128; 
    g = 128; 
    b = 128;
  }


  if (mousePressed && mouseX>xbox2brown4 && mouseX<xbox2brown4+box2SectionsWidth && mouseY>ybox2brown4 && mouseY<ybox2brown4+box2SectionsHeight) {
    r = 150; 
    g = 75; 
    b = 0;
  }


  if (mousePressed && mouseX>xbox2red5 && mouseX<xbox2red5+box2SectionsWidth && mouseY>ybox2red5 && mouseY<ybox2red5+box2SectionsHeight) {
    r = 255; 
    g = 0; 
    b = 0;
  }


  if (mousePressed && mouseX>xbox2orange6 && mouseX<xbox2orange6+box2SectionsWidth && mouseY>ybox2orange6 && mouseY<ybox2orange6+box2SectionsHeight) {
    r = 255; 
    g = 165; 
    b = 0;
  }


  if (mousePressed && mouseX>xbox2yellow7 && mouseX<xbox2yellow7+box2SectionsWidth && mouseY>ybox2yellow7 && mouseY<ybox2yellow7+box2SectionsHeight) {
    r = 255; 
    g = 255; 
    b = 0;
  }

  if (mousePressed && mouseX>xbox2green8 && mouseX<xbox2green8+box2SectionsWidth && mouseY>ybox2green8 && mouseY<ybox2green8+box2SectionsHeight) {
    r = 0; 
    g = 255; 
    b = 0;
  }


  if (mousePressed && mouseX>xbox2blue9 && mouseX<xbox2blue9 +box2SectionsWidth && mouseY>ybox2blue9  && mouseY<ybox2blue9 +box2SectionsHeight) {
    r = 0; 
    g = 0; 
    b = 255;
  }


  if (mousePressed && mouseX>xbox2purple10 && mouseX<xbox2purple10+box2SectionsWidth && mouseY>ybox2purple10 && mouseY<ybox2purple10+box2SectionsHeight) {
    r = 106; 
    g = 13; 
    b = 173;
  }


  if (mousePressed && mouseX>xbox2violet11 && mouseX<xbox2violet11+box2SectionsWidth && mouseY>ybox2violet11 && mouseY<ybox2violet11+box2SectionsHeight) {
    r = 215; 
    g = 152; 
    b = 247;
  }


  if (mousePressed && mouseX>xbox2pink12 && mouseX<xbox2pink12 +box2SectionsWidth && mouseY>ybox2pink12  && mouseY<ybox2pink12+box2SectionsHeight) {
    r = 255; 
    g = 192; 
    b = 203;
  }
  //END COLORS 

  //ERASER

  if (mousePressed && mouseX>xbox2eraser && mouseX<xbox2eraser+box2SectionsBottomButtonsWidth && mouseY>ybox2eraser  && mouseY<ybox2eraser+box2SectionsBottomButtonsHeight) {
    stroke(xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  //END ERASER
  // RANDOM
  if (mousePressed && mouseX>xbox2random && mouseX<xbox2random +box2SectionsBottomButtonsWidth && mouseY>ybox2random  && mouseY<ybox2random+box2SectionsBottomButtonsHeight) {
    r = random(255); 
    g = random(255);
    b = random(255);
  }
  //END RANDOM


  //SIDE BAR NUMBER 1
  strokeWeight (0);
  rect(xboxTop, yboxTop, boxTopWidth, boxTopHeight);//BOX 1
  rect(xboxTitle1, yboxTitle1, boxTitle1Width, boxTitle1Height); //TITLE
  //TEXT
  fill(mud);
  textAlign (CENTER, CENTER); 
  textFont(font, 25); //Change the number until it fits, largest font sizE
  text(box1Title, xboxTitle1, yboxTitle1, boxTitle1Width, boxTitle1Height);
  textFont(font, 20); //Change the number until it fits, largest font sizE
  text (eraser, xbox2eraser, ybox2eraser, box2SectionsBottomButtonsWidth, box2SectionsBottomButtonsHeight);
  text (randombrush, xbox2random, ybox2random, box2SectionsBottomButtonsWidth, box2SectionsBottomButtonsHeight);
  fill(white); //Will change the fill() on all shapes the second time repeated in draw()
  //

  //Images for line thickness  
  stroke(0);
  rect( xbox1Section1, ybox1Section1, box1SectionsWidth, box1SectionsHeight);//THIN
  strokeWeight(4);  // Default
  line(1040, 20, 1180, 20);
  strokeWeight(0);
  rect( xbox1Section2, ybox1Section2, box1SectionsWidth, box1SectionsHeight);//MID
  strokeWeight(16);  // Thicker
  line(1040, 60, 1180, 60);
  strokeWeight(0);
  rect( xbox1Section3, ybox1Section3, box1SectionsWidth, box1SectionsHeight);//THICK
  strokeWeight(30);  // Beastly
  line(1040, 100, 1180, 100);
  strokeWeight(0);
  //end images for line thickness 

  stroke(0);
  if (mousePressed && drawThinButton == true) {
    brushWidth = 4;
  }
  stroke(0);
  if (mousePressed && drawMidButton == true) {
    brushWidth = 16;
  }
  stroke(0);
  if (mousePressed && drawThickButton == true) {
    brushWidth = 30;
  }
  stroke(0);
  //BACKGROUND STUFF
  rect (xbox3, ybox3, box3Width, box3Height);
  rect(xboxTitle3, yboxTitle3, boxTitle3Width, boxTitle3Height);
  fill (red);
  rect(xbox3red1, ybox3red1, box3SectionsWidth, box3SectionsHeight);
  fill (orange);
  rect (xbox3orange2, ybox3orange2, box3SectionsWidth, box3SectionsHeight);
  fill (yellow);
  rect (xbox3yellow3, ybox3yellow3, box3SectionsWidth, box3SectionsHeight);
  fill (green);
  rect (xbox3green4, ybox3green4, box3SectionsWidth, box3SectionsHeight);
  fill (blue);
  rect (xbox3blue5, ybox3blue5, box3SectionsWidth, box3SectionsHeight);
  fill (violet);
  rect (xbox3violet6, ybox3violet6, box3SectionsWidth, box3SectionsHeight);
  fill (black);
  rect (xbox3black7, ybox3black7, box3SectionsWidth, box3SectionsHeight);
  fill(white);
  rect (xbox3white8, ybox3white8, box3SectionsWidth, box3SectionsHeight);
  fill(white);
  rect (xbox3random9, ybox3random9, box3SectionsWidth, box3SectionsHeight);
  //END BACKGROUND STUFF

  //SECTION FOUR
  rect(xbox4, ybox4, box4Width, box4Height);
  rect(xboxTitle4, yboxTitle4, boxTitle4Width, boxTitle4Height);
  //END SECTION FOUR
  //
  //SECTION FIVE
  rect(xbox5, ybox5, box5Width, box5Height);
  rect(xboxTitle5, yboxTitle5, boxTitle5Width, boxTitle5Height);
  rect(xbox5play1, ybox5play1, box5SectionsWidth, box5SectionsHeight);
  rect(xbox5pause2, ybox5pause2, box5SectionsWidth, box5SectionsHeight );
  rect(xbox5stop3, ybox5stop3, box5SectionsWidth, box5SectionsHeight );
  rect(xbox5loop4, ybox5loop4, box5SectionsWidth, box5SectionsHeight );
  rect(xbox5mute5, ybox5mute5, box5SectionsWidth, box5SectionsHeight);
  rect(xbox5skipback6, ybox5skipback6, box5SectionsWidth, box5SectionsHeight );
  rect(xbox5skipforward7, ybox5skipforward7, box5SectionsWidth, box5SectionsHeight );
  rect(xbox5quit8, ybox5quit8, box5SectionsWidth, box5SectionsHeight);
  //MUSIC

  if ( song.isLooping() && song.loopCount() !=-1) println("There are", song.loopCount(), "loops left.");
  if ( song.isLooping() && song.loopCount() ==-1) println("Looping Infintley");
  if  ( song.isPlaying() && !song.isLooping() ) println("Play Once");
  println("Song Position", song.position(), "Song Length", song.length() );
  println("Song Title", SongMetaData1.title() );
  println("Author", SongMetaData1.author() ); 
  println("Comment", SongMetaData1.comment() ); 




  //END SECTION FIVE

  //TEXT
  fill(mud);
  textAlign (CENTER, CENTER); 
  textFont(font, 25); //Change the number until it fits, largest font sizE
  text(box2Title, xboxTitle2, yboxTitle2, boxTitle2Width, boxTitle2Height);
  textFont(font, 18); //Change the number until it fits, largest font sizE
  text (box3Title, xboxTitle3, yboxTitle3, boxTitle3Width, boxTitle3Height);
  text (box5Title, xboxTitle5, yboxTitle5, boxTitle5Width, boxTitle5Height);
  textFont(font, 10); //Change the number until it fits, largest font sizE
  text (randombackground, xbox3random9, ybox3random9, box3SectionsWidth, box3SectionsHeight);
  if (mouseX>xbox5loop4 && mouseX<xbox5loop4+box5SectionsWidth && mouseY>ybox5loop4 && mouseY<ybox5loop4+box5SectionsHeight) {
    textAlign (CENTER, BOTTOM);
    textFont(font, 20); //Change the number until it fits, largest font sizE
    text (loopfunction, xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight );
    fill(white);
  }
  fill(white); //Will change the fill() on all shapes the second time repeated in draw()
  stroke(0);

  //
} //End draw
//

void keyPressed ()
{
  //Only press a number for this code below
  println(key);
  if ( key=='1') { //LOOP Function
    if (key=='1') println("Looping Once");
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int loopNum = int(keystr);
    song.loop(loopNum); //Parameter is Parameter is number of repeats
    //if
  }//End LOOP Functions
  //
}//End keyPressed
void mousePressed ()
{

  if (mouseX>xdrawingSurface && mouseX<xdrawingSurface+drawingSurfaceWidth && mouseY>ydrawingSurface && mouseY<ydrawingSurface+drawingSurfaceHeight) {
    if (draw == true) {
      draw = false;
    } else {
      draw = true;
    }
  }
  //COLORS

  //BACKGROUND COLORS
  if (mouseX>xbox3red1&& mouseX<xbox3red1 +box3SectionsWidth && mouseY>ybox3red1  && mouseY<ybox3red1+box3SectionsHeight) {
    fill (red);
    rect( xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>xbox3orange2&& mouseX<xbox3orange2 +box3SectionsWidth && mouseY>ybox3orange2  && mouseY<ybox3orange2+box3SectionsHeight) {
    fill (orange);
    rect( xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>xbox3yellow3&& mouseX<xbox3yellow3 +box3SectionsWidth && mouseY>ybox3yellow3  && mouseY<ybox3yellow3+box3SectionsHeight) {
    fill (yellow);
    rect( xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>xbox3green4 && mouseX<xbox3green4 +box3SectionsWidth && mouseY>ybox3green4  && mouseY<ybox3green4+box3SectionsHeight) {
    fill (green);
    rect( xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>xbox3blue5 && mouseX<xbox3blue5 +box3SectionsWidth && mouseY>ybox3blue5  && mouseY<ybox3blue5+box3SectionsHeight) {
    fill (blue);
    rect( xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>xbox3violet6 && mouseX<xbox3violet6 +box3SectionsWidth && mouseY>ybox3violet6  && mouseY<ybox3violet6 +box3SectionsHeight) {
    fill (violet);
    rect( xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>xbox3black7 && mouseX<xbox3black7 +box3SectionsWidth && mouseY>ybox3black7  && mouseY<ybox3black7+box3SectionsHeight) {
    fill (black);
    rect( xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>xbox3white8 && mouseX<xbox3white8 +box3SectionsWidth && mouseY>ybox3white8  && mouseY<ybox3white8+box3SectionsHeight) {
    fill (white);
    rect( xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight);
  }
  if (mouseX>xbox3random9&& mouseX<xbox3random9 +box3SectionsWidth && mouseY>ybox3random9  && mouseY<ybox3random9+box3SectionsHeight) {
    fill (random(255), random(255), random(255));
    rect( xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight);
  }

  blackButton =false;
  if  (mouseX>xbox2black1 && mouseX<xbox2black1+box2SectionsWidth && mouseY>ybox2black1 && mouseY<ybox2black1+box2SectionsHeight); 
  blackButton = true;
  whiteButton =false;
  if  (mousePressed && mouseX>xbox2white2 && mouseX<xbox2white2+box2SectionsWidth && mouseY>ybox2white2 && mouseY<ybox2white2+box2SectionsHeight); 
  whiteButton = true;
  grayButton =false;
  if  (mouseX>xbox2gray3 && mouseX<xbox2gray3+box2SectionsWidth && mouseY>ybox2gray3 && mouseY<ybox2gray3+box2SectionsHeight); 
  grayButton = true;
  brownButton =false;
  if  (mouseX>xbox2brown4 && mouseX<xbox2brown4+box2SectionsWidth && mouseY>ybox2brown4 && mouseY<ybox2brown4+box2SectionsHeight); 
  brownButton = true;
  redButton =false;
  if  (mouseX>xbox2red5 && mouseX<xbox2red5+box2SectionsWidth && mouseY>ybox2red5 && mouseY<ybox2red5+box2SectionsHeight); 
  redButton = true;
  orangeButton =false;
  if  (mouseX>xbox2orange6 && mouseX<xbox2orange6+box2SectionsWidth && mouseY>ybox2orange6 && mouseY<ybox2orange6+box2SectionsHeight); 
  orangeButton = true;
  yellowButton =false;
  if  (mouseX>xbox2yellow7 && mouseX<xbox2yellow7+box2SectionsWidth && mouseY>ybox2yellow7 && mouseY<ybox2yellow7+box2SectionsHeight); 
  yellowButton = true;
  greenButton =false;
  if  (mouseX>xbox2green8 && mouseX<xbox2green8+box2SectionsWidth && mouseY>ybox2green8 && mouseY<ybox2green8+box2SectionsHeight); 
  greenButton = true;
  blueButton =false;
  if  (mouseX>xbox2blue9 && mouseX<xbox2blue9 +box2SectionsWidth && mouseY>ybox2blue9  && mouseY<ybox2blue9 +box2SectionsHeight); 
  blueButton = true;
  purpleButton =false;
  if  (mouseX>xbox2purple10 && mouseX<xbox2purple10+box2SectionsWidth && mouseY>ybox2purple10 && mouseY<ybox2purple10+box2SectionsHeight); 
  purpleButton = true;
  violetButton =false;
  if  (mouseX>xbox2violet11 && mouseX<xbox2violet11+box2SectionsWidth && mouseY>ybox2violet11 && mouseY<ybox2violet11+box2SectionsHeight); 
  violetButton = true;
  pinkButton =false;
  if  (mouseX>xbox2pink12 && mouseX<xbox2pink12 +box2SectionsWidth && mouseY>ybox2pink12  && mouseY<ybox2pink12+box2SectionsHeight); 
  pinkButton = true;

  //END COLORS

  drawThinButton = false;
  if (mouseX>xbox1Section1 && mouseX<xbox1Section1+box1SectionsWidth && mouseY>ybox1Section1 && mouseY<ybox1Section1+box1SectionsHeight) drawThinButton = true;
  drawMidButton = false;
  if (mouseX>xbox1Section2 && mouseX<xbox1Section2+box1SectionsWidth && mouseY>ybox1Section2 && mouseY<ybox1Section2+box1SectionsHeight) drawMidButton = true;
  drawThickButton = false;
  if (mouseX>xbox1Section3 && mouseX<xbox1Section3+box1SectionsWidth && mouseY>ybox1Section3 && mouseY<ybox1Section3+box1SectionsHeight) drawThickButton = true;





  //First Play Button
  if ( mouseX>xbox5play1 && mouseX<xbox5play1+box5SectionsWidth && mouseY>ybox5play1 && mouseY<ybox5play1+box5SectionsHeight) song.play(); //Parameter is milli-seconds from start of audio file to start playing //play button
  //
  //Alternate Play Button, as a finite loop() && infinite loop()
  if (mouseX>xbox5mute5 && mouseX<xbox5mute5+box5SectionsWidth && mouseY>ybox5mute5 && mouseY<ybox5mute5+box5SectionsHeight) {//Mute Button
    if (song.isMuted() ) {
      song.unmute();
    } else {
      song.mute();
    }
  }//End Mute Button
  //
  if (mouseX>xbox5skipforward7 && mouseX<xbox5skipforward7+box5SectionsWidth && mouseY>ybox5skipforward7 && mouseY<ybox5skipforward7+box5SectionsHeight) song.skip(1000); //skip forward 1 second (1000 miliseconds)
  if (mouseX>xbox5skipback6 && mouseX<xbox5skipback6+box5SectionsWidth && mouseY>ybox5skipback6 && mouseY<ybox5skipback6+box5SectionsHeight) song.skip(-1000); //skip backwards 1 second (1000 miliseconds);
  //
  if (mouseX>xbox5stop3 && mouseX<xbox5stop3+box5SectionsWidth && mouseY>ybox5stop3 && mouseY<ybox5stop3+box5SectionsHeight) {//STOP
    if (song.isPlaying ()) {
      song.pause();
      song.rewind();
    } else { //Song is not playing
      song.rewind();
    }
  }//End STOP Button
  //
  if (mouseX>xbox5pause2 && mouseX<xbox5pause2+box5SectionsWidth && mouseY>ybox5pause2 && mouseY<ybox5pause2+box5SectionsHeight) {//PAUSE Button
    if (song.isPlaying() ) {
      song.pause();
    } else if (song.position() >= song.length() - song.length()*1/5) {
      song.rewind();
      song.play();
    } else {
      song.play();
    }
  }//End PAUSE

  /*int loopNum3 = 2; //Local variable plays once and loops twice
   if ( key=='l' || key=='L') song1.loop(loopNum3); //Parameter is Parameter is number of repeats// loop button
   */

  if ( mouseX>xbox5loop4 && mouseX<xbox5loop4+box5SectionsWidth && mouseY>ybox5loop4 && mouseY<ybox5loop4+box5SectionsHeight) song.loop(); //Infinite Loop, no parameter OR -1



















  //End drawing tools
} //End mousePressed
//
//End MAIN program
//DRAWING BRUSH
//ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
//END DRAWING BRUSH

/* if (mousePressed && pinkButton ==true) {
 r = 255; 
 g = 192; 
 b = 203;
 }
 */

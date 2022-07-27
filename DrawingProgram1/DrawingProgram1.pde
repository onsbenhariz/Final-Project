import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
float xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false, drawThinButton=false, drawMidButton=false, drawThickButton=false, blackButton=false, whiteButton=false, grayButton=false, brownButton=false, redButton=false, orangeButton=false, yellowButton=false, greenButton=false, blueButton=false, purpleButton=false, violetButton=false, pinkButton=false;
color mud = color(219, 128, 97), black = color(0, 0, 0), white = color(255, 255, 255), gray = color(128, 128, 128), brown = color(150, 75, 0), red = color(255, 0, 0), orange = color(255, 165, 0), yellow = color(255, 255, 0), green = color(0, 255, 0), blue = color(0, 0, 255), purple = color(106, 13, 173), violet = color(215, 152, 247), pink = color(255, 192, 203);
color c1 = color(204, 153, 0);
PFont font;
String box1Title = "Brush Width";
String box2Title = " Brush Color";
int brushWidth = 1;
float hex = #FFCC00;
float r=0, g=0, b=0;
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
  rect (xboxTitle2, yboxTitle2, boxTitle2Width, boxTitle2Height);
  stroke(0);
  fill(black);
  rect ( xbox2black1, ybox2black1, box2SectionsWidth, box2SectionsHeight);
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

 











  //SIDE BAR NUMBER 1
  strokeWeight (0);
  rect(xboxTop, yboxTop, boxTopWidth, boxTopHeight);//BOX 1
  rect(xboxTitle1, yboxTitle1, boxTitle1Width, boxTitle1Height); //TITLE
  //TEXT
  fill(mud);
  textAlign (CENTER, CENTER); 
  textFont(font, 25); //Change the number until it fits, largest font sizE
  text(box1Title, xboxTitle1, yboxTitle1, boxTitle1Width, boxTitle1Height);
  fill(white); //Will change the fill() on all shapes the second time repeated in draw()
  //


  stroke(0);
  rect( xbox1Section1, ybox1Section1, box1SectionsWidth, box1SectionsHeight);//THIN
  stroke(0);
  rect( xbox1Section2, ybox1Section2, box1SectionsWidth, box1SectionsHeight);//MID
  stroke(0);
  rect( xbox1Section3, ybox1Section3, box1SectionsWidth, box1SectionsHeight);//THICK


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
    brushWidth = 40;
  }
  stroke(0);




  //TEXT
  fill(mud);
  textAlign (CENTER, CENTER); 
  textFont(font, 25); //Change the number until it fits, largest font sizE
  text(box2Title, xboxTitle2, yboxTitle2, boxTitle2Width, boxTitle2Height);
  fill(white); //Will change the fill() on all shapes the second time repeated in draw()
  stroke(0);
  //
} //End draw
//

//End mouseDragged
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

  //End drawing tools
} //End mousePressed
//
//End MAIN program
//DRAWING BRUSH
//ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
//END DRAWING BRUSH

/* if (mousePressed && pinkButton ==true) { //<>//
    r = 255; 
    g = 192; 
    b = 203;
  }
*/
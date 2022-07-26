import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
float xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false, drawthin=false, drawmid=false, drawthick=false;
color mud=#DB8061, white=#FFFFFF;
PFont font;
String box1Title ="Brush Width";
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

  //DRAWING BRUSH
  //ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
  //END DRAWING BRUSH 

  //SIDE BAR NUMBER 1
  rect(xboxTop, yboxTop, boxTopWidth, boxTopHeight);//BOX 1
  rect(xboxTitle1, yboxTitle1, boxTitle1Width, boxTitle1Height); //TITLE
  //TEXT
  fill(mud);
  textAlign (CENTER, CENTER); 
  textFont(font, 25); //Change the number until it fits, largest font sizE
  text(box1Title, xboxTitle1, yboxTitle1, boxTitle1Width, boxTitle1Height);
  fill(white); //Will change the fill() on all shapes the second time repeated in draw()
  //


  rect( xbox1Section1, ybox1Section1, box1SectionsWidth, box1SectionsHeight);//THIN


 if (mousePressed && mouseX>xdrawingSurface && mouseX<xdrawingSurface+drawingSurfaceWidth && mouseY>ydrawingSurface && mouseY<ydrawingSurface+drawingSurfaceHeight)
     line (mouseX, mouseY, pmouseX, pmouseY); 

  if ( drawthin== true && mouseX>xdrawingSurface && mouseX<xdrawingSurface+drawingSurfaceWidth && mouseY>ydrawingSurface && mouseY<ydrawingSurface+drawingSurfaceHeight) line (mouseX, mouseY, pmouseX, pmouseY); 




  rect( xbox1Section2, ybox1Section2, box1SectionsWidth, box1SectionsHeight);//MID
  if (drawmid == true && mouseX>xdrawingSurface && mouseX<xdrawingSurface+drawingSurfaceWidth && mouseY>ydrawingSurface && mouseY<ydrawingSurface+drawingSurfaceHeight ) {
    strokeWeight (16);
  }
  rect( xbox1Section3, ybox1Section3, box1SectionsWidth, box1SectionsHeight);//THICK
  if (drawthick == true && mouseX>xdrawingSurface && mouseX<xdrawingSurface+drawingSurfaceWidth && mouseY>ydrawingSurface && mouseY<ydrawingSurface+drawingSurfaceHeight ) {
    strokeWeight (40);
  }
  //END SIDE BAR NUMBER 1
  //
  //SIDE BAR NUMBER 2
  rect (xbox2, ybox2, box2Width, box2Height);
} //End draw
//

//End mouseDragged
void mousePressed ()
{


  if (drawthin= true);
  {
    if (mouseX>xdrawingSurface && mouseX<xdrawingSurface+drawingSurfaceWidth && mouseY>ydrawingSurface && mouseY<ydrawingSurface+drawingSurfaceHeight) {
      if (draw == true) {
        draw = false;
      } else {
        draw = true;
      }
    }
  }


  drawthin = false;
  if (mouseX>xbox1Section1 && mouseX<xbox1Section1+box1SectionsWidth && mouseY>ybox1Section1 && mouseY<ybox1Section1+box1SectionsHeight) drawthin = true;
  drawmid = false;
  if (mouseX>xbox1Section2 && mouseX<xbox1Section2+box1SectionsWidth && mouseY>ybox1Section2 && mouseY<ybox1Section2+box1SectionsHeight) drawmid = true;
  drawthick = false;
  if (mouseX>xbox1Section3 && mouseX<xbox1Section3+box1SectionsWidth && mouseY>ybox1Section3 && mouseY<ybox1Section3+box1SectionsHeight) drawthick = true;

  //End drawing tools
} //End mousePressed
//
//End MAIN program

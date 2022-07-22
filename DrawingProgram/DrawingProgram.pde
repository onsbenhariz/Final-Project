import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
float xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false;
//
void setup () 
{
  //Display Checker
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(1000,600); //Landscape (Portrait or Square)
  //
  //Population:
  xdrawingSurface = width*0;
  ydrawingSurface = height*0;
  drawingSurfaceWidth = width*3/4 ;
  drawingSurfaceHeight = height*1;
  drawingDiameter = width*1/100;
  
  //
  rect( xdrawingSurface, ydrawingSurface, drawingSurfaceWidth, drawingSurfaceHeight);
  //
} //End setup
//
void draw () 
{
  ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
  if (draw == true && mouseX>xdrawingSurface && mouseX<xdrawingSurface+drawingSurfaceWidth && mouseY>ydrawingSurface && mouseY<ydrawingSurface+drawingSurfaceHeight ) line (mouseX, mouseY, pmouseX, pmouseY); 
} //End draw
//
void mousePressed ()
{
  if (mouseX>xdrawingSurface && mouseX<xdrawingSurface+drawingSurfaceWidth && mouseY>ydrawingSurface && mouseY<ydrawingSurface+drawingSurfaceHeight) draw=true;
   if (draw == true) {
     draw = false;
   } else {
     draw = true;
   }
 //End drawing tools
} //End mousePressed
//
//End MAIN program

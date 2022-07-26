float xboxTop, yboxTop, boxTopWidth, boxTopHeight;
float xboxTitle1, yboxTitle1, boxTitle1Width, boxTitle1Height;
float  xbox1Section1, ybox1Section1, xbox1Section2, ybox1Section2, xbox1Section3, ybox1Section3, box1SectionsWidth, box1SectionsHeight;
float xbox2, ybox2, box2Width, box2Height;





void populatingvariables() 
{
  //Population:
  int appWidth = width;
  int appHeight = height;
  int xborder = appWidth*3/4;
//DRAWING SURFACE
  xdrawingSurface = appWidth*0;
  ydrawingSurface = appHeight*0;
  drawingSurfaceWidth = appWidth*3/4 ;
  drawingSurfaceHeight = appHeight*1;
//END DRAWING SURFACE

drawingDiameter = appWidth*1/100;
//RECTS
  xboxTop = xborder;
  yboxTop = appHeight*0;
  boxTopWidth = appWidth*1/4;
  boxTopHeight = appHeight*1/5;
  //
     xboxTitle1 = xborder;
     yboxTitle1 = appHeight*0;
     boxTitle1Width = boxTopWidth*4/10;
     boxTitle1Height = boxTopHeight;
     //
        xbox1Section1 = appWidth*3.4/4;
        ybox1Section1 = appHeight*0;
        xbox1Section2 = appWidth*3.4/4;
        ybox1Section2 = boxTopHeight*1/3;
        xbox1Section3 = appWidth*3.4/4;
        ybox1Section3 = boxTopHeight*2/3;
        box1SectionsWidth = boxTopWidth*6/10;
        box1SectionsHeight = boxTopHeight*1/3;
  
  xbox2 = xborder ;
  ybox2 = appHeight*1/5;
  box2Width = appWidth*1/4;
  box2Height = appHeight*1/5;
//END RECTS

  
}//End PopulatingVariables

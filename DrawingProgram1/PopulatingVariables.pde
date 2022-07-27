//SECTION ONE
float xboxTop, yboxTop, boxTopWidth, boxTopHeight;
float xboxTitle1, yboxTitle1, boxTitle1Width, boxTitle1Height;
float  xbox1Section1, ybox1Section1, xbox1Section2, ybox1Section2, xbox1Section3, ybox1Section3, box1SectionsWidth, box1SectionsHeight;
//END SECTION  ONE
//
//SECTION TWO
float xbox2, ybox2, box2Width, box2Height;
float xboxTitle2, yboxTitle2, boxTitle2Width, boxTitle2Height;
float xbox2black1, ybox2black1, xbox2white2, ybox2white2, xbox2gray3, ybox2gray3, xbox2brown4, ybox2brown4, xbox2red5, ybox2red5, xbox2orange6, ybox2orange6, xbox2yellow7, ybox2yellow7, xbox2green8, ybox2green8, xbox2blue9, ybox2blue9, xbox2purple10, ybox2purple10, xbox2violet11, ybox2violet11, xbox2pink12, ybox2pink12, box2SectionsWidth, box2SectionsHeight;
float xbox2eraser,ybox2eraser, xbox2random, ybox2random, box2SectionsBottomButtonsWidth, box2SectionsBottomButtonsHeight;

//END SECTION TWO




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
 //Section TWO
  xbox2 = xborder ;
  ybox2 = appHeight*1/5;
  box2Width = appWidth*1/4;
  box2Height = appHeight*1/5;
  //   
     xboxTitle2 = xborder;
     yboxTitle2 = ybox2;
     boxTitle2Width = box2Width*4/10;
     boxTitle2Height = box2Height;
     // 
        //
        xbox2black1 = appWidth*3.4/4;
        ybox2black1 = box2Height;
        xbox2white2 = appWidth*3.55/4;
        ybox2white2 = box2Height;
        xbox2gray3 = appWidth*3.7/4;
        ybox2gray3 = box2Height;
        xbox2brown4 = appWidth*3.85/4;
        ybox2brown4 = box2Height;
        xbox2red5 = appWidth*3.4/4;
        ybox2red5 = box2Height + box2Height*1/4;
        xbox2orange6 = appWidth*3.55/4;
        ybox2orange6 = box2Height + box2Height*1/4 ;
        xbox2yellow7 = appWidth*3.7/4;
        ybox2yellow7 = box2Height + box2Height*1/4 ;
        xbox2green8 = appWidth*3.85/4;
        ybox2green8 = box2Height + box2Height*1/4;
        xbox2blue9 = appWidth*3.4/4;             
        ybox2blue9 = box2Height + box2Height*2/4;
        xbox2purple10 = appWidth*3.55/4 ;
        ybox2purple10 = box2Height + box2Height*2/4;
        xbox2violet11 = appWidth*3.7/4;
        ybox2violet11 = box2Height + box2Height*2/4;
        xbox2pink12 = appWidth*3.85/4;
        ybox2pink12 = box2Height + box2Height*2/4;
        box2SectionsWidth = box2Width*1.5/10;
        box2SectionsHeight = box2Height*1/4;
        //
        xbox2eraser = appWidth*3.4/4;
        ybox2eraser = box2Height + box2Height*3/4;
        xbox2random = appWidth*3.7/4;
        ybox2random = box2Height + box2Height*3/4;
        box2SectionsBottomButtonsWidth = box2Width*3/10;
        box2SectionsBottomButtonsHeight = box2Height*1/4;

        

//END RECTS

  
}//End PopulatingVariables

//SECTION ONE

color background;
float xboxTop, yboxTop, boxTopWidth, boxTopHeight;
float xboxTitle1, yboxTitle1, boxTitle1Width, boxTitle1Height;
float  xbox1Section1, ybox1Section1, xbox1Section2, ybox1Section2, xbox1Section3, ybox1Section3, box1SectionsWidth, box1SectionsHeight;
//END SECTION  ONE
//
//SECTION TWO
float xbox2, ybox2, box2Width, box2Height;
float xboxTitle2, yboxTitle2, boxTitle2Width, boxTitle2Height;
float showcolorx, showcolory, showcolorWidthx, showcolorHeight;
float xbox2black1, ybox2black1, xbox2white2, ybox2white2, xbox2gray3, ybox2gray3, xbox2brown4, ybox2brown4, xbox2red5, ybox2red5, xbox2orange6, ybox2orange6, xbox2yellow7, ybox2yellow7, xbox2green8, ybox2green8, xbox2blue9, ybox2blue9, xbox2purple10, ybox2purple10, xbox2violet11, ybox2violet11, xbox2pink12, ybox2pink12, box2SectionsWidth, box2SectionsHeight;
float xbox2eraser,ybox2eraser, xbox2random, ybox2random, box2SectionsBottomButtonsWidth, box2SectionsBottomButtonsHeight;
//END SECTION TWO
//
//SECTION THREE
float xbox3, ybox3, box3Width, box3Height ;
float xboxTitle3, yboxTitle3, boxTitle3Width, boxTitle3Height;
float xbox3red1, ybox3red1, xbox3orange2, ybox3orange2, xbox3yellow3, ybox3yellow3, xbox3green4, ybox3green4, xbox3blue5, ybox3blue5, xbox3violet6, ybox3violet6, xbox3black7, ybox3black7, xbox3white8, ybox3white8, xbox3random9, ybox3random9, box3SectionsWidth, box3SectionsHeight;
//END SECTION THREE
//
//SECTION FOUR
float xbox4, ybox4, box4Width, box4Height ;
float xboxTitle4, yboxTitle4, boxTitle4Width, boxTitle4Height;
//END SECTION FOUR
//
//SECTION FIVE
float xbox5, ybox5, box5Width, box5Height ;
float xboxTitle5, yboxTitle5, boxTitle5Width, boxTitle5Height;
float xbox5play1, ybox5play1, xbox5pause2, ybox5pause2, xbox5stop3, ybox5stop3, xbox5loop4, ybox5loop4, xbox5mute5, ybox5mute5, xbox5skipback6, ybox5skipback6, xbox5skipforward7, ybox5skipforward7, xbox5quit8, ybox5quit8, box5SectionsWidth, box5SectionsHeight;
//END SECTION FIVE



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
     showcolorx = xborder;
     showcolory = appHeight*1.25/5;
     showcolorWidthx = appWidth *1/20;
     showcolorHeight = appHeight*1/20;
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
///SECTION 3
  xbox3 = xborder ;
  ybox3 = appHeight*2/5;
  box3Width = appWidth*1/4;
  box3Height = appHeight*1/5;
  //   
     xboxTitle3 = xborder;
     yboxTitle3 = ybox3;
     boxTitle3Width = box3Width*4/10;
     boxTitle3Height = appHeight*1/5;  
     //
        xbox3red1 = appWidth*3.4/4;
        ybox3red1 = ybox3;
        xbox3orange2 = appWidth*3.6/4;
        ybox3orange2 = ybox3;
        xbox3yellow3 = appWidth*3.8/4;
        ybox3yellow3 = ybox3;
        xbox3green4 = appWidth*3.4/4;
        ybox3green4 = ybox3 + box3Height*1/3;
        xbox3blue5 = appWidth*3.6/4;
        ybox3blue5 = ybox3 + box3Height*1/3;
        xbox3violet6 = appWidth*3.8/4;
        ybox3violet6 = ybox3 + box3Height*1/3;
        xbox3black7 = appWidth*3.4/4;
        ybox3black7 = ybox3 + box3Height*2/3;
        xbox3white8 = appWidth*3.6/4;
        ybox3white8 = ybox3 + box3Height*2/3;
        xbox3random9 = appWidth*3.8/4;
        ybox3random9 = ybox3 + box3Height*2/3;
        box3SectionsWidth = box3Width*2/10;
        box3SectionsHeight = box3Height*1/3; 
//END SECTION THREE
//
//SECTION FOUR
  xbox4 = xborder ;
  ybox4 = appHeight*3/5;
  box4Width = appWidth*1/4;
  box4Height = appHeight*1/5;
  //   
     xboxTitle4 = xborder;
     yboxTitle4 = ybox4;
     boxTitle4Width = box3Width*4/10;
     boxTitle4Height = appHeight*1/5;
  
//END SECTION FOUR
//
//SECTION 5 
  xbox5 = xborder ;
  ybox5 = appHeight*4/5;
  box5Width = appWidth*1/4;
  box5Height = appHeight*1/5;
  //   
     xboxTitle5 = xborder;
     yboxTitle5 = ybox5;
     boxTitle5Width = box3Width*4/10;
     boxTitle5Height = appHeight*1/5;
     //
        xbox5play1 = appWidth*3.4/4;
        ybox5play1 = ybox5;
        xbox5pause2 = appWidth*3.55/4;
        ybox5pause2 = ybox5;
        xbox5stop3 = appWidth*3.7/4;
        ybox5stop3 = ybox5;
        xbox5loop4 = appWidth*3.85/4;
        ybox5loop4 = ybox5;
        xbox5mute5 = appWidth*3.4/4;
        ybox5mute5 = ybox5 + box5Height*1/2;
        xbox5skipback6 = appWidth*3.55/4;
        ybox5skipback6 = ybox5 + box5Height*1/2;
        xbox5skipforward7 = appWidth*3.7/4;
        ybox5skipforward7 = ybox5 + box5Height*1/2;
        xbox5quit8 = appWidth*3.85/4;
        ybox5quit8 = ybox5 + box5Height*1/2;
        box5SectionsWidth = box5Width*1.5/10;
        box5SectionsHeight = box5Height*1/2; 
        
//END SECTION FIVE play,pause, stop, loop,mute, skip farword, skip back,




//END RECTS

  
}//End PopulatingVariables

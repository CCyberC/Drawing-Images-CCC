//Global Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0;
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
float pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
color red=#FF0000;
//
void setup() 
{
  fullScreen(); //teacher is using: size(900,680); use displayWidth and displayHeight and not width and height
  //Teacher is using Landscape Presentation, not square or portrait
  //
  //Populating Variables
  pic1 = loadImage("maxresdefault.jpg"); //Dimensions: width, height: 1280 by 720
  pic2 = loadImage("601becd357e76-png__700__700.jpg"); //Dimensions: width, height: 700 by 368
  //
  //Aspect Ratio Calculations
  int pic1Width = 1280;
  int pic1Height = 720;
  int pic2Width = 700;
  int pic2Height = 368;
  //
  //Choosing larger image dimension
  if ( pic1Width >= pic1Height ) { //ID Larger Dimension: Landscape and Square
    largerPic1Dimension = pic1Width;
    smallerPic1Dimension = pic1Height;
    widthPic1Larger = true;
  } else { //ID Larger Dimension: Portrait mode
    largerPic1Dimension = pic1Height;
    smallerPic1Dimension = pic1Width;
    heightPic1Larger = true;
  } //End pic1 larger dimension ID
  //
  if ( pic2Width >= pic2Height) {
    largerPic2Dimension = pic2Width;
    smallerPic2Dimension = pic2Height;
    widthPic2Larger = true;
  } else { //ID Larger Dimension: Portrait mode
    largerPic2Dimension = pic2Height;
    smallerPic2Dimension = pic2Width;
    heightPic2Larger = true;
  } //End pic2 larger dimension ID
  println (smallerPic1Dimension, largerPic1Dimension, smallerPic2Dimension, largerPic2Dimension); //Verifying Variable Details (ID Larger Dimension)
  //
  //Calculating Aspect Ratios
  // Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
  if ( widthPic1Larger == true ) imageWidthRatioPic1 = float (largerPic1Dimension) / float (largerPic1Dimension);
  if ( widthPic1Larger == true ) imageHeightRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
  if ( heightPic1Larger == true ) imageWidthRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
  if ( heightPic1Larger == true ) imageHeightRatioPic1 = float (largerPic1Dimension) / float (largerPic1Dimension);
  if ( widthPic2Larger == true ) imageWidthRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
  if ( widthPic2Larger == true ) imageHeightRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
  if ( heightPic2Larger == true ) imageWidthRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
  if ( heightPic2Larger == true ) imageHeightRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
  println(imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2);
  //
  //Use ratios to change the image width and height properties
  //**See below to Specific Image Properties of Image and Rectangle Variables
  //
  //
  rectXPic1 = displayWidth*1/4; 
  rectYPic1 = displayHeight*0; 
  rectWidthPic1 = displayWidth*1/2; 
  rectHeightPic1 = displayHeight*1/2;
  rectXPic2 = displayWidth*1/4; 
  rectYPic2 = displayHeight*1/2; 
  rectWidthPic2 = displayWidth*4/8; 
  rectHeightPic2 = displayHeight*1/2;
  //
  // Final Aspect Ratio Calculations
  pic1WidthAdjusted = rectWidthPic1 * imageWidthRatioPic1;
  pic1HeightAdjusted = rectHeightPic1 * imageHeightRatioPic1;
  pic2WidthAdjusted = rectWidthPic2 * imageWidthRatioPic2;
  pic2HeightAdjusted = rectHeightPic2 * imageHeightRatioPic2;
  println (pic1Width, pic1Height, pic2Width, pic2Height);
  println (pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted);
}//End setup
//
void draw() 
{ //Note: DRAW Loop repeats 60 times per second, static images should be in SETUP, "system resources"
  imageDraw();
  //Empty DRAW Loop, must be present for JAVA Compiler
}//End draw
//
void keyPressed() 
{
}//End keyPressed
//
void mousePressed() 
{
}//End mousePressed

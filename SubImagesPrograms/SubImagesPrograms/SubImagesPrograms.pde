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
  populatingVariables();
  //
  imageDraw();
}//End setup
//
void draw() 
{ //Note: DRAW Loop repeats 60 times per second, static images should be in SETUP, "system resources"
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

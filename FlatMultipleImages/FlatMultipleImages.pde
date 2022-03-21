//Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
//
//Geometry
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
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0;
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
//
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
// Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
if ( widthPic1Larger == true ) imageWidthRatioPic1 = float (largerPic1Dimension) / float (largerPic1Dimension);
if ( widthPic1Larger == true ) imageHeightRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
if ( heightPic1Larger == true ) imageWidthRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
if ( heightPic1Larger == true ) imageHeightRatioPic1 = float (largerPic1Dimension / float (largerPic1Dimension);
if ( widthPic2Larger == true ) imageWidthRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
if ( widthPic2Larger == true ) imageHeightRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
if ( heightPic2Larger == true ) imageWidthRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
if ( heightPic2Larger == true ) imageHeightRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
println(imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2);
//
rectXPic1 = displayWidth*1/4; 
rectYPic1 = displayHeight*0; 
rectWidthPic1 = displayWidth*1/2; 
rectHeightPic1 = displayHeight*1/2;
rectXPic2 = displayWidth*1/8; 
rectYPic2 = displayHeight*1/2; 
rectWidthPic2 = displayWidth*6/8; 
rectHeightPic2 = displayHeight*1/2;
//
//Rectangle Layout & Image Printing on Canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation
image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);

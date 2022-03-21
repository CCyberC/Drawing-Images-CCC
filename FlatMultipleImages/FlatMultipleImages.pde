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

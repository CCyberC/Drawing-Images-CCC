//Global Variables
float imageX, imageY, imageWidth, imageHeight;
PImage pic;
//
fullScreen();
//Population
imageX = displayWidth*0;
imageY = displayHeight*0;
imageWidth = displayWidth;
imageHeight = displayHeight;
pic = loadImage("wp5732424.jpg"); //Dimensions: width, height
//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);

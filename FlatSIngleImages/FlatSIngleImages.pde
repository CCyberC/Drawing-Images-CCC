//Global Variables
float imageX, imageY, imageWidth, imageHeight;
PImage pic;
//
fullScreen();
//Population
imageX = width;
imageY = height;
imageWidth = width;
imageHeight = height;
pic = loadImage("DABBONES.jpg"); //Dimensions: width, height
//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image();

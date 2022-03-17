//Global Variables
float imageX, imageY, imageWidth, imageHeight;
PImage pic;
//
fullScreen();
//Population
imageX = width*0;
imageY = height*0;
imageWidth = width;
imageHeight = height;
pic = loadImage("wp5732424.jpg"); //Dimensions: width, height
//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);

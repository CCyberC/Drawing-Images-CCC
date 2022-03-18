//Global Variables
float imageX, imageY, imageWidth, imageHeight, imageHeightRatio=0.0, imageWidthRatio=0.0; 
float largerDimension, smallerDimension;
PImage pic;
Boolean heightLarger=false, widthLarger=false;
fullScreen(); //size(600, 300)
//Population
pic = loadImage("wp5732424.jpg"); //Dimensions: width, height
//Find the larger dimension for aspect ratio
int picWidth = 720;//Teacher's is 800, DO NOT COPY
int picHeight = 1280;//Teacher's is 600, DO NOT COPY
if (picWidth < picHeight) {
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
} else {
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
}//End Dimension Comparison
println(smallerDimension, largerDimension, widthLarger, heightLarger); //Verifying Variable Details
//Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
if (heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
if (heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
if (widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
if (widthLarger == true) imageHeightRatio = smallerDimension / largerDimension;
println(imageHeightRatio, imageWidthRatio, smallerDimension/largerDimension, 720.0/1280.0); //Verify variable values
//Note: println() also verifies decimal places, compiler will truncate(delete)
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio "0.75" similar to style="height:auto" (websites)
imageX = displayWidth*0;
imageY = displayHeight*0;
imageWidth = displayWidth*imageWidthRatio;
imageHeight = displayHeight*imageHeightRatio;
if ( imageWidth > displayWidth ) println("ERROR: Image is too wide");//Simple Display Checker
if ( imageHeight > displayHeight ) println("ERROR: Image is too tall");//Display Checker

//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);

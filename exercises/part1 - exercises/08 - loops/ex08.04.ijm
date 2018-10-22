// Exercise 08.04 - for-loop
// 
// Aim: Understand the for-loop
//
// Complete the code that animates a ROI (region of interest)
// on the image. The ROI should move along the diagonal of the
// image from the upper-left corner to the lower-right corner.

newImage("animation", "8-bit", 800, 800, 1);
makeOval(0,0,20,20);
Roi.setFillColor("red");
// Your code starts after this line
for(/*replace this comment*/) {
	Roi.move(/*replace this comment*/);
// Your code ends before this line
	wait(20);
}


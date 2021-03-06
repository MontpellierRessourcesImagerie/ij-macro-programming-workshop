/* 
# Exercise 01.03 - Hello World version 3  
Aims:  
- write a minimal working program
- learn how to write and run macros
- learn how to call build-in functions with parameters

 Finally we will write the "Hello World!" message onto an overlay of an 
 image. The command 
 >	`Overlay.drawString("<myText>", <x>, <y>);` 
 
 can do this. It has three parameters: 
 - the string to be displayed, 
 - the x-coordinate of the upper-left corner
 - the y-coordinate of the upper-left corner

The command has a fourth, optional parameter, which is the angle
in which the string is displayed.  Try different angles.
You can find the description of the build-in functions of ImageJ here:
 [functions.html](http://imagej.nih.gov/ij/developer/macro/functions.html) */

newImage("Hello!", "8-bit ramp", 400, 400, 1);	

/* 
This creates a new image with the window title "Hello!". The image is
an 8-bit image that can contain intensity values from 0 to 255. It has
the size 400x400x1 pixel. This means it has one slice of width 400 pixel
and height 400 pixel. The token "ramp" means that the image will contain a greyscale ramp.

Your code starts after this line */



/* Your code ends before this line */
Overlay.show();					// This command makes the overlay, on which you drew the message, visible.

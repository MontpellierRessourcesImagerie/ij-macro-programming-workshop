/*   
# Exercise 08.03 - for-loop 

Aim: 
- use a nested for-loop to iterate ofer the pixel of an image

Write a nested for-loop that iterates over the pixel of the image. 
The outer for-loop will iterate over the x-coordinates and the inner
for-loop over the y-coordinates (or vice versa). Use the build-in
function ``setPixel(x,y,v)`` to set each pixel to the value ``x*y%255``. 

Create a new image with the title ``pattern``, the type ``8-bit``, 
the width ``255``, the height ``255`` and 1 slice: */
newImage("pattern", "8-bit", 255, 255, 1);  
/* 
Apply a lookup-table (mapping of gray-values to colors) to the image: */
run("16 colors");
/* 
Get the width of the image: */
width = getWidth();	
/* 
Get the height of the image: */
height = getHeight();						
/* Your code starts after this line */





/* Your code ends before this line

The code below is for automatically checking the result. Please ignore it! */
ok = (getPixel(2,3) == 6);
ok = (ok && (getPixel(10,20) == 200));
ok = (ok && (getPixel(12,12) == 144));
ok = (ok && (getPixel(200,201) == 165));
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");



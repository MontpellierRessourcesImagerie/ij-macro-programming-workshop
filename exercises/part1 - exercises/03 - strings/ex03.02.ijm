/* 
# Exercise 03.02 - Strings - Concatenation 2

Aim: 
- Understand string concatenation

Ask the user to enter a number and pass the number as  a parameter to the Gaussian Blur filter. 
The Gaussian Blur filter will smooth the image. To run for example a Gaussian Blur filter
with the parameter ``sigma=3`` you can use:
> ``run("Gaussian Blur...", "sigma=3");``

Complete the code below, run it and enter 5 as parameter value.
*/
run("Clown (14K)");
/*
Your code starts after this line */
s = getNumber("enter a value:", 1);
run("Gaussian Blur...", <your code>);
/* 
Your code ends before this line

The code below is for automatically checking the result. Please ignore it! */
"\\Clear";
v = getPixel(126,90);
if (v==-7445689) 
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");

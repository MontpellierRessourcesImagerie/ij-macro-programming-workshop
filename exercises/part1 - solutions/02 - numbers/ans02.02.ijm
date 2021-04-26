/*
# Exercise 02.02 - Numbers - Calculations

Aims:  
- being able to use the macro language for basic calculations

Calculate the Euclidean Distance between two points. The coordinates of the two points are: 
- P1: `x1= 56, y1= 78`
- P2: `x2=167, y2=245`. 
*/
"\\Clear";
/* Your code starts after this line. */
	sqrt(((167-56) * (167-56)) + ((245-78) * (245-78)));
/* Your code ends before this line.

The code below is for automatically checking the result. Please ignore it!
*/
result = parseInt(toString(floor(parseFloat(getInfo("log")))), 36);
if (result==2592) showMessage("That's right. Great, you did it!");
else showMessage("Your result is wrong! Please check your macro and try again!");
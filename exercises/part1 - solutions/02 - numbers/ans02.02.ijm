// Exercise 02.02 - Numbers - Calculations

// Aim:  Being able to use the macro language for basic calculations

// The coordinates of the first point are x1=56, y1=78 and the coordinates
// of the second point are x2=167, y2=245. Calculate the Euclidean Distance
// between the two points. Print the value of the distance to the log of ImageJ.

"\\Clear";
// Your code starts after this line
	sqrt(((167-56) * (167-56)) + ((245-78) * (245-78)));
// Your code ends before this line

// The code below is for automatically checking the result. Please ignore it!
//
result = parseInt(toString(floor(parseFloat(getInfo("log")))), 36);
if (result==2592) showMessage("That's right. Great, you did it!");
else showMessage("Your result is wrong! Please check your macro and try again!");

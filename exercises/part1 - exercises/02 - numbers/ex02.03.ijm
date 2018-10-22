// Exercise 02.03 - Numbers - Floating point numbers
//
// Aim: Be aware of pitfalls when working with floating point numbers
//
// 1. Calculate the value of 0.3 minus 0.2 minus 0.1. What is the result?
//
// 2. Use the comparison operator (==) to compare the result to 0. Note
// that you need to put brackets around the whole expression. Does 
// the comparison give true (1) or false (0).
//
// 3. Write a comparison that checks if the result is reasonably close
// to zero (the difference should be smaller than one millonth). Since the
// actual value could be slightly above or slightly below zero you should use 
// the abs function that returns the absolute value of a number.

"\\Clear";
// Your code starts after this line

// Your code ends before this line




// The code below is for automatically checking the result. Please ignore it!
//
res = split(getInfo("log"));
if (res.length<3) {
	showMessage("Your result is wrong! Please check your macro and try again!");
	return;
}
if ((res[0]<0) && !res[1] && res[2]) 
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
// Exercise 04.01 - Booleans - Expressions
//
// Aim: Understand boolean expressions 
//
// Consider the following boolean expression:
//
// The exclusive or is only true if both operands have different values. It can be expressed 
// with the boolen operations and, or and not:
// 		xor(A,B) = ((!A && B)||(A && !B))
// Print the results of the xor operation for the four cominations of input value 
// A=0,B=0; A=0,B=1; A=1,B=0 and A=1,B=1

"\\Clear";
// Your code starts after this line






// Your code ends before this line

// The code below is for automatically checking the result. Please ignore it!
//
parts = split(getInfo("log"));
result = !parts[0] && parts[1] && parts[2] && !parts[3];
if (result) 
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
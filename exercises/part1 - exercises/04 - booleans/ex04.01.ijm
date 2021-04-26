/* 
# Exercise 04.01 - Booleans - Expressions

Aim: 
- understand boolean expressions 

The exclusive or is only true if both operands have different values. It can be expressed 
with the boolen operations and, or and not:
> 		((!A && B)||(A && !B))

Use the boolean expression to print the results of the xor operation for the four combinations of input value.

> A | B

> 0 | 0

> 0 | 1

> 1 | 0

> 1 | 1

*/
"\\Clear";
/* Your code starts after this line */




/* Your code ends before this line

// The code below is for automatically checking the result. Please ignore it! */
parts = split(getInfo("log"));
result = !parts[0] && parts[1] && parts[2] && !parts[3];
if (result) 
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");

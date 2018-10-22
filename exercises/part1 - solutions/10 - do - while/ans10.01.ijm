// Exercise 10.01 - do-while-loop
//
// Aim: Understand the do-while-loop
//
// Write a program that asks the user to enter a number between 0 and 1.
// The program should continue to ask until the user enters a valid number.
// Use a do-while loop to implement this.


do {
// Your code starts after this line
	n =	getNumber("Enter a number between 0 and 1", 0.5);
} while (n<0 || n>1);
// Your code ends before this line

// The code below is for automatically checking the result. Please ignore it!
ok = (n>=0 && n<=1);
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");

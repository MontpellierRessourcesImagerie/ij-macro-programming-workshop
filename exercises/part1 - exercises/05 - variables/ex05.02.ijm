// Exercise 05.02 - Variables and assignment
//
// Aim: Understand that variables containing numbers or strings are 
// copied by value in an assignment.
//
// Create a variable a and assign a value to it. Create a second variable
// b and assign a to it. Modify the value of b. Print out the values of a 
// and b. Did the value of a change when b was modified?

// Your code starts after this line
a = 
b = a;
b = b +
// Your code ends before this line

print("a: ", a, "b:", b);

// The code below is for automatically checking the result. Please ignore it!

ok = a!=b;

if (ok) 
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
// Exercise 11.03 - user defined functions and recursion
//
// Aim: Get an idea of how recursion works.
//
//* Write a recursive version of the factorial function and use it
//* to print the   
//* 	factorial of 5 and
//* 	the factorial 10
//
// Note that the factorial can be defined as 
//	factorial(0) = 1
//	factorial(n) = n * factorial(n-1).

 // Your code starts after this line
print(factorial(5));
print(factorial(10));
 // Your code ends before this line

function factorial(n) {
// Your code starts after this line
	if (n==0) return 1;
	else return n * factorial(n-1);
// Your code ends before this line
}

// The code below is for automatically checking the result. Please ignore it!
output = split(getInfo("log"));
ok = ((parseInt(output[0]) == 120) && (parseInt(output[1]) == 3628800));
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
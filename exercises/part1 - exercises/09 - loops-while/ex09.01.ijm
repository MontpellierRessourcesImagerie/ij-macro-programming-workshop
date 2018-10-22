// Exercise 09.01 - while-loop
//
// Aim: Understand the while-loop
//
// The while loop below will use Newton's method to approximate the 
// square-root of the number "input". 
//* Write the condition for the while-loop. The calculation should stop
//* when the absolute difference between the square of "guess" and the
//* number input is at least smaller than one-thousandth.

"\\Clear";
input = 121;
guess = 1;
nr_iterations = 0;
// Your code starts after this line
while(/* Replace this comment with your code*/) {
	guess = 0.5 * ((input / guess) + guess);
}
// Your code ends before this line
print(guess);

// The code below is for automatically checking the result. Please ignore it!
ok = (d2s(guess, 9) == "11.000000002");
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
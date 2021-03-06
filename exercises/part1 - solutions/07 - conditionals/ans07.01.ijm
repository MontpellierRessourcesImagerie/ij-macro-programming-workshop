/* 
# Exercise 07.01 - If/then/else

Aim:
- understand conditional code execution

The macro will ask the user to enter a number.

Use the ``if/then/else``-statement to print to the 
log if the entered number is even or odd. 

The test can be done with the modulo operator ``%``:
``(a%2==0)`` being true, means the number ``a`` is even. 

Note that the message you print to the log must contain 
the word even if the number is even and odd otherwise 
in order for the evaluation code to work. */
"\\Clear";
a = getNumber("Enter a number: ", 13);

/* Your code starts after this line */
if (a%2==0) {
	print("" + a + " is even.");
} else {
	print("" + a + " is odd.");
}
/* Your code ends before this line

The code below is for automatically checking the result. Please ignore it! */
isEven = (a%2==0);
logText = getInfo("log");
ok = true;
ok = ok && !((indexOf(logText, "odd") == -1) && indexOf(logText, "even") == -1);
ok = ok && (isEven && (indexOf(logText, "even") != -1)) || (!isEven && (indexOf(logText, "odd") != -1));
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
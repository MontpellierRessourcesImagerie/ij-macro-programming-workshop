/*   
# Exercise 07.01 - If/then/else

Aim: 
- understand conditional code execution

Get two numbers ``a`` and ``b`` from the user. Use
the ``if/then/else`` statement to set the variable
``result`` to the maximum of the numbers ``a`` and ``b``. */

"\\Clear";
/* Your code starts after this line */







/* Your code ends before this line */
print("max("+a+", "+b+")=" + result);


/* The code below is for automatically checking the result. Please ignore it! */
parts = split(getInfo("log"),"=");
logText = parts[1];
ok = (indexOf(logText, toString(maxOf(a,b)))!=-1);
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
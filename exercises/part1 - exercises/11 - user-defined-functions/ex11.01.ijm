/* 
# Exercise 11.01 - user defined functions

Aim: 
- understand how to define new functions and how to call user defined functions

The factorial of the number ``n`` is the product of the numbers from
one to ``n``: ``1 * 2 * 3 * ... * n-1 * n``.

Write a function that uses a for loop to calculate the factorial.
The function should have one parameter ``n`` and return the value
of the factorial of ``n``. 

Use the function to print 
- the factorial of 5,
- the factorial of the factorial of 5 and 
- the factorial of 3. 
*/
"\\Clear";
/* Your code starts after this line */
print(	);
print(	);
print(	);
/* Your code ends before this line */

/* Your code starts after this line */
function factorial(n) {


}
/* Your code ends before this line */

/* The code below is for automatically checking the result. Please ignore it! */
output = split(getInfo("log"));
ok = ((parseInt(output[0]) == 120) && (output[1]=="6.689502913449124E198") && (parseInt(output[2]) == 6));
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
/* 
# Exercise 05.01 - Variables and assignment

Aim: 
- use variables in a calculation

Calculate the circumference and the area of a circle with a given radius. 
Use the variables ``radius``, ``circumference`` and ``area``. 

Note that when you want to try the macro for different
values of radius, you only have to change the value of the variable
``radius`` instead of changing the value in each calculation.

Your code starts after this line */
radius = 
circumference = 
area = 
/* Your code ends before this line */

print("radius:", radius, "circumference:", circumference, "area:", area);

/* The code below is for automatically checking the result. Please ignore it! */
ok = abs(PI*pow(circumference / (2 * PI), 2) - area) < 0.0000001;

if (ok) 
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
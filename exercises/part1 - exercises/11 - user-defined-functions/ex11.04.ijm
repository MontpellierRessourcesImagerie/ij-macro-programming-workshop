/*
# Exercise 11.04 - user defined functions and recursion

Aim: 
- get an idea of how recursion works.

Based on turtle graphics from exercise 11.02, we can create some recursive 
curves. Try the different curves below! Run them with different parameters!

Look at the code that produces the curves! Do you understand how they work? 
Write a function in which you define your own recursive curve!
*/
var _X = 0;
var _Y = 0;
var _ANGLE = 0;
var _RADIUS = 20;
var _DELAY = 20;

newImage("Untitled", "8-bit white", 800, 800, 1);
initializeTurtle();
// Your code starts after this line
spiral(50, 2, 20, 100);
// dragon(8, 1 , 11);
// myCurve(...);
// Your code ends before this line

function initializeTurtle() {
	_X = getWidth() / 2;
	_Y = getHeight() / 2;
	moveTo(_X, _Y);
	makeOval(_X - (_RADIUS / 2), _Y - (_RADIUS / 2), _RADIUS, _RADIUS);
	Roi.setFillColor("green");
}

function forward(step) {
	_X += step * cos(_ANGLE * PI / 180);
	_Y += step * sin(_ANGLE * PI / 180);
	lineTo(_X, _Y);
	Roi.move(_X - (_RADIUS / 2), _Y - (_RADIUS / 2));
	wait(_DELAY);
}

function right(delta) {
	_ANGLE += delta % 360;
}

function left(delta) {
	_ANGLE -= delta % 360;
}

function spiral(side, angle, inc, count) {
	forward(side);
	right(angle);
	if (count>0) spiral(side, angle + inc, inc, count-1);
}

function dragon(size, sign, level) {
	if (level==0) forward(size);
	else {
		dragon(size, 1, level - 1);
		left(90 * sign);
		dragon(size, -1, level - 1);
	}
}

// Your code starts after this line


// Your code ends before this line
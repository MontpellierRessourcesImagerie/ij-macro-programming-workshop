// Exercise 12.02 - Define a macro set with keyboard shortcuts for each macro
//
// Aim: Learn how to define macro sets.
//
// Write a macro set that contains the following macros and a keyboard shortcut for each
// of the macros:
//
// the macro "new image" with the shortcut 'n' creates a new image
// the macro "initialize turtle" with the shortcut 'i' initializes the turtle
// the macro "spiral" with the shotcut 's' draws the spiral with a fixed set of parameters
// the macro "dragon" with the shotcut 'd' draws the dragon curve with a fixed set of parameters
// the macro "my curve" with the shortcut 'm' draws the recursive curve you defined in exercise  11.4
//
// Install the macros and use the keyboard shotcuts to run them. To install the macros copy the
// content of the file into the Text-Editor that you can open from Plugins>New>Text Window...
// and use the menu Macros>Install Macros of this editor.  When installed they will appear under
// Plugins>Macros

var _X = 0;
var _Y = 0;
var _ANGLE = 0;
var _RADIUS = 20;
var _DELAY = 20;

// Your code starts after this line
macro "new image [n]" { 
	newImage("Untitled", "8-bit white", 800, 800, 1);
}

macro "initialize turtle [i]" {
 initializeTurtle();	
}

macro "spiral [s]" {
	spiral(50, 2, 20, 100);
}

macro "dragon [d]" {
 dragon(8, 1 , 11);
}

macro "my curve [m]" {
  myCurve(20, 6);
}
// Your code ends before this line

function initializeTurtle() {
	_X = getWidth() / 2;
	_Y = getHeight() / 2;
	moveTo(_X, _X);
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

function myCurve(side, step) {
// Your code starts after this line
// Your code ends before this line
}

/* 
# Exercise 20.1 - Tool-buttons and dialogs
Aims:
- learn to write tool-button macros
- learn to write option dialogs

When a tool-button is activated, the corresponding macro is called each
time the user clicks into the image. 
 
A right-click on the button opens the options-dialog of the tool.
 
Complete the tool-button macro that will draw and measure a selection around
the point at which the user clicks into the image!

Save the tool into the folder ``macros/toolsets``! It will appear in the tools menu (``>>``).

To create the selection use
- makeOval
- makeRectangle

To create the Dialog you will need the commands:
- Dialog.create
- Dialog.addNumber
- Dialog.addCheckbox
- Dialog.show
- Dialog.getNumber
- Dialog.getCheckbox
*/    
var radius = 20;
var useCircle = true;

macro "Circle Tool - C00cO11cc" {
   getCursorLoc(x, y, z, flags);
   if (useCircle) {
   		makeOval(x-radius, y-radius, 2*radius+1, 2*radius+1);
   } else {
   		makeRectangle(x-radius, y-radius, 2*radius+1, 2*radius+1);
   }
   roiManager("add");
   run("Measure");
}

macro "Circle Tool Options" {
   Dialog.create("Circle Tool Options");
   Dialog.addNumber("radius: ", radius);
   Dialog.addCheckbox("circular", useCircle);
   Dialog.show();
   radius = Dialog.getNumber();
   useCircle = Dialog.getCheckbox();
}
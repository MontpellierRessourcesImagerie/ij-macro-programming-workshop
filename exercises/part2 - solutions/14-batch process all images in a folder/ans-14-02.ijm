// Exercise 14.2 - Merging two images. 
//
// Aim: Learn how to pass parameters to a menu command excuted with with run command
//
//* Add a line at the end of your solution to ex-13-01, that merges the two open 
//* images into one color image with the dapi image in the blue channel and the
//* rhodamine image in the green channel.
//
// Use the command
//	 run("Merge Channels...", "c2=[title1] c3=[title2]");
// The first parameter of the run command is the name of the command that is executed.
// The second parameter is used to pass a number of named parameters (or sometimes flags)
// to this command. You need to replace title1 and title2 by the values of the variables containing
// the titles of the two open images.

// Your code starts after this line
open();
path = File.directory;
imageDAPI = File.name;
imageRHOD = replace(imageDAPI, "dapi", "rhod");
open(path + imageRHOD);
run("Merge Channels...", "c2=["+imageRHOD+"] c3=["+imageDAPI+"]");
// Your code ends before this line

// The code below is for automatically checking the result. Please ignore it!
ok = (nImages == 1);
ok = ok && (isOpen("RGB"));
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!")

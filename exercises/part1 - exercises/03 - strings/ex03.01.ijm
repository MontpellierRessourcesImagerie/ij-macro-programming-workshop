// Exercise 03.01 - Strings - Concatenation
//
// Aim: Understand string concatenation
//
// The command "Combine..." takes two images and combines them
// in the same image window. You can call it using the run command.
// run("Combine...'", options). options is a string of the form
// "stack1=[<title1>] stack2=[<title2>]". <title1> and <title2>
//* must be replaced by the actual titles of the images. Given the two 
//* variables title1 and title2, construct the options string. 

run("Boats (356K)");
run("Bridge (174K)");
title1 = "boats.gif";
title2 = "bridge.gif";

// Your code starts after this line
options = 
// Your code ends before this line

run("Combine...", options);

// The code below is for automatically checking the result. Please ignore it!
//
res = getTitle();
"\\Clear";
print(options);
if (res=="Combined Stacks") 
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
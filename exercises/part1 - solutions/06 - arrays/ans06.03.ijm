/*
# Exercise 06.03 - Arrays - Concatenation

Aim: 
- create a list of initially unknown length by appending elements to it.

Once an array created its size can not be modified. Sometimes you do not know in the beginning how long
a list will be. You can use the command
>  ``res = Array.concat(listOrElement1, listOrElement1);``

to concatenate two arrays or to append an element to an array. 

The macro below asks the user for the input folder and retrieves the names of all files in the folder in the array ``files``.
The aim is to create a new array ``images`` that will contain all image-files in the folder. Fill in the code to create the empty array ``images``
and to append ``file`` to ``images`` if it ends with ``.tif``.

Run the macro and select the folder ``06`` from the folder of the workshop-images.
*/
directory = getDir("Select the input folder!");
files = getFileList(directory);
/* Your code starts after this line. */
images = newArray(0);
for (i = 0; i < files.length; i++) {
	file = files[i];
	if (endsWith(file, ".tif")) {
		images = Array.concat(images, file);
	}
}
/* Your code ends before this line. */
Array.show(images);
/* The code below is for automatically checking the result. Please ignore it! */
ok = ((images.length==3) && (files.length==5));
if (ok) 
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
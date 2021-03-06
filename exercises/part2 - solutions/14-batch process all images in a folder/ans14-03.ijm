/* 
# Exercise 14.3 - Saving a result image. 
 
Aim: 
- create a results folder if it doesn't exist and save a result image

Modify your macro from exercise 14.02, so that the merged image is saved
and closed in ImageJ. The image should be written to a folder ``out`` which
is a subfolder of the input folder. The name of the result image should be 
the name of the dapi-input image without ``dapi``. 

For example:
 > The result image of merging "dapi 3.tif" and "rhod 3.tif" should have the name "3.tif"

You need the following commands:
- ``File.mkdir(path)``		 	Creates a new folder if it doesn't already exist.
- ``replace(string, old ,new)``	Replaces all occurences of the substring old in string by new and returns the result.
- ``save(path)``				Saves the current image under the given path.
- ``close()``					Closes the current image.

Your code starts after this line */
open();
path = File.directory;
imageDAPI = File.name;
File.mkdir(path + "out");
imageRHOD = replace(imageDAPI, "dapi", "rhod");
open(path + imageRHOD);
run("Merge Channels...", "c2=["+imageRHOD+"] c3=["+imageDAPI+"]");
save(path + "out/" + replace(imageDAPI, "dapi ", ""));
close();
/* 
Your code ends before this line

The code below is for automatically checking the result. Please ignore it! */
ok = (nImages==0);
ok = (ok && File.exists(path+"/out"));
files = getFileList(path+"/out");
ok = (ok && files.length>0);
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");



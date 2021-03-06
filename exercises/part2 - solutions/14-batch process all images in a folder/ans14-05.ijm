/*
 # Exercise 14.5 - Running a macro in batch-mode

Aim: 
- learn to run macros in batch-mode and use the log-window to report progress.

Modify the macro from exercise 14.04 so that it runs in batch-mode. 
It should report the start, the end and the progress to the log-window.

You can use the command ``print("\\Update1: <your message>")`` to update
the line 1 in the log file.

Useful commands:
- ``setBatchMode(true)``					Switches to batch processing. Images are not shown anymore.
- ``setBatchMode("exit and display")``		Exits batch-mode and shows all images still open.

Your code starts after this line */
path = getDirectory("Input directory");			// Ask the user for the input directory
print("batch merge channels started");
setBatchMode(true);
files = getFileList(path);						// get an array containing the names of all files in the directory path
File.mkdir(path + "out");						// create the output directory
for(i=0; i<files.length; i++) {					// iterate over all files
	image = files[i];							// get the name of the current file
	print("\\Update1: processing file " + (i+1) +"/" + files.length);
	if (indexOf(image, "dapi") != -1 && indexOf(image, ".tif") != -1) {	// if the current file is a dapi-image...
		open(path + image);
		imageRHOD = replace(image, "dapi", "rhod");
		open(path + imageRHOD);
		run("Merge Channels...", "c2=["+imageRHOD+"] c3=["+image+"]");
		save(path + "out/" + replace(image, "dapi ", ""));
		close();
	}
}
setBatchMode("exit and display");
print("batch merge channels finished");
/* Your code ends before this line

The code below is for automatically checking the result. Please ignore it! */
ok = (nImages==0);
ok = (ok && File.exists(path+"/out"));
files = getFileList(path+"/out");
ok = (ok && files.length==3);
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
	

/* 
# Exercise 15.1 - Measure objects on all images in a folder

Aim: 
- learn how to apply a threshold and use the particle analyzer in a batch macro.

Complete the macro below and run it on the images in the folder 15. 

Useful commands:
- ``run("Set Measurements...", options)``		sets the features and options that will be measured
- ``setAutoThreshold(..)``						sets the threshold using an auto-threshold method, use the macro recorder to find the options
- ``run("Analyze Particles...", options);``		runs the particle analyzer with the given options
	- use the macro-recorder to find the options
	- the outlines of the nuclei should be written to an overlay of the image and the objects should be measured							 	
- ``saveAs("Results", file-path);``				saves a result table to a tab-separated  text file

Your code starts after this line */
run("Set Measurements...", "area mean standard modal min centroid center perimeter bounding fit shape feret's integrated median skewness kurtosis area_fraction display add redirect=None decimal=3");
path = getDirectory("Input directory");			// Ask the user for the input directory
print("\\Clear");
print("batch measure nuclei started");
setBatchMode(true);
files = getFileList(path);						// get an array containing the names of all files in the directory path
File.mkdir(path + "out");						// create the output directory
for(i=0; i<files.length; i++) {					// iterate over all files
	image = files[i];							// get the name of the current file
	print("\\Update1: processing file " + (i+1) +"/" + files.length);
	if (indexOf(image, ".tif") != -1) {			// if the current file is a an image...
		open(path + image);
		setAutoThreshold("Default dark");
		run("Analyze Particles...", "size=400-Infinity show=[Overlay Outlines] display exclude in_situ");
		save(path + "out/" + image);
		close();
	}
}
saveAs("Results", path + "out/" + "Results.xls");
/* Your code ends before this line */
run("Close");
print("batch measure nuclei finished");

/* The code below is for automatically checking the result. Please ignore it! */
ok = (nImages==0);
ok = (ok && File.exists(path+"/out"));
files = getFileList(path+"/out");
ok = (ok && files.length==4);
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");

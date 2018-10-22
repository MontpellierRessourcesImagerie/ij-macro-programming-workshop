// Exercise 13.4 - Working on all images in a folder
//
// Aim: Learn how to apply a macro to all images in a folder,
// load related images and save result images.
//
//* Complete the macro below so that the merging of the two
//* channels is applied to all images in the input folder. Base 
// your macro on the results of the previous exercises.
 
path = getDirectory("Input directory");			// Ask the user for the input directory
files = getFileList(path);						// get an array containing the names of all files in the directory path
File.mkdir(path + "out");						// create the output directory

for(i=0; i<files.length; i++) {					// iterate over all files
	image = files[i];							// get the name of the current file
	if (indexOf(image, "dapi") != -1 && indexOf(image, ".tif") != -1) {	// if the current file is a dapi-image...
		// Your code starts after this line
		open(path + image);
		imageRHOD = replace(image, "dapi", "rhod");
		open(path + imageRHOD);
		run("Merge Channels...", "c2=["+imageRHOD+"] c3=["+image+"]");
		save(path + "out/" + replace(image, "dapi ", ""));
		close();
		// Your code ends before this line
	}
}


// The code below is for automatically checking the result. Please ignore it!
ok = (nImages==0);
ok = (ok && File.exists(path+"/out"));
files = getFileList(path+"/out");
ok = (ok && files.length==3);
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");
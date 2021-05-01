/* 
# Exercise 19.1 - Interactive macros and custom tables

Aim: 
- learn to use waitForUser to pause execution and let the user correct results
- learn to use custom tables

The macro will work on all tif images in a folder and all subfolders.
It will count the objects in an image by detecting the maxima.
Use the ``waitForUser`` command to pause the execution and let the user correct the count for each image!
Use the commands
- ``Table.create(   )``
- ``Table.size(    )``
- ``Table.set(    )``
- ``Table.save(    )``

to create a table ``Counts`` and to add a row containig the name of the image and the number of objects for each image.

Run the macro on the folder ``images/15``!
*/
input = getDirectory("Input directory");
output = getDirectory("Output directory");
suffix = ".tif";
<create the table here>
processFolder(input, output);

function processFolder(input, output) {
	list = getFileList(input);
	for (i = 0; i < list.length; i++) {
		if(File.isDirectory(input+list[i]))
			processFolder(input + list[i]);
		if(endsWith(list[i], suffix))
			processFile(input, output, list[i]);
	}
	<save the table into the output folder here>
}

function processFile(input, output, file) {
	open(input + file);
	run("Find Maxima...", "noise=80 output=[Point Selection] exclude");
	<use the command waitForUser to let the user correct the point selection before the execution continues>
	getSelectionCoordinates(xpoints, ypoints);
	row = <get the size of the table Counts>
	count = <get the length of the array xpoints>
	<add the name of the image to the table in the column Image and the current row>
	<add the number of objects to the table in the column Count and the current row>
	close();
}

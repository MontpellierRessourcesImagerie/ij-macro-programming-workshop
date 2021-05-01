/*
 * Macro template to process multiple images in a folder
 */

input = getDirectory("Input directory");
output = getDirectory("Output directory");

suffix = ".tif";
Table.create("Counts");
processFolder(input);

function processFolder(input) {
	list = getFileList(input);
	for (i = 0; i < list.length; i++) {
		if(File.isDirectory(list[i]))
			processFolder("" + input + list[i]);
		if(endsWith(list[i], suffix))
			processFile(input, output, list[i]);
	}
}

function processFile(input, output, file) {
	open(input + file);
	run("Find Maxima...", "noise=80 output=[Point Selection] exclude");
	waitForUser("Correct and press ok!");// use the command waitForUser("<text>") to let the user correct the point selection before the execution continues//
	getSelectionCoordinates(xpoints, ypoints);
	row = Table.size("Counts");
	Table.set("Image", row, file, "Counts");
	Table.set("count", row, xpoints.length, "Counts");
	close();
}

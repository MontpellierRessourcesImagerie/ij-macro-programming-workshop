/*
 * Macro template to process multiple images in a folder
 */

input = getDirectory("Input directory");
output = getDirectory("Output directory");

suffix = ".tif";
run("Table...", "name=Counts width=350 height=250");
print("[Counts]", "\\Clear");
print("[Counts]", "\\Headings:image\tcount");
processFolder(input);

function processFolder(input) {
	list = getFileList(input);
	for (i = 0; i < list.length; i++) {
		if(File.isDirectory(list[i]))Table
			processFolder("" + input + list[i]);
		if(endsWith(list[i], suffix))
			processFile(input, output, list[i]);
	}
}

function processFile(input, output, file) {
	open(input + file);
	run("Find Maxima...", "noise=80 output=[Point Selection] exclude");
	// use the command waitForUser("<text>") to let the user correct the point selection before the execution continues//
	roiManager("Reset");
	print("[Results]", "\\Clear");
	roiManager("Add");
	roiManager("Measure");
	print("[Counts]", file + "\t" + nResults); 
	close();
}

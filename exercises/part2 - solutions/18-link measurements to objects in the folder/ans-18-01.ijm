// Exercise 18.1 - Show the rois of selected measurements
//
// Aim: Learn to link the results table to the image by using string processing and 
// the roi manager.
//
//  Open the image images/16 in ImageJ, manually use the Threshold-Adjuster and the
// Particle-Analyzer to add the rois of the nuclei to the roi-manager. Measure the rois in the
// roi-manager. Select a number lines in the results table before running the macro.
//* Complete the macro below that will create a selection on the image from the measurements 
//* selected in the results table.
// 
String.copyResults();				// Copies the result table into the clipboard
selection = String.paste;			// String.paste answers the content of the clipboard
// Your code starts after this line
lines = split(selection, "\n");
indices = newArray(0);				// This array is initially empty. It will contain the indices of the rois that
									// correspond to the selected measurements.
for(i=0; i<lines.length; i++) {		// For each line in the results table...
	line = lines[i];				// Get the ith line
	columns = split(line, "\t");	
	index = parseInt(columns[0]) - 1;	// Get the value of column 0 which contains the line-number of the measurement
										// Indices in the roi-manager start with 0, those written in the result table with 1
	indices = Array.concat(indices, index);	// Append the new index to the array indices.
}
roiManager("select", indices);
if (indices.length>1) roiManager("Combine");
// Your code ends before this line
 
/* 
# Exercise 17.1 - Sort the rois and the result table by the values in a given column

Aim: 
- learn how to work with result tables and the roi-manager

Open the image in ``images/17`` with ImageJ! Manually use the Threshold-Adjuster and the
Particle-Analyzer to add the rois of the nuclei to the roi-manager! Measure the rois in the roi-manager!

Complete the macro below, that will sort rois and results by the values in a given column.
*/
FEATURE = "Mean";
REVERSE = true;

column = Table.getColumn(FEATURE);
positions = Array.rankPositions(column);
if (REVERSE) Array.reverse(positions);
ranks = Array.rankPositions(positions);
/* Your code starts after this line */
for (i=0; /* iterate as long as i is smaller than the count of elements in the roi-manager*/; i++) {
	/* select the element number i in the roi manager*/
	/* Rename the selected roi in the roi manager to its position in the sorted list, that is rename it to IJ.pad(ranks[i], 4) */
}
// Deselect all rois in the roi-manager 
// Sort the rois in the roi-manager according to their names 
close("Results");
roiManager("Show None");
roiManager("Show All");
// Measure the rois in the roi manager*/
/* Your code ends before this line */

/* The code below is for automatically checking the result. Please ignore it! */
ok = (nResults>1);
for(i=0; i<nResults-1; i++) {
	value = getResult(FEATURE,i);
	nextValue = getResult(FEATURE,i+1);
	ok = ok && (value>nextValue);
}
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");

/*
# Exercise 04.02 - Booleans - Conditions
Aims: 
- write a condition with a boolean result

Conway's game of life is a 2d-cellular automaton that has the following rule:
1. A cell is either dead (0) or alife (255). 
1. In each timestep a cell becomes or stays alife if it has three neighbors. 
1. A living cell stays alife if it has two neighbors.

Fill in the condition alife that should be true if the cell will be alife in the next 
timestep.
*/
newImage("gol", "8-bit black", 300, 300, 20);	// Create a new image stack 
run("Salt and Pepper", "slice");				// Set binary pixel values (0 and 255) randomly
run("Salt and Pepper", "slice");
run("In [+]");									// Zoom in
run("In [+]");
run("In [+]");
width = getWidth();								// Get the width and height of the image
height = getHeight();

for (z=0; z<nSlices-1; z++) {					// For each slice in the stack
	setZCoordinate(z);							// set the z-ccordinate for getPixel
	setSlice(z+1);								// show the current slice
	for (x=0; x<width; x++) {					// iterate over the current slice
		for (y=0; y<height; y++) {
			v = getPixel(x,y);					// get the current pixel value
			nn =     (getPixel(x-1, y-1) +  getPixel(x, y-1) + getPixel(x+1, y-1) +				
			 		  getPixel(x-1, y)   +                     getPixel(x+1, y) +
			          getPixel(x-1, y+1) +  getPixel(x, y+1) + getPixel(x+1, y+1)) / 255;	// count the neighbors
			          
			// Your code starts after this line
												// true if nn is three or if v is 255 and nn is two
			// Your code ends before this line

			setZCoordinate(z+1);				// set the z-cooridnate in order to write to the next slice
			if (alife) {						// if current cell stays or becomes alife set the pixel to 255 otherwise to 0
				setPixel(x,y,255);
			} else setPixel(x,y,0);
			setZCoordinate(z);					// set the z-coordinate back for the next getPixel
		}
	}
}
setSlice(nSlices);								// display the last slice
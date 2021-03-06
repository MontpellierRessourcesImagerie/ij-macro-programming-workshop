/* 
# Exercise 21 - Measure the distance of spots to the border of the nucleus 
## Exercise 21.1 - Spot detection using a Difference of Gaussian (DOG) Filter
Aims:
- write a function to implement the DoG- filter
- use it to detect spots

The Difference of Gaussian (DOG) can help us to segment spots in a given range of sizes.
A DoG-filter can be implemented in the following way:
- create a copy of the image I1 and apply a Gaussian blur filter with a small sigma s1 to it
- create a copy of the image I2 and apply a Gaussian blur filter with a big sigma s2 to it
- Subtract the image I2 from the image I1

Write a function that implements the DoG-filter! The function should work on a copy of the active image. 
It has two parameters ``sigma1`` and ``sigma2``. 

You will need to use ``Duplicate``, the ``Gaussian blur`` filter 
and the ``Image Calculator``. If you need to switch between different images, you can use
``getImageID()`` and ``selectImage()`` and ``getTitle()``.

Try the DOG on the image in the folder ``images/21`` with sigma1 = 1.4 and sigma2 = 3.
*/

DoG(1.4, 3);

function DoG(sigma1, sigma2) {
/* Your code starts after this line */






/* 
Your code ends before this line */
}
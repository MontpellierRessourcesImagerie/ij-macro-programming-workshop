// Exercise 06.01 - Arrays - Creation and accessing elements
//
// Aim: Understand what arrays are
//
//* Create an array containing the first five prime numbers.
//* Replace second and fourth prime number in the array by
//* its square. Display the result.
// An array is created by the newArray command. You
// can either list the elements or give a size.
// An ith-element of an array is accessed by the index ([i]) operator.
// The first element has the index 0. Array.show can be used to 
// display an array in a window.

// Your code starts after this line
a = newArray(2,3,5,7,11);
a[1] = a[1] * a[1];
a[3] = a[3] * a[3];
Array.show(a);
// Your code ends before this line

// The code below is for automatically checking the result. Please ignore it!
Array.getStatistics(a, min, max, mean, stdDev);
ok = min==2 && max==49 && mean==15.2 && (stdDev-19.2146)<0.000001;
if (ok) 
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");

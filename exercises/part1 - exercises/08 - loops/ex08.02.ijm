// Exercise 08.02 - for-loop
// 
// Aim: Use the for-loop to iterate over the elements of an array.
//
//* Use the for-loop to iterate over the array "numbers" and replace 
//* each  element with its square.
// Note that the first index of an array is zero and the size of
// the array numbers can be obtained with numbers.length

"\\Clear";
numbers = newArray(1,2,3,4,5,6,7,8,9,10);
// Your code starts after this line



// Your code ends before this line
Array.print(numbers);

// The code below is for automatically checking the result. Please ignore it!

res = split(getInfo("log"), ",");
ok = (res.length==10);
ok = (ok && parseInt(res[0]) == 1);
ok = (ok && parseInt(res[1]) == 4);
ok = (ok && parseInt(res[2]) == 9);
ok = (ok && parseInt(res[3]) == 16);
ok = (ok && parseInt(res[4]) == 25);
ok = (ok && parseInt(res[5]) == 36);
ok = (ok && parseInt(res[6]) == 49);
ok = (ok && parseInt(res[7]) == 64);
ok = (ok && parseInt(res[8]) == 81);
ok = (ok && parseInt(res[9]) == 100);

if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");

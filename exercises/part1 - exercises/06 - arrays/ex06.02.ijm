// Exercise 06.02 - Arrays - Copy by reference
//
// Aim: Understand that arrays are copied by reference
//
// In the code below an error occured. The second element
// of the array labels is "TOO" but it should be "two'".
//* Assign labels to a different variable correctLabels and 
//* modify the second element of correctLabels. 
// Run the macro to print labels and correct labels. What 
// is the result you expect?

labels = newArray("one", "TOO", "three", "four");

// Your code starts after this line
correctLabels = 
// Your code ends before this line

"\\Clear";
Array.print(labels);
Array.print(correctLabels);

// The code below is for automatically checking the result. Please ignore it!
logContent = split(getInfo("log"));
ok = (logContent[0] == "one,");
ok = (logContent[1] == logContent[5]);
ok = (logContent[5] == "two,");
if (ok) 
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");




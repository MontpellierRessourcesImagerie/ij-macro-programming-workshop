// Exercise 03.02 - Strings - Regular expressions
//
// Aim: Get an idea what can be done with regular expressions
//
//* Write a regular expression that matches strings which contain "_t" 
//* followed by three digits. The following constructs might be useful:
// '.' - anything one time 
// '*' - 0, 1 or any number of repetitions of the preceding
// [0-9] - any digit one time
// An example: The regexp ".*[0-9][0-9]a.*" matches Strings that somewhere contain 
// two digits one after the other followed by an a (the prefix and postfix can be
// arbitrary strings).

// Your code starts after this line
regExp = ".*_t[0-9][0-9][0-9].*";
// Your code ends before this line

res = matches("A01GFP_c001_t001_z001.tif" , regExp);
res = res && !matches("A01GFP_c001_t0a1_z001.tif" , regExp);

// The code below is for automatically checking the result. Please ignore it!
//
if (res) 
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");

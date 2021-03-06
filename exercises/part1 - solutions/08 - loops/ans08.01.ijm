/*   
# Exercise 08.01 - for-loop

Aim: 
- understand the for-loop

Use a for loop to print the numbers from 1 to 11 to the log, each in its own row. */

"\\Clear";

/* Your code starts after this line */
for(i=1; i<=11; i++) {
	print(i);
}
/* Your code ends before this line */

The code below is for automatically checking the result. Please ignore it! */
res=split(getInfo("log"));
ok = (res[0] == 1);
ok = (ok && (res[1] == 2));
ok = (ok && (res[2] == 3));
ok = (ok && (res[3] == 4));
ok = (ok && (res[4] == 5));
ok = (ok && (res[5] == 6));
ok = (ok && (res[6] == 7));
ok = (ok && (res[7] == 8));
ok = (ok && (res[8] == 9));
ok = (ok && (res[9] == 10));
ok = (ok && (res[10] == 11));
ok = (ok && (res.length==11));
if (ok)
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");

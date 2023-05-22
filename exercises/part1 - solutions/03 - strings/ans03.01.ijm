/* 
# Exercise 03.01 - Strings - Concatenation 1

Aim: 
- understand string concatenation

Print a greeting in the form ``Hello <firstname> <lastname>!`` where
``<firstname>`` and ``<lastname>`` should be the values entered by the user
in the two dialogs that will be displayed when running the macro.

Use string concatenation to produce the output String.
*/
firstname = getString("Enter your first name: ", "Alan");
lastname = getString("Enter_your last name:", "Turing");
"\\Clear";
/* Your code starts after this line */
print("Hello " + firstname + " " + lastname + "!");
/* Your code ends before this line

The code below is for automatically checking the result. Please ignore it! */
parts = split(getInfo("log"));
result = (parts[0] == "Hello");
result = result && (parts[1] == firstname);
result = result && (startsWith(parts[2], lastname));
result = result && (endsWith(parts[2], "!"));

if (result) 
	showMessage("That's right. Great, you did it!");
else 
	showMessage("Your result is wrong! Please check your macro and try again!");

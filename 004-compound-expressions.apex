// COMPOUND EXPRESSIONS

// Compound Expressions with Integers
Integer numOfLeaves = 12; 
Integer newLeaves = 3; 
numOfLeaves = numOfLeaves + newLeaves;  // numOfLeaves is now 15

// Using the += compound operator to rewrite previous code:
// You can do this with other operators too, like -=, *=, and /=

Integer numOfLeaves = 12; 
Integer newLeaves = 3; 
numOfLeaves += newLeaves;  //this is shorthand for numOfLeaves = numOfLeaves + newLeaves; 

// Or without using a variable for newLeaves
Integer numOfLeaves = 12; 
numOfLeaves += 3; 
// numOfLeaves is now 15

// Sometimes we just want to add or subtract 1 from a variable. Instead of doing what we just learned:
Integer numOfLeaves = 13; 
numOfLeaves += 1; 
// numOfLeaves is now 14

// We can take advantage of two more operators, ++ and --, called incremet and decrement operators instead:
Integer numOfLeaves = 14; 
numOfLeaves++; //shorthand for numOfLeaves = numOfLeaves + 1;
// numOfLeaves is now 15

numOfLeaves--;
// numOfLeaves is now 14


/**********************
  OPERATOR PRECEDENCE
  1)Parentheses
  2)Multiplication/ Division
  3)Addition/ Subtraction
*****************************/

/**
 * To calculate your contract value you’ll need to find the product of your 
 * contract length and monthly recurring revenue then add that to any nonrecurring revenue.
*/

//Your code would look something like this:
Integer monthlyRecurringRevenue = 3000;
Integer nonRecurringRevenue = 2000;
Integer contractLengthMonths = 36;

Integer totalContractValue = nonRecurringRevenue + contractLengthMonths * monthlyRecurringRevenue; 

/*
Our formula works as is because * takes higher precedence than +. 
So Apex will automatically perform contractLengthMonths * monthlyRecurringRevenueand then add that to the nonRecurringRevenue.
*/

// Optionally, we could add parentheses to make this more clear.
Integer totalContractValue = nonRecurringRevenue + (contractLengthMonths * monthlyRecurringRevenue); 
//The outcome is the same, but In my opinion, adding the parenthesis is a small detail that makes the code clearer.

Integer mysteryInteger = 3 * (5 + 3) + (9-1) / 4;
// Break down:
// 1)  3 * (8) + (9-1) / 4;  
// 2)  3 * (8) + (8) / 4;  
// 3) 24 + (8)/4;
// 4) 24 + 2
// 5) 26

// Here’s the difference adding parentheses would have made to the outcome:
Integer mysteryInteger = (3 * (5 + 3) + (9-1)) / 4;
// Break down:
// 1)  (3 * (8) + (9-1)) / 4;  
// 2)  (3 * (8) + (8)) / 4;  
// 3) (24 + (8))/4;
// 4) (32)/4
// 5) 8


/****************************
  EQUALS OPERATOR - INTEGER
*****************************/

// We can use the == operator to test for equality
Integer actualTCV = 4500; 
Integer expectedTCV = 4500;

// This operator compares the left-hand side to the right-hand side and returns a Boolean value. 
// If they’re equal, we’ll get back True, otherwise we’ll get False.
Boolean tcvMatch = actualTCV == expectedTCV; 
// evaluates to True
Boolean tcvMatch = (actualTCV == expectedTCV);  // to be clear

// Not matched example:
Integer tcv = 4500; 
Integer expectedTCV = 3214;
Boolean tcvMatch = actualTCV == expectedTCV; 
// evaluates to False


/****************************
  EQUALS OPERATOR - BOOLEAN
*****************************/

Boolean isSunny = true;
Boolean isWarm = true;
Boolean isSunnyAndWarm = isSunny == isWarm; 
// isSunnyAndWarm is TRUE because true is equal to true. 

//Then, with different values
isSunny = false;
isWarm = true;
isSunnyAndWarm = isSunny == isWarm; 
// isSunnyAndWarm is FALSE because false is NOT equal to true.

// We can compare boolean variables to true and false literals like this:

Boolean isCloudy = true;
Boolean result = isCloudy == true; // This is true 
result = isCloudy == false; // result is now FALSE because true is not equal to false. 


// In this setup, we'd expect isSunnyAndWarm to be false, but the code will do something else:
Boolean isSunny = false;
Boolean isWarm = false;
Boolean isSunnyAndWarm = isSunny == isWarm; 
// isSunnyAndWarm is TRUE, because false is equal to false.


/****************************
  EQUALS OPERATOR - STRINGS
*****************************/

String currentStage = 'Closed Won';
Boolean isClosedWon = currentStage == 'Closed Won';
// isClosedWon becomes true

// The equals operator is case insensitive, so this code would have the same outcome:
String currentStage = 'Closed Won';
Boolean isClosedWon = currentStage == 'closed won';
// isClosedWon becomes true

// Compare two strings
String var1 = 'space';
String var2 = 'jam';
Boolean result = var1 == var2;
// result becomes False

// Out in the wild, you may see code that compares Strings using this syntax:
Boolean result = 'Closed Won'.equals(currentStage);
Boolean result2 = 'Closed Won'.equalsIgnoreCase(currentStage);


/********************************
  NOT EQUALS OPERATOR - INTEGER
*********************************/

// Here’s an example where the not equals operator is used on two Integer values that are the same:
Integer actualTcv = 4500; 
Integer expectedTCV = 4500;
Boolean tcvMatch = actualTcv != expectedTCV; 
// evaluates to False, because the two values are equal 

// When the not equals operator is used on two Integers that have different values:
Integer tcv2 = 4500; 
Integer expectedTCV2 = 3214;
Boolean tcvMatch2 = tcv2 != expectedTCV2; 
// evaluates to True because they are not equal.


/********************************
  NOT EQUALS OPERATOR - BOOLEAN
*********************************/

Boolean firstBoolean = true;
Boolean secondBoolean = true;
Boolean resultBoolean = firstBoolean != secondBoolean; 
// resultBoolean becomes FALSE, because they are the same

Boolean thirdBoolean = true;
Boolean fourthBoolean = false; //false this time 
Boolean resultBoolean2 = thirdBoolean != fourthBoolean; 
// resultBoolean2 becomes TRUE, because they are different

Boolean firstBoolean = true;
Boolean resultBoolean = firstBoolean != true; 
// resultBoolean becomes FALSE

// ! turns a true statement false, and turns a false statement true.
Boolean firstBoolean = !true; 
// Is the same as saying: 
Boolean firstBoolean = false; 

// You can read this as “not true” - if something is “not true” it’s false. If something is “not false” it’s true:
Boolean tcvMatch = true;
tcvMatch = !tcvMatch; //“not true” is false
// tcvMatch is now false

tcvMatch = !tcvMatch; // “not false” is true
// tcvMatch is now true


/********************************
  NOT EQUALS OPERATOR - STRING
*********************************/

// We can use the != operator with Strings to compare String values while ignoring casing.

String a = 'CampApex';
String b = 'CampApex';

Boolean isSame = a != b;
// isSame becomes False, because they are the same

String c = 'campapex';
isSame = a != c;
// isSame remains False, because != is case insensitive 

String d = 'Camp Apex';
isSame = a != d;
// isSame changes to True because of the spacing

isSame = d != 'Camp Apex';
// isSame changes back to False


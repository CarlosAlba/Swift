import Foundation


///////////////////////////////////////
/////////         Sum         /////////
///////////////////////////////////////
/*You are given two variables a and b, compute their sum and store it in another variable named sum then print the result.*/
var a = 1
var b = 2

// your code here

var sum = a + b

print(sum)


///////////////////////////////////////////
/////////         Seconds         /////////
///////////////////////////////////////////
/*Determine the number of seconds in a year and store the number in a variable named secondsInAYear.*/

// HINT
// The number of seconds in a year is 365 times the number of seconds in a day.
// The number of seconds in a day is 24 times the number of seconds in a hour.
// The number of seconds in a hour is 60 times the number of seconds in a minute, which is 60.

// your code here

let secondsInAMinute = 60

// The number of seconds in a hour is 60 times the number
// of seconds in a minute, which is 60.
let secondsInAHour = 60 * secondsInAMinute

// The number of seconds in a day is 24x the number of seconds in a hour.
let secondsInADay = 24 * secondsInAHour

// The number of seconds in a year is 365x the number of seconds in a day.
let secondsInAYear = 365 * secondsInADay


/////////////////////////////////////////
/////////         Pixel         /////////
/////////////////////////////////////////
/*Your are given the width and height of a screen in pixels. Calculate the total number of pixels on the screen and store the result in a variable named numberOfPixels.*/

// HINT
// Consider a 5×3 screen like this:
// *****
// *****
// *****
// The number of pixels on this screen is 5 + 5 + 5 = 5 * 3
var width = 1920
var height = 1080

// your code here

var numberOfPixels = width * height


//////////////////////////////////////////////////////
/////////         Sum and Difference         /////////
//////////////////////////////////////////////////////
/*You are given the sum and the difference of two numbers. Find out the values of the original numbers and store them in variables a and b.*/

// HINT 1
// sumD + diff = aD + a + bD - bD
// sumD + diff = 2 * aD

// HINT 2
// sumD = aD + bD
// b = sumD - aD
let sumD = 16 // aD + bD
let diff = 4 // aD - bD

// sumD + diff = aD + bD + aD - bD = aD + aD = 2*aD
// -> sumD + diff = 2*aD
// -> aD = (sumD + diff) / 2

// your code here

var aD = (sumD + diff) / 2 // 10
var bD = sumD - aD // 6


//////////////////////////////////////////
/////////         L Area         /////////
//////////////////////////////////////////
/*You are given four variables width, height, x, y that describe the dimensions of a L-shape as shown in the image below. Determine the perimeter and area of the described L-shape. Store the value of the perimeter in a variable named perimeter, and the area in a variable named area.*/

//     _________
//    |    x    |
//    |         |
//    |         |
//    |         |
//    |         |
//    |         |
//    |         |_________
//    | Height            |
//    |                   |
//    |                   | y
//    |                   |
//    |___________________|
//            Width

// HINT
//The perimeter of the L-shape is the same as of a rectangle of size width X height.
//To compute the area you can imagine the L-shape as rectangle of size width X height with a rectangle of size(width-x) X (height-y) cut out.

var widthL = 8
var heightL = 12
var x = 2
var y = 3

// your code here

var perimeter = 2 * (widthL + heightL)

var bigArea = widthL * heightL
var smallArea = (widthL - x) * (heightL - y)
var area = bigArea - smallArea


////////////////////////////////////////
/////////         Swap         /////////
////////////////////////////////////////
/*Given two variable a and b, swap their values. That is the new value of a will become the old value of b and vice versa.*/

// HINT 1
// Just assigning a to the value of b and b to the value of a will not work.
// var a = 1
// var b = 2
// a = b // a will have the value 2. The original value of a is lost
// b = a // b will remain the same

// HINT 2
// Use a third variable to save the original value of a.

var aS = 1
var bS = 2

// your code here

var temp = aS
aS = bS
bS = temp


//////////////////////////////////////////////
/////////         Last digit         /////////
//////////////////////////////////////////////
/*You are given a number a. Print the last digit of a.*/

// HINT
// Use the remainder % operator.
// Remember that aLD = k * (aLD / k) + aLD % k
// Can you think of a value for k that gives the last digit?

var aLD = 123

// your code here

print(aLD % 10)


/////////////////////////////////////////////
/////////         Dog Years         /////////
/////////////////////////////////////////////
/*You are given Rocky’s age in dog years. Print Rocky’s age in human years. You know that 1 human year is 7 dog years.*/

// HINT
// Use division.

var rockysAge = 50

// your code here

var rockysAgeInHumanYears = rockysAge / 7

print(rockysAgeInHumanYears) // 7


////////////////////////////////////////////
/////////         Brothers         /////////
////////////////////////////////////////////
/*Everyone hates solving word problems by hand so let’s make a program to solve them for us.
 x years from now Alice will be y times older than her brother Bob. Bob is 12 years old. How many years does Alice have?*/

// HINT
// alice + xB = yB * (bob + xB)
// Solve for alice

var xB = 3
var yB = 2
var bob = 12

// var alice = ?

// your code here

// alice + xB = (bob + xB) * yB
// alice = (bob + xB) * yB - xB
var alice = (bob + xB) * yB - xB


//////////////////////////////////////////////////////
/////////         Apples and Oranges         /////////
//////////////////////////////////////////////////////
/*You have x apples. Bob trades 3 oranges for 5 apples. He does not accept trades with cut fruit.
 How many oranges can you get from Bob and how many apples will you have left?
 
 The number of apples you will have left should be stored in a variable named apples. The number of oranges you will have after the trade should be stored in a variable named oranges.*/

// HINT
// Use the division(/) and the remainder(%) operator

var xA = 17

// your code here

var apples = xA % 5
var oranges = xA / 5 * 3


//////////////////////////////////////////////////
/////////         Boys and Girls         /////////
//////////////////////////////////////////////////
/*A class consists of numberOfBoys boys and numberOfGirls girls.
 Print the percentage of boys in the class followed by the percentage of girls in the class. The percentage should be printed rounded down to the nearest integer. For example 33.333333333333 will be printed as 33.*/

// HINT 1
// numberOfStudents … 100%
// numberOfBoys … X%

// HINT 2
// numberOfStudents / 100 = numberOfBoys / X

var numberOfBoys = 20
var numberOfGirls = 60

// your code here

var numberOfStudents = numberOfBoys + numberOfGirls
var boyPercentage = numberOfBoys * 100 / numberOfStudents
print(boyPercentage)
var girlPercentage = numberOfGirls * 100 / numberOfStudents
print(girlPercentage)

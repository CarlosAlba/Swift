import UIKit


///////////////////////////////////////////////
/////////         Introduction        /////////
///////////////////////////////////////////////

// The Swift programming language was introduced in June 2014 by Apple, since then it has grown immensly in popularity. Swift is primarly used for developing apps and games for the iPhone and the Mac and provides an easier and more enjoyable way of doing that.

//The great news is that Swift is also a great programming language for learning to code because of the Playgroundsfeature described below.


///////////////////////////////////////////////////////////
/////////         Variables and Constants         /////////
///////////////////////////////////////////////////////////

// declares a variable named a that has the value 1
var a = 1
// assigns the value 2 to the variable a
a = 2
// a has the value 2

// declares a constant named one with the value 1
var one = 1
one = 2 // this gives an error because we cannot change the value of a constant


////////////////////////////////////////////////////
/////////         Naming Variables         /////////
////////////////////////////////////////////////////

// Variables should usually be named using alphabetical characters. For example: sum, number, grade, money

// If you want your variable’s name to contain multiple words then you should start each word in the name with an uppercase letter except for the first one. For example you want a variable that holds the number of students in a class than you should name it numberOfStudents instead of numberofstudents because the first one is more readable.
// This naming convention is called CamelCase.

// It’s recommanded to use descriptive names for variables. But don’t overdo it, for example numberOfStudents is a reasonable name while numberOfStudentsInTheCurrentClass is too long. A good rule of thumb is to use at most 3 words for the name of a variable.

// We could have used a way shorter name for the variable above, for example we could have called it n. The disadvantage with short variable names is that they’re not expressive. If you read your code after 2 months you most likely won’t remember what n means. But numberOfStudents is immediately obvious.

// Generally its not a good idea to have variables that consist of a single letters but there are some exceptions.
// When dealing with numbers that don’t represent something it’s ok to use single letter names.

///////////////////////////////////////////////////
/////////         Basic Operators         /////////
///////////////////////////////////////////////////

// The + operator returns the sum of two numbers
let sum = 1 + 2 // 3

// The - operator returns the difference of two numbers
let diff = 5 - sum // 5 - 3 = 2

// The * operator returns the product of two numbers
let mul = sum * diff // 3 * 2 = 6

// The / operator returns the numbers of times the  divisor(the number on
// the right side) divides into the dividend(the number on the left side)
// For example, when dividing 6 by 3, the quotient is 2, while 6 is called
// the dividend, and 3 the divisor.
// 13 divided by 5 would be 2 while the remainder would be 3.
let div = mul / diff // 6 / 2 = 3

// The remainder(modulo) operator returns the remainder of the division
let mod = 7 % 3 // 1 because 7/3 = 2 and remainder 1 (2 * 3 + 1 = 7)

// You can use parentheses to group operations
(1 + 1) * (5 - 2)

// Multiplication, division and remainder have higher precedence than
// addition and subtraction.
// For example: 5 + 2 * 3 = 5 + 6 = 11


///////////////////////////////////////////////////
/////////         Integer Division        /////////
///////////////////////////////////////////////////

// Addition, subtraction and multiplication behave pretty much as you expect. The tricky operations are division and remainder.
// Take for example 5 / 2. Normally you’d expect the result to be 2.5. In Swift dividing two integers also produces an integer this is acomplished by discarding the part of the number after the decimal point. So 5 / 2 = 2.
// The remainder operator or modulo operator (%) is used to get the remainder of an integer division. 5 % 2 = 1
// For 5 / 2:
// quotient = 5 / 2 = 2
// remainder = 5 % 2 = 1
// quotient * 2 + remainder = 5

// Generally speaking for two integers a and b this equations always hold
// quotient = a / b
// remainder = a % b
// b * quotient + remainder = a

// NOTICE: remainder = a - b * quotient
// This implies that remainder = a - b * (a / b) and
// a % b = a - b * (a / b)
// You can view a % b as a shorthand way of computing a - b * (a / b)

// NOTICE: if a % b = 0 then b divides a, that is a is a multiple of b.
// Example:
// 15 / 5 = 3
// 15 % 5 = 0 ->
// 15 = 5 * 3


///////////////////////////////////////////////////////////////////////////
/////////         Order of statemets and more Playgrounds         /////////
///////////////////////////////////////////////////////////////////////////

var numberOfApples = 7 // you have 7 apples
var numberOfOranges = 2 // you have 2 orages

// you eat an apple (numberOfApples = 6)
numberOfApples = numberOfApples - 1

// a wizard doubles your oranges (numberOfOranges = 4)
numberOfOranges = numberOfOranges * 2

var stashedFruits = numberOfApples + numberOfOranges // 10 (6 + 4)

// you receive 2 apples (numberOfApples = 8). stashedFruits remains unchanged!
numberOfApples += 2

stashedFruits /= 2 // you lose half your stashed fruits 5 (10 / 2)


///////////////////////////////////////////////////
/////////         Print Statement         /////////
///////////////////////////////////////////////////

// will print Hello Swift! in the console
// you can print any text between quotes
print("Hello Swift!")

print(1 + 2) // will print 3

var ten = 10

print(ten) // will print 10

import UIKit


///////////////////////////////////////
/////////         Max         /////////
///////////////////////////////////////
/*You are given two numbers a and b print the largest one.*/

var a = 11
var b = 22

// your code here

if a > b {
    print(a)
} else {
    print(b)
}


///////////////////////////////////////////////
/////////         Even or Odd         /////////
///////////////////////////////////////////////
/*You are given a number. Print even if the number is even or odd otherwise.*/

// HINT
// Use the remainder (%) operator to determine if the number is even or odd

let number = 2

// your code here

if number % 2 == 0 {
    print("even")
} else {
    print("odd")
}


////////////////////////////////////////////////
/////////         Divisibility         /////////
////////////////////////////////////////////////
/*You are given two numbers a and b. Print "divisible" if a is divisible by b and "not divisible" otherwise.*/

// HINT 1
// Use the remainder (%) operator to check if b divides a.

// HINT 2
// To check if b divides a you need to check if the remainder of the division of a to b is 0.

var aD = 12
var bD = 3

// your code here

if aD % bD == 0 {
    print("divisible")
} else {
    print("not divisible")
}


///////////////////////////////////////////////////
/////////         Two of the same         /////////
///////////////////////////////////////////////////
/*You are given three variables a, b and c. Check if at least two variables have the same value. If that is true printAt least two variables have the same value otherwise print All the values are different.*/

// HINT
// Use the OR (||) operator to chain multiple equality checks

var aT = 2
var bT = 3
var cT = 2

// your code here

if (aT == bT) || (aT == cT) || (bT == cT) {
    print("At least two variables have the same value")
} else {
    print("All the values are different")
}


/////////////////////////////////////////////
/////////         Breakfast         /////////
/////////////////////////////////////////////
/*You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days).
 Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you need to throw out.
 If you can cook bacon and eggs print you can cook bacon and eggs.
 If you need to throw out any ingredients for each one print a line with the text throw out <ingredient> (where <ingredient> is bacon or eggs) in any order.*/

// HINT 1
// Check for the case where you can cook bacon and eggs first.

// HINT 2
// In the else branch check the ingredients that need to be thrown out.

var baconAge = 6 // the bacon is 6 days old
var eggsAge = 12 // eggs are 12 days old

// your code here

if baconAge <= 7 && eggsAge <= 21 {
    // bacon and eggs are ok, we can cook
    print("you can cook bacon and eggs")
} else {
    // either eggs or bacon or both are spoiled
    if baconAge > 7 {
        print("throw out bacon")
    }
    if eggsAge > 21 {
        print("throw out eggs")
    }
}


/////////////////////////////////////////////
/////////         Leap Year         /////////
/////////////////////////////////////////////
/*You are given a year, determine if it’s a leap year. A leap year is a year containing an extra day. It has 366 daysinstead of the normal 365 days. The extra day is added in February, which has 29 days instead of the normal 28 days. Leap years occur every 4 years. 2012 was a leap year and 2016 will also be a leap year.
 The above rule is valid except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not also divisible by 400. For example 1900 was not a leap year, but 2000 was. Print Leap year! or Not a leap year! depending on the case.*/

// HINT
// Use the remainder (%) operator to check for divisibility by 4. Don’t forget to check the special case when year is divisible by 100.

let year = 2014

// your code here

if year % 4 == 0 {
    if year % 100 == 0 && year % 400 != 0 {
        print("Not a leap year!")
    } else {
        print("Leap year!")
    }
} else {
    print(year, terminator: "")
    print("Not a leap year!")
}


/////////////////////////////////////////////
/////////         Leap Year         /////////
/////////////////////////////////////////////
/*If you use random() it will give you a random number. Generate a random number and use it to simulate a coin toss. Print heads or tails.*/

// HINT
// Use the remainder operator (%) to check if the randomNumber is even(heads) or odd(tails).

// this imports the Swift standard library which has arc4random
import Foundation

var randomNumber = arc4random()

// your code here

if randomNumber % 2 == 0 {
    print("heads")
} else {
    print("tails")
}

// FUNNY SOLUTION

if randomNumber == 0 {
    print("it fell under the couch")
} else if (randomNumber % 2 == 0) {
    print("tails")
} else {
    print("head")
}


/////////////////////////////////////////
/////////         Min 4         /////////
/////////////////////////////////////////
/*You are given four variables a, b, c and d. Print the value of the smallest one.*/

// HINT
// Use a variable to hold the minimum value and initalize it with a. Assume that a is the smallest value. You’ll have to update the value in case a is not the smallest value.

var aM = 5
var bM = 6
var cM = 3
var dM = 4

// your code here

var min = aM

if bM < min {
    min = bM
}

if cM < min {
    min = cM
}

if dM < min {
    min = dM
}

print(min)


///////////////////////////////////////////
/////////         Testing         /////////
///////////////////////////////////////////
/*Test if number is divisible by 3, 5 and 7. For example 105 is divisible by 3, 5 and 7, but 120 is divisible only by 3 and 5 but not by 7. If number is divisible by 3, 5 and 7 print number is divisible by 3, 5 and 7otherwise print number is not divisible by 3, 5 and 7.*/

// HINT
// Use the remainder (%) operator to check for divisibility.

let numberT = 210

// your code here

if numberT % 3 == 0 && numberT % 5 == 0 && numberT % 7 == 0 {
    print("number is divisible by 3, 5 and 7")
} else {
    print("number is not divisible by 3, 5 and 7")
}


/////////////////////////////////////////
/////////         Point         /////////
/////////////////////////////////////////
/*Find out if the point (x, y) is inside of the rectangle with the lower-left corner in (lowX, lowY) and the upper-right in (highX, highY). Print inside or not inside depending on the case.*/

// HINT
// Chain multiple comparisons together using the AND (&&) operator.

var x = 1
var y = 2
var lowX = 1
var lowY = 1
var highX = 3
var highY = 3

// your code here

if x >= lowX && y >= lowY && x <= highX && y <= highY {
    print("inside")
} else {
    print("not inside")
}


/////////////////////////////////////////////
/////////         Hitpoints         /////////
/////////////////////////////////////////////
/*You are working on a videogame where the character has a certain number of hitpoints(HP) ranging from 0 to 100.
 100 represents full health
 0 represents dead.
 You want to add regenerating health to the game using the following rules:
 
 HP always regenerates up to numbers of the form X0 (75 -> 80 , 32 -> 40 …)
 When HP is below 20 it regenerates up to 20 (13 -> 20, 5 -> 20, …)
 If the character has 0 HP then he doesn’t regenerate life (he’s dead)
 Given the current hp of the character stored in a variable hp print the hp the player will have after regenerating life.*/

// HINT 1
// Check for the case when hp is between 1 and 19 first

// HINT 2
// Discard the last digit of hp via division

var hp = 75

// your code here

if hp > 0 && hp < 20 {
    hp = 20
} else if hp % 10 != 0 {
    hp = hp / 10
    hp = hp + 1
    hp = hp * 10
}

print(hp)
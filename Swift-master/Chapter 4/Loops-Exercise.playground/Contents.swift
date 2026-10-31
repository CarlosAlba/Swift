import UIKit


//////////////////////////////////////////////
/////////         Chalkboard         /////////
//////////////////////////////////////////////
/*Write a program that writes “I will not skip the fundamentals!” N times.*/

// HINT
// The solution to a similar problem was shown in the theory, you can use either for or while to solve this problem.

var N = 10

// your code here

// SOLUTION 1

// with a while loop
var times = 0
while times < N {
    print("I will not skip the fundamentals!")
    times = times + 1
}

// SOLUTION 2
for _ in 1...N {
    print("I will not skip the fundamentals!")
}


///////////////////////////////////////////
/////////         Squares         /////////
///////////////////////////////////////////
/*Print the first N square numbers. A square number, also called perfect square, is an integer that is obtained by squaring some other integer; in other words, it is the product of some integer with itself (ex. 1, 4 = 2 * 2, 9 = 3* 3 …).*/

var Ns = 10

// your code here

var cnt = 1

while cnt <= Ns {
    print(cnt * cnt)
    
    cnt = cnt + 1
}


///////////////////////////////////////////////
/////////         Powers of 2         /////////
///////////////////////////////////////////////
/*Print the powers of 2 that are less than or equal to N.*/

// HINT 
// The first power of 2 is 2. Given a power of 2, power, the next power of 2 is power * 2.

var Np = 10

var power = 2

// your code here

while power <= Np {
    print(power)
    power = power * 2
}


////////////////////////////////////////////////////////
/////////         Alternative Counting         /////////
////////////////////////////////////////////////////////
/*Write all the numbers from 1 to N in alternative order, one number from the left side (starting with one) and one number from the right side (starting from N down to 1).*/

// HINT 1
// Use two variables to remember the left and right index that you need to print next.

// HINT 2
// There’s a special case you’ll have to handle when N is odd.

var Na = 5

// ypur code here

var left = 1
var right = Na

while left < right {
    print(left)
    print(right)
    left += 1
    right -= 1
}

if left == right {
    print(left)
}


//////////////////////////////////////////
/////////         Square         /////////
//////////////////////////////////////////
/*Given an integer N draw a square of N x N asterisks. Look at the examples.*/

// HINT 1
// Try printing a single line of * first.

// HINT 2
// You can use print("") to print an empty line.

var Nsq = 4

// your code here

for _ in 1...Nsq {
    for _ in 1...Nsq {
        print("*", terminator: "")
    }
    print("")
}


/////////////////////////////////////////////
/////////         Rectangle         /////////
/////////////////////////////////////////////
/*Given two integers N and M draw a rectangle of N x M asterisks. Look at the examples.*/

// HINT
// You’ll need to change the bounds of one of the loops.

var Nr = 3
var M = 7

// your code here

for _ in 1...Nr {
    for _ in 1...M {
        print("*", terminator: "")
    }
    print("")
}


////////////////////////////////////////////
/////////         Triangle         /////////
////////////////////////////////////////////
/*Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have iasterisks on it.*/

// HINT
// First you’ll want to print a single *. Then you’ll want to print 2 *, then 3 *. How many stars will you print at the i-th iteration?

var Nt = 3

// your code here

for i in 1...Nt {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}


///////////////////////////////////////////
/////////         Pyramid         /////////
///////////////////////////////////////////
/*Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should beN-i spaces followed by i*2-1 asterisks.*/

// HINT 1
// How many stars do you have to print at each iteration?

// HINT 2
// How many spaces do you have to print at each iteration?

// HINT 3
// What’s a general formula for the sequence: 1, 3, 5 ,7 ?

var Npy = 3

// your code here

for i in 1...Npy {
    for _ in 0..<(Npy-i) {
        print(" ", terminator: "")
    }
    
    for _ in 1...2*i-1 {
        print("*", terminator: "")
    }
    print("")
}

///////////////////////////////////////////
/////////         Rhombus         /////////
///////////////////////////////////////////
/*Given an integer N draw a rhombus of asterisks, like the ones in the examples.*/

// HINT 1
// Notice that the upper half of the rhombus is the pyramid from the previous exercise.

// HINT 2
// The second half is the pyramid only inverted and with the last line removed.

let Nrh = 4

// your code here

for i in 1...Nrh {
    for _ in 0..<(Nrh-i) {
        print(" ", terminator: "")
    }
    
    for _ in 1...2*i-1 {
        print("*", terminator: "")
    }
    print("")
}

if (Nrh > 1) {
    for j in 2...Nrh {
        let i = Nrh - j + 1
        for _ in 0..<(Nrh-i) {
            print(" ", terminator: "")
        }
        
        for _ in 1...2*i-1 {
            print("*", terminator: "")
        }
        print("")
    }
}


/////////////////////////////////////////////////
/////////         Aztec Pyramid         /////////
/////////////////////////////////////////////////
/*Given an integer N draw a Aztec pyramid of asterisks, like the ones in the examples.*/

// HINT 1
// You’ll have to draw each line twice.

// HINT 2
// How many stars are on each line?

// HINT 3
// What’s the general term for the sequence 2, 6, 10, 14, … ?

let Nap = 3

for i in 1...Nap {
    for _ in 1...2 {
        for _ in 0..<(Nap-i) {
            print("  ", terminator: "")
        }
        
        for _ in 1...2*i-1 {
            print("**", terminator: "")
        }
        print("")
    }
}


///////////////////////////////////////////////
/////////         Chess Board         /////////
///////////////////////////////////////////////
/*Given an integer N draw a chess board of size N x N. Each line of the chess board should have spaces and number signs(#) alternating. A space represents a white cell and the number sign a black one. The chess board should be bordered using +, - and | like in the examples below.*/

// HINT 1
// First consider how to draw the top and bottom border.

// HINT 2
// How can you alternate between ” ” and “#” ? Consider the remainder(%) when dividing the indices of the loops by 2.

let Nc = 8

// your code here

// prints the top border
print("+", terminator: "")
for _ in 1...Nc {
    print("-", terminator: "")
}
print("+")

for i in 1...Nc {
    // prints the left border
    print("|", terminator: "")
    for j in 1...Nc {
        if i % 2 == j % 2 {
            print("#", terminator: "")
        } else {
            print(" ", terminator: "")
        }
    }
    // prints the right border a a new line
    print("|")
}

// prints the bottom border
print("+", terminator: "")
for _ in 1...Nc {
    print("-", terminator: "")
}
print("+")


/////////////////////////////////////////////
/////////         Fibonacci         /////////
/////////////////////////////////////////////
/*Write a program that prints the first N Fibonacci numbers. The first two Fibonacci numbers are 1, the rest of the elements are the sum of the previous two. The first seven numbers are 1, 1, 2, 3, 5, 8 and 13.*/

// HINT
// Use two variables a = 1 and b = 0. At each step a should be the i-th Fibonacci number, and b the i-1-th.

var Nf = 10

var a = 1
var b = 0

// your code here

for _ in 1...Nf {
    print(a)
    let tmp = a + b
    b = a
    a = tmp
}


//////////////////////////////////////////////
/////////         Leap Years         /////////
//////////////////////////////////////////////
/*Write a program that prints the next N leap years starting with leapYear. A leap year is a year containing an extra day. It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 daysinstead of the normal 28 days. Leap years occur every 4 years, 2012 was a leap year and 2016 will be a leap year.
 Except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not divisible by 400. For example 1900 was not a leap year, but 2000 was.*/

// HINT
// Keep in mind that the variable leapYear is a leap year to begin with. Given a leap year how can you generate the next leap year ?

var Nl = 5

// your code here

// the current leap year
var leapYear = 2016

// the number of leap years that were printed so far
var cont = 0

// until we print N years
while cont < Nl {
    // print the next leap year
    print(leapYear)
    
    // increase the counter
    cont += 1
    
    // go to the next leap year
    leapYear += 4
    if leapYear % 100 == 0 && leapYear % 400 != 0 {
        leapYear += 4
    }
}


///////////////////////////////////////////
/////////         Reverse         /////////
///////////////////////////////////////////
/*You are given a number. Print the number with the digits in reversed order.*/

// HINT
// To get the last digit use the % operator (the reminder to 10 is the last digit). To get the number without the last digit divide by 10.

var number = 1234

// your code here

while number > 0 {
    print(number % 10, terminator: "")
    number /= 10
}


///////////////////////////////////////
/////////         GCD         /////////
///////////////////////////////////////
/*You are given two numbers a and b. Find and print the greatest common divisor of a and b.
 The greatest common divisor of a and b is the largest number that divides both a and b.*/

// HINT 1
// The smallest divisor of a and b is 1. And the greatest value can be at most min(a, b).

// HINT 2
// Find the minimum of a and b and store it in maxDiv.
// Write a for loop that goes from 1 to maxDiv and check each number.

var ag = 24
var bg = 18

// your code here

var maxDiv = ag

if bg < maxDiv {
    maxDiv = bg
}

var gcd = 1

for i in 1...maxDiv {
    if (ag % i == 0) && (bg % i == 0){
        gcd = i
    }
}

print(gcd) // 6


/////////////////////////////////////////////////
/////////         Prime numbers         /////////
/////////////////////////////////////////////////
/*You are given a number. Print "prime" if the number is a prime and "not prime" otherwise.
 A number is a prime if it has exactly 2 distinct divisors (1 and itself).*/

// HINT 
// Count the number of divisors of the input number.

var numberP = 17

// your code here

var numberOfDivisors = 0

for i in 1...numberP {
    if numberP % i == 0 {
        numberOfDivisors += 1
    }
}

if numberOfDivisors == 2 {
    print("prime")
} else {
    print("not prime")
}


/////////////////////////////////////////////////////
/////////         Factoring numbers         /////////
/////////////////////////////////////////////////////
/*You are given a number. Decompose number into prime factor and write it as an expression(see examples).*/

// HINT
// Dividing a number by one of it’s factors will result in a smaller number. A number can have a prime factor divisor multiple times, ex: 8 = 2 * 2 * 2

var numberF = 10

// your code here

print("\(numberF) = ", terminator: "")

var isFirst = true

for i in 2...numberF {
    if numberF % i == 0 {
        while (numberF % i == 0) {
            numberF /= i
            
            if isFirst {
                isFirst = false
            } else {
                print(" * ", terminator: "")
            }
            
            print(i, terminator: "")
        }
    }
}


///////////////////////////////////////////////////
/////////         Free of squares         /////////
///////////////////////////////////////////////////
/*Find all numbers free of squares less than or equal to N. A number is free of square if it cannot be divided by any square number except 1.*/

var Nfs = 10

print(1)

for i in 2...Nfs {
    var isFree = true
    
    var a = i
    
    for j in 2...a {
        if a % j == 0 {
            var put = 0
            while (a % j == 0) {
                a /= j
                put += 1
            }
            if put > 1 {
                isFree = false
            }
        }
    }
    
    if isFree {
        print(i)
    }
}

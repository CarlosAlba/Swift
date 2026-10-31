import UIKit


///////////////////////////////////////
/////////         Max         /////////
///////////////////////////////////////
/*Print the maximum value from listOfNumbers.*/

// HINT
// Assume that the first element of the array is also the largest.

var listOfNumbersM = [1, 2, 3, 10, 100]

// your code here

var maxVal = listOfNumbersM[0]

for number in listOfNumbersM {
    if maxVal < number {
        maxVal = number
    }
}

print(maxVal)


///////////////////////////////////////
/////////         Odd         /////////
///////////////////////////////////////
/*Print all the odd numbers from listOfNumbers.*/

var listOfNumbersO = [1, 2, 3, 10, 100]

// your code here

for number in listOfNumbersO {
    if number % 2 != 0 {
        print(number)
    }
}


///////////////////////////////////////
/////////         Sum         /////////
///////////////////////////////////////
/*Print the sum of all the numbers from listOfNumbers.*/

// HINT
// Store the sum in a variable. Keep increasing it.

var listOfNumbersS = [1, 2, 3, 10, 100]

// your code here

var sum = 0

for number in listOfNumbersS {
    sum += number
}

print(sum)


/////////////////////////////////////////////
/////////         Odd Index         /////////
/////////////////////////////////////////////
/*Print all the numbers from listOfNumbers that are located at odd indexes.*/

// HINT
// Use a while loop and the index subscripts.

var listOfNumbersI = [1, 2, 3, 10, 100]

var i = 1

// your code here

while i < listOfNumbersI.count {
    print(listOfNumbersI[i])
    i += 2
}
// or
for i in listOfNumbersI {
    print(i)
}


//////////////////////////////////////////////
/////////         Going back         /////////
//////////////////////////////////////////////
/*Print the numbers from listOfNumbers in reverse order on separate lines.*/

// HINT
// Use a loop that counts from the last index down to the first one.

var listOfNumbersG = [1, 2, 3, 10, 100, 2]

var iG = listOfNumbersG.count - 1

// your code here

while iG >= 0 {
    print(listOfNumbersG[i])
    iG -= 1
}
// or
for i in 1...listOfNumbersG.count {
    print(listOfNumbersG[listOfNumbersG.count - i])
}


///////////////////////////////////////////
/////////         Reverse         /////////
///////////////////////////////////////////
/*Reverse the order of the elements in listOfNumbers without creating any additional arrays.*/

// HINT 1
// Use 2 indices.

// HINT 2
// At each step advance with the indices one step closer to the middle of thearray.

var listOfNumbersR = [1, 2, 3, 10, 100]

// your code here

var firstIndex = 0
var lastIndex = listOfNumbersR.count - 1

while firstIndex < lastIndex {
    // swap
    let tmp = listOfNumbersR[firstIndex]
    listOfNumbersR[firstIndex] = listOfNumbersR[lastIndex]
    listOfNumbersR[lastIndex] = tmp
    
    // go to next pair
    firstIndex += 1
    lastIndex -= 1
}


///////////////////////////////////////////
/////////         Sorting         /////////
///////////////////////////////////////////
/*Sort the values in listOfNumbers in descending order.*/

var listOfNumbersSor = [3, 2, 100, 10, 1]

var nElements = listOfNumbersSor.count

// your code here

// Insertion Sort
for fixedIndex in 0..<nElements {
    for i in fixedIndex+1..<nElements {
        if listOfNumbersSor[fixedIndex] < listOfNumbersSor[i] {
            let tmp = listOfNumbersSor[fixedIndex]
            listOfNumbersSor[fixedIndex] = listOfNumbersSor[i]
            listOfNumbersSor[i] = tmp
        }
    }
}

// Bubble Sort
var didSwap = true

while didSwap {
    didSwap = false
    
    for i in 0..<nElements - 1 {
        if listOfNumbersSor[i] < listOfNumbersSor[i+1] {
            let tmp = listOfNumbersSor[i]
            listOfNumbersSor[i] = listOfNumbersSor[i+1]
            listOfNumbersSor[i+1] = tmp
            didSwap = true
        }
    }
}

//  The Swift way
// In real life people don’t implement sorting anymore, they just call it.

// array.sort(by: <) // will sort the array in ascending order
// array.sort(by: >) // will sort the array in descending order

// you can also use the sorted method to create a sorted copy
//let sortedArray = array.sorted(by: <)

listOfNumbersSor.sort(by: <)

print(listOfNumbersSor)
// [1, 2, 3, 10, 100]

listOfNumbersSor.sort(by: >)

print(listOfNumbersSor)
// [100, 10, 3, 2, 1]

//So to solve the problem we would write:

listOfNumbersSor.sort(by: <)


//////////////////////////////////////////
/////////         Search         /////////
//////////////////////////////////////////
/*Find out if x appears in listOfNumbers. Print yes if true and no otherwise.*/

// HINT
// First assume that the element does not appear in the array. Store that state in a boolean variable.

var listOfNumbersSearch = [1, 2, 3, 10, 100]

var x = 10

// your code here

var xAppears = false

for number in listOfNumbersSearch {
    if number == x {
        xAppears = true
    }
}

if xAppears {
    print("yes")
} else {
    print("no")
}


////////////////////////////////////////////////
/////////         Intersection         /////////
////////////////////////////////////////////////
/*Print all the elements from otherNumbers that appear in listOfNumbers. Don’t print anything if listOfNumbers andotherNumbers have no common elements.*/

// HINT
// Use an approach similar to the Search problem for each element fromotherNumbers.

var listOfNumbersInt = [1, 2, 3, 10, 100]

var otherNumbers = [1, 2, 3, 4, 5, 6]

// your code here

for otherNumber in otherNumbers {
    for number in listOfNumbersInt {
        if number == otherNumber {
            print(number)
            break
        }
    }
}


////////////////////////////////////////////
/////////         Divisors         /////////
////////////////////////////////////////////
/*Print all the numbers from listOfNumbers that are divisible by at least one number from divisors.*/

// HINT
// Try solving the problem for the case when listOfNumbers contains a single element.

var listOfNumbersD = [1, 2, 3, 10, 100]
var divisors = [7, 5]

// your code here

for number in listOfNumbersD {
    for divisor in divisors {
        if number % divisor == 0 {
            print(number)
            break
        }
    }
}


///////////////////////////////////////////////////////////
/////////         Greatest divisor of all         /////////
///////////////////////////////////////////////////////////
/*Find and print the greatest common divisor of all the numbers in numbers. A common divisor of a list of numbers is a number that divides all of them.*/

// HINT
// Use an approach similar to the case with only 2 numbers.

var numbers = [12, 36, 720, 18]

// find the minimum value in numbers
var maxDiv = numbers[0]

for number in numbers {
    if number < maxDiv {
        maxDiv = number
    }
}

var gcd = 1

// find the biggest number that divides all the numbers
for divisor in 1...maxDiv {
    // we assume that divisor divides all numbers
    var dividesAll = true
    for number in numbers {
        // if we find one that does not divide by divisor
        if number % divisor != 0 {
            // we remeber and stop searching
            dividesAll = false
            break
        }
    }
    
    // if divisor divides all numbers then it's the biggest one so far
    if dividesAll {
        gcd = divisor
    }
}

print(gcd)


/////////////////////////////////////////////
/////////         Fibonacci         /////////
/////////////////////////////////////////////
/*Generate the first N numbers in the fibonacci sequence. Store them in an array named fibonacci and print them one on each line.*/

// Approach 1
// Use append to add the next numbers

var N = 30
var fibonacci = [1, 1]

// your code here

for i in 2...N - 1 {
    fibonacci.append(fibonacci[i-1] + fibonacci[i-2])
}

for number in fibonacci {
    print(number)
}

// Approach 2
// Create an array with ones and compute all the numbers

var fib = [Int](repeating: 1, count: N)

// your code here

for i in 2..<N {
    fib[i] = fib[i-1] + fib[i-2]
}

for number in fib {
    print(number)
}


////////////////////////////////////////////
/////////         Divisors         /////////
////////////////////////////////////////////
/*Given a number find and store all it’s divisors in an array called divisors, then print the divisors in ascending order on separate lines.*/

// HINT
// Any value between 1 and number can be a divisor of number.

var numberD = 60
var divisorsD: [Int] = []

// your code here

for divisor in 1...numberD {
    if numberD % divisor == 0 {
        divisors.append(divisor)
    }
}

for divisor in divisors {
    print(divisor)
}


//////////////////////////////////////////
/////////         Digits         /////////
//////////////////////////////////////////
/*Find and store the digits of number from left to right in an array digits, and then print the digits on separate lines.*/

// HINT
// Store the digits from right to left if you find it easier. The digits from left to right are the reversed array.

var number = 12345
var digits: [Int] = []

// your code here

while number > 0 {
    let digit = number % 10
    
    digits = [digit] + digits
    
    number /= 10 // 12345 -> 1234 -> 123 -> 12 -> 1
}

for digit in digits {
    print(digit)
}


//////////////////////////////////////////
/////////         Unique         /////////
//////////////////////////////////////////
/*Create a list unique with all the unique numbers from listOfNumbers, and then print the numbers on separate lines.*/

var listOfNumbersU = [1, 2, 3, 1, 2, 10, 100]

// your code here

var unique: [Int] = []

for number in listOfNumbersU {
    var numberIsNew = true
    
    for otherNumber in unique {
        if number == otherNumber {
            numberIsNew = false
            break
        }
    }
    
    if numberIsNew {
        unique.append(number)
    }
}

for number in unique {
    print(number)
}

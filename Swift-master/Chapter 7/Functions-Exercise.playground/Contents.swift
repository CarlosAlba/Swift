import UIKit
import Foundation // Use Foundation for this chapter.


///////////////////////////////////////
/////////         Min         /////////
///////////////////////////////////////
/*Write a function named min2 that takes two Int values, a and b, and returns the smallest one. Use _ to ignore the external parameter names for both a and b.*/

// HINT
// You can have multiple return statements in one function.

// Function Definition
// func min2(_ a: Int, _ b: Int) -> Int

// your code here

func min2(_ a: Int, _ b: Int) -> Int {
    if a < b {
        return a
    } else {
        return b
    }
}


//////////////////////////////////////////////
/////////         Last Digit         /////////
//////////////////////////////////////////////
/*Write a function that takes an Int and returns it’s last digit. Name the function lastDigit. Use _ to ignore the external parameter name.*/

// HINT
// Use the modulo(%) operator.

// Function Definition
// func lastDigit(_ number: Int) -> Int

// your code here

func lastDigit(_ number: Int) -> Int {
    return number % 10
}


/////////////////////////////////////////////////
/////////         First Numbers         /////////
/////////////////////////////////////////////////
/*Write a function named first that takes an Int named N and returns an array with the first N numbers starting from 1. Use _ to ignore the external parameter name.*/

// HINT
// Use the append function on arrays to create the required result.

// Function Definition
// func first(_ N: Int) -> [Int]

// your code here

func first(_ N: Int) -> [Int] {
    var numbers:[Int] = []
    
    for number in 1...N {
        numbers.append(number)
    }
    
    return numbers
}


/////////////////////////////////////////////
/////////         Countdown         /////////
/////////////////////////////////////////////
/*Write a function named countdown that takes a number N. The function should print the numbers from N to 1 with a one second pause in between and then write GO! in the end. To make the computer wait for one second call thesleep function from the standard library. The sleep function takes one parameter, the number of seconds to sleep.
 
 In order to use the sleep function you will need to import the Foundation framework.
 
 import Foundation
 // now you can use the sleep function
 
 sleep(1) //will wait for one second before executing the next line*/

// Function Definition
// func countdown(_ N: Int)

// your code here

func countdown(_ N: Int) {
    var i = N
    
    while i > 0 {
        print(i)
        
        sleep(1)
        
        i -= 1
    }
    
    print("GO!")
}


/////////////////////////////////////////////////
/////////         Prime Numbers         /////////
/////////////////////////////////////////////////
/*Implement the following functions. The divides function returns true if a is divisible by b and false otherwise. The countDivisors function should use the divides function to return the number of divisors of number. TheisPrime function should use the countDivisors function to determine if number is prime.*/

// HINT
// The isPrime function can be implemented in a single line using the countDivisors function.

// Function Definition
// Divides Function Definition
// func divides(_ a: Int, _ b: Int) -> Bool

// CountDivisors Function Definition
// func countDivisors(_ number: Int) -> Int

// IsPrime Function Definition
// func isPrime(_ number: Int) -> Bool

/*Examples:
 
 divides(3, 2) // false - 3 is not divisible by 2
 divides(6, 3) // true - 6 is divisible by 3
 
 countDivisors(2) // 2 - 1 and 2
 countDivisors(6) // 4 - 1, 2, 3 and 6
 countDivisors(12) // 6 - 1, 2, 3, 4, 6 and 12
 
 isPrime(2) // true
 isPrime(3) // true
 isPrime(10) // false
 isPrime(13) // true
 */

// your code here

func divides(_ a: Int, _ b: Int) -> Bool {
    return a % b == 0
}

func countDivisors(_ number: Int) -> Int {
    var cnt = 0
    for i in 1...number {
        if divides(number, i) {
            cnt += 1
        }
    }
    return cnt
}

func isPrime(_ number: Int) -> Bool {
    return countDivisors(number) == 2
}

////////////////////////////////////////////////
/////////         First Primes         /////////
////////////////////////////////////////////////
/*Using isPrime write a function named printFirstPrimes that takes a parameter named count of type Int that prints the first count prime numbers.*/

// HINT
// Use the isPrime function from the previous exercise.

// Function Definition
// func printFirstPrimes(_ count: Int)

// your code here

func printFirstPrimes(_ count: Int) {
    var i = 2
    var printed = 0
    while printed < count {
        if isPrime(i) {
            print(i)
            printed = printed + 1
        }
        i = i + 1
    }
}


////////////////////////////////////////////////
/////////         Repeat Print         /////////
////////////////////////////////////////////////
/*Implement a function named repeatPrint that takes a string message and a integer count as parameters. The function should print the message count times and then print a newline.*/

// HINT
// Don’t forget about the newline at the end.

// Function Definition
// func repeatPrint(message: String, count: Int)

// your code here

func repeatPrint(message: String, count: Int) {
    for _ in 1...count {
        print(message, terminator: "")
    }
    print("")
}


///////////////////////////////////////////
/////////         Reverse         /////////
///////////////////////////////////////////
/*Write a function named reverse that takes an array of integers named numbers as a parameter. The function should return an array with the numbers from numbers in reverse order.*/

// Function Definition
// func reverse(_ numbers: [Int]) -> [Int]

// your code here

func reverse(_ numbers: [Int]) -> [Int] {
    var reversed: [Int] = []
    
    for number in numbers {
        reversed.insert(number, at: 0)
    }
    
    return reversed
}


///////////////////////////////////////
/////////         Sum         /////////
///////////////////////////////////////
/*Write a function named sum that takes an array of integers and returns their sum.*/

// Function Definition
// func sum(_ numbers: [Int]) -> Int

// your code here

func sum(_ numbers: [Int]) -> Int {
    var sum = 0
    
    for number in numbers {
        sum += number
    }
    
    return sum
}


////////////////////////////////////////////////
/////////         Parse number         /////////
////////////////////////////////////////////////
/*Write a function named parse(digit:) that takes a string with one character as parameter. The function should return -1 if the input is not a digit character and the digit otherwise.
 
 parse(digit: "1") // 1
 parse(digit: "3") // 3
 parse(digit: "a") // -1*/

// HINT
// Use a string of digits let digits = "0123456789".

// Function Definition
// parse(digit:) Function Definition
// func parse(digit: String) -> Int

// isNumber Function Definition
// func isNumber(_ string: String) -> Bool

// parse(number:) Function Definition
// func parse(number: String) -> Int

// your code here

// Solution: parse(digit:)
// First we check if the given string is a number, if it is not we return -1. Next we initialize our result to 0. For each character in the given string we multiply the result by 10, shifting all digits with 1 position to the left and we add the result of parseDigit for the current digit.

func parse(digit: String) -> Int {
    let digits = "0123456789"
    
    var result = 0
    
    for character in digits.characters {
        let d = "\(character)"
        
        if d == digit {
            return result
        }
        
        result += 1
    }
    
    return -1
}

// Solution: isNumber
// If the string we’re given is empty we return false otherwise we iterate through all the characters in our string, if any of these characters returns -1 from our parseDigit function we return false. If none of them return -1 from parseDigit it means that all characters in our string are digits and we return true

func isNumber(_ string: String) -> Bool {
    if string.characters.count == 0 {
        return false
    }
    
    for character in string.characters {
        if parse(digit: "\(character)") == -1 {
            return false
        }
    }
    
    return true
}

// Using the parse(digit:) function you can determine if a string of length one is a digit or not. Implement a function named isNumber that takes an arbitrary length string and return true if the string contains only digits and falseotherwise. Note that empty strings should not be considered numbers.

isNumber("a") // false
isNumber("1") // true
isNumber("1234567890") // true
isNumber("12345abc") // false
isNumber("") // false

// Solution: parse(number:)
// First we check if the given string is a number, if it is not we return -1. Next we initialize our result to 0. For each character in the given string we multiply the result by 10, shifting all digits with 1 position to the left and we add the result of parse(digit:) for the current digit.

func parse(number: String) -> Int {
    if isNumber(number) != true {
        return -1
    }
    
    var result = 0
    for character in number.characters {
        let digit = "\(character)"
        
        result = result * 10 + parse(digit: digit)
    }
    
    return result
}

// Using the isNumber and parse(digit:) functions, write a function named parse(number:) that takes a string and returns it’s values as an integer or -1 if the string does not contain only digits.

parse(number: "1")     // 1
parse(number: "54321") // 54321
parse(number: "1337")  // 1337
parse(number: "12cd")  // -1


///////////////////////////////////////////////////
/////////         Time Difference         /////////
///////////////////////////////////////////////////
/*Write a function named timeDifference. It takes as input four numbers that represent two times in a day and returns the difference in minutes between them. The first two parameters firstHour and firstMinute represent the hour and minute of the first time. The last two secondHour and secondMinute represent the hour and minute of the second time. All parameters should have external parameter names with the same name as the local ones.*/

// HINT
// You’ll have to handle the case when the difference between minutes is less than 0.

// Function Definition
// func timeDifference(firstHour: Int, firstMinute: Int, secondHour: Int, secondMinute: Int) -> Int

// your code here

func timeDifference(firstHour: Int,
                    firstMinute: Int,
                    secondHour: Int,
                    secondMinute: Int) -> Int {
    var hourDifference = secondHour - firstHour
    var minuteDifference = secondMinute - firstMinute
    
    if minuteDifference < 0 {
        hourDifference -= 1
        minuteDifference += 60
    }
    
    return hourDifference * 60 + minuteDifference
}


/////////////////////////////////////////////////
/////////         Correct Pairs         /////////
/////////////////////////////////////////////////
/*Write a function named verify that takes a string expression of open and closed parentheses ((, )) and returnstrue if they are correctly paired and false otherwise.*/

// HINT 1
// Keep track of how many open parentheses you’ve encountered and how many closed parentheses.

// HINT 2
// In a correct pairing the number of closed parentheses you encounter can never be greater than the number of open parentheses.

// Function Definition
// func verify(expression: String) -> Bool

// your code here

func verify(expression: String) -> Bool {
    var open = 0
    var closed = 0
    for char in expression.characters {
        let character = "\(char)"
        if character == "(" {
            open += 1
        } else {
            closed += 1
            if closed > open {
                return false
            }
        }
    }
    return open == closed
}


/////////////////////////////////////////
/////////         Mario         /////////
/////////////////////////////////////////
/*Mario uses energy points to walk and jump. He can jump maximum maxJump meters up or down. You have the height of each 1 meter portion of a level in the heights array. Determine if Mario can finish the level and how much energy he needs to do it. Mario uses 1 energy point to walk one meter and 2 * jumpHeight energy points to jumpHeightmeters. Write a function named levelCost that takes heights and maxJump as parameters and returns -1 if Mario cannot finish the level or the total energy cost that he would need to finish the level.
 
 In the beginning Mario will be on the first 1 meter section of the level and the heights array will always have more than one element. All heights have a value greater or equal to 1.*/

// HINT
// Think about how you can compute the energy required for a single step.

// Function Definition
// func levelCost(heights: [Int], maxJump: Int) -> Int

// your code here

func levelCost(heights: [Int], maxJump: Int) -> Int {
    var totalEnergy = 0
    var lastHeight = 0
    
    for height in heights {
        if lastHeight == 0 {
            lastHeight = height
        } else {
            var jumpHeight = lastHeight - height
            if jumpHeight < 0 {
                jumpHeight = -jumpHeight
            }
            
            if jumpHeight > maxJump {
                return -1
            }
            
            if jumpHeight == 0 {
                totalEnergy += 1
            } else {
                totalEnergy += 2 * jumpHeight
            }
            
            lastHeight = height
        }
    }
    
    return totalEnergy
}


/////////////////////////////////////////
/////////         Queue         /////////
/////////////////////////////////////////
/*A queue is a data structure that can perform two operations:
 
 push which takes a value and adds it at the end of the queue
 pop which returns the value from the start of the queue and removes it from the queue
 Your task is to implement the push and pop operations. The most simple way to represent a queue is using an array. Here are some example operations.*/

// HINT
// For the pop function you’ll have to retrieve the first element in the queue.

// Function Definition
// Push Function Definition
// func push(_ number: Int, _ queue: inout [Int])

// The pop function should take queue as an inout parameter and return the first number from the queue after removing it. If the queue is empty it should return nil – the result type should be an optional integer(Int?).

// Pop Function Definition
// func pop(_ queue: inout [Int]) -> Int?

// your code here

func push(_ number: Int, _ queue: inout [Int]) {
    queue.append(number)
}

func pop(_ queue: inout [Int]) -> Int? {
    let result = queue.first
    
    if queue.count > 0 {
        queue.remove(at: 0)
    }
    
    return result
}

// here we define an empty queue
var queue: [Int] = []

// add 1 in the queue
push(1, &queue) // queue = [1]

// add 2 in the queue
push(2, &queue) // queue = [1, 2]

// pop the first element
pop(&queue) // 1, queue = [2, 3]

// add 3 in the queue
push(3, &queue) // queue = [2, 3]

// pop the first element
pop(&queue) // 2, queue = [3]

// pop the first element
pop(&queue) // 3, queue = []

// pop the first element
pop(&queue) // returns nil because there are no elements in the queue
// queue = []

// The push function should take two parameters, the number and the queue as an inout parameter.


/////////////////////////////////////////
/////////         Stack         /////////
/////////////////////////////////////////
/*A stack is a data structure that can perform three operations:
 
 push adds a value on the top of the stack
 top returns the value from the top of the stack
 pop returns the value from the top of the stack and removes it from there
 Your task is to implement the push, top and pop operations. The most simple way to represent a stack is using an array. Here are some example operations.*/

// HINT
// You’ll have to get the last element from the stack for the top operation.

// Function Definition
// Push Function Definition
// func push(_ number: Int, _ stack: inout [Int])

// top takes one parameter, the stack, and returns the value of the top element or nil if the stack is empty – the result type should be and optional integer(Int?)

// Top Function Definition
// func top(_ stack: [Int]) -> Int?

// pop takes the stack as an inout parameter, and returns the value of the top element after it removes it. If thestack is empty it should return nil – the result type should be and optional integer(Int?)

// Pop Function Definition
// func pop(_ stack: inout [Int]) -> Int?

// your code here

func pushStack(_ number: Int, _ stack: inout [Int]) {
    stack.append(number)
}

func top(_ stack: [Int]) -> Int? {
    if stack.count == 0 {
        return nil
    }
    return stack[stack.count - 1]
}

func popStack(_ stack: inout [Int]) -> Int? {
    let result = top(stack)
    
    if stack.count > 0 {
        stack.remove(at: stack.count - 1)
    }
    
    return result
}

var stack: [Int] = []

pushStack(1, &stack) // stack = [1]

pushStack(2, &stack) // stack = [1, 2]

popStack(&stack) // 2, stack = [1]

pushStack(3, &stack) // stack = [1, 3]

popStack(&stack) // 3, stack = [1]

popStack(&stack) // 1, stack = []

popStack(&stack) // returns nil because there are no elements in the stack
// stack = []

// push takes two parameters, the number that will be pushed and the stack as an inout parameter.

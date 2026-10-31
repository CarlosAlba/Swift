import UIKit


/////////////////////////////////////////////
/////////         Fibonacci         /////////
/////////////////////////////////////////////
/*Implement a recursive function named fibonacci that takes a number N and returns the N-th fibonacci number. The first two fibonacci numbers are 1 and the rest are the sum of the previous two.*/

// HINT
// Remember that if N > 2 , fibonacci(N) = fibonacci(N - 1) + fibonacci(N - 2)

//Function Definition
// func fibonacci(_ i: Int) -> Int

// your code here

func fibonacci(_ i: Int) -> Int {
    if i <= 2 {
        return 1
    } else {
        return fibonacci(i - 1) + fibonacci(i - 2)
    }
}


/////////////////////////////////////////////
/////////         Factorial         /////////
/////////////////////////////////////////////
/*The factorial of a non-negative integer N, denoted N!, is the product of all the positive integer less than or equal toN. The value of 0! is defined as 1.
 
 1! = 1
 2! = 1 * 2 = 2
 3! = 1 * 2 * 3 = 6
 ...
 7! = 1 * 2 ... * 7 = 5040
 
 Write a recursive function named factorial that takes an integer N and returns it’s factorial.*/

// HINT
// N! = N * (N - 1)!

//Function Definition
// func factorial(_ N: Int) -> Int

// your code here

func factorial(_ N: Int) -> Int {
    if N == 1 {
        return 1
    } else {
        return N * factorial(N - 1)
    }
}


//////////////////////////////////////////
/////////         Digits         /////////
//////////////////////////////////////////
/*Implement a recursive function named digits that takes a positive integer number and return an array containing it’s digits in order.*/

// HINT
// To get the digits of a number you need to get the digits of the number without its last digit (divide by 10). And then add the last digit to that result.

//Function Definition
// func digits(_ number: Int) -> [Int]

// your code here

func digits(_ number: Int) -> [Int] {
    if number >= 10 {
        let firstDigits = digits(number / 10)
        let lastDigit = number % 10
        return firstDigits + [lastDigit]
    } else {
        return [number]
    }
}


/////////////////////////////////////////
/////////         Power         /////////
/////////////////////////////////////////
/*Write a recursive function pow that takes two numbers x and y as input and returns x to the power y.*/

// HINT
// A simple recursive formula we can use is x^y = x * x ^ (y - 1)

//Function Definition
// func pow(_ x: Int, _ y: Int) -> Int

// your code here

// Solution 1: tail recursion
// Using x^y = x * x^(y-1):

func pow(_ x: Int, _ y: Int) -> Int {
    if y == 0 {
        return 1
    } else {
        return x * pow(x, y - 1)
    }
}

// Solution 2: Exponentiation by squaring
// Using exponentiation by squaring:

func pow2(_ x: Int, _ y: Int) -> Int {
    if y == 0 {
        return 1
    } else if y == 1 {
        return x
    } else {
        // compute x^(y/2)
        let xy2 = pow2(x, y / 2)
        // if y is even
        if y % 2 == 0 {
            // x^y is x^(y/2) squared
            return xy2 * xy2
        } else {
            // x^y is x^(y/2) squared times x
            return xy2 * xy2 * x
        }
    }
}


//////////////////////////////////////////
/////////         Euclid         /////////
//////////////////////////////////////////
/*Implement the Euclidian algorithm for getting the greatest common divisor of two numbers by using repeated subtractions. The algorithm starts with two numbers and subtracts the smallest one from the other one until one of them becomes zero, the other one is the greatest common divisor of the original number. The gcd function takes two numbers as input and returns their greatest common divisor. Implement the algorithm as a recursive function.
 
 Algorithm example:
 
 10 2
 8 2
 6 2
 4 2
 2 2
 2 0 // 2 is the greatest common divisor of 10 and 2
 
 9 6
 3 6
 3 3
 3 0 // 3 is the greatest common divisor of 9 and 6
 
 35 49
 35 14
 21 14
 7  14
 7  7
 7  0 // 7 is the greatest common divisor of 35 and 49*/

//Function Definition
// func gcd(_ a: Int, _ b: Int) -> Int

// your code here

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        if a > b {
            return gcd(a-b, b)
        } else {
            return gcd(a, b-a)
        }
    }
}


/////////////////////////////////////////////////
/////////         Binary Search         /////////
/////////////////////////////////////////////////
/*Searching a sorted collection is a common task. For example finding a word in a dictionary, or a number in a phone book.
 
 Binary search is one of the fundamental algorithms in computer science. In its most basic form, binary search finds the position of an element, known as the search key, in a sorted array. It does this by repeatedly halving the search interval. Initially the search interval ranges from the first index of the array to the last index. In each step the algorithm compares the middle value from the search interval with the search key. If the middle value is less than the key, then all the value from the first half of the array are lower than the key, that means that the search key cannot be located in the first half, the search will continue in the second half of the array. The same logic will apply if the middle element is greater than the key. If the middle value is equal to the search key then the key has been found.
 
 Let’s take a few examples to understand the algorithm, left if the first index of the search interval and right is the last one:
 
 numbers = [1, 2, 4, 5, 7, 8, 9, 12] // 8 elements
 
 ---------------------------------------------------------------------
 key = 4
 
 // Step 1 (left = 0, right = 7)
 // the middle element is 5 which is greater than 4
 // the search will continue in the first half of the search interval
 
 // Step 2 (left = 0, right = 3)
 // the middle element is 2 which is less than 4
 // the search will continue in the second half of the search interval
 
 // Step 3 (left = 2, right = 3)
 // the middle element is 4 - we found the key!
 
 ---------------------------------------------------------------------
 key =  12
 
 // Step 1 (left = 0, right = 7)
 // the middle element is 5 which is less than 12
 // the search will continue in the second half of the search interval
 
 // Step 2 (left = 4, right = 7)
 // the middle element is 8 which is less than 12
 // the search will continue in the second half of the search interval
 
 // Step 3 (left = 6, right = 7)
 // the middle element is 9 which is less than 12
 // the search will continue in the second half of the search interval
 
 // Step 4 (left = 7, right = 7)
 // the search interval has only one element which is equal to the key
 
 ---------------------------------------------------------------------
 key = 3
 
 // Step 1 (left = 0, right = 7)
 // the middle element is 5 which is greater than 3
 // the search will continue in the first half of the search interval
 
 // Step 2 (left = 0, right = 3)
 // the middle element is 2 which is less than 3
 // the search will continue in the second half of the search interval
 
 // Step 3 (left = 2, right = 3)
 // the middle element is 4 which is greater than 3
 // the search will continue in the first half of the search interval
 
 // Step 4 (left = 2, right = 2)
 // the search interval has only one element which is not equal to the key
 // the key could not be found in the array
 Implement the binary search function using recursion.*/

// HINT
// To start off consider the base case, we have to return true when key is equal to numbers[mid].

//Function Definition
// func binarySearch(_ key: Int, _ numbers: [Int], left: Int = 0, right: Int = -1) -> Bool

// your code here

func binarySearch(_ key: Int,
                  _ numbers: [Int],
                  left: Int = 0,
                  right: Int = -1) -> Bool {
    var right = right
    if right == -1 {
        right = numbers.count - 1
    }
    
    if left < right {
        let mid = (left + right) / 2
        if key < numbers[mid] {
            return binarySearch(key, numbers, left: left, right: mid)
        } else if key > numbers[mid] {
            return binarySearch(key, numbers, left: mid + 1, right: right)
        } else {
            return true
        }
    } else {
        return numbers[left] == key
    }
}


///////////////////////////////////////////////////
/////////         Towers of Hanoi         /////////
///////////////////////////////////////////////////
/*There are three pegs labeled A, B and C. On the first peg there are N stacked disks, each one with a different diameter from biggest (on bottom) to smallest. Move all the disks from the first peg to the second one while respecting the rules:
 
 only one disk can be moved at a time
 each move consists of taking the upper disk from one of the stacks and placing it on top of another stack
 no disk may be placed on top of a smaller disk
 N = 5
 
 *          |          |
 ***         |          |
 *****        |          |
 *******       |          |
 *********      |          |
 ---------------------------------
 We provide code that will help you visualize the algorithm. When you want to move a disk from a peg to another callmove(from:to:):
 
 moveDisk(from: "A", to: "B")
 moveDisk(from: "A", to: "C")
 moveDisk(from: "B", to: "C")
 Output:
 
     *          |          |
    ***         |          |
   *****        |          |
  *******       |          |
 *********      |          |
 ---------------------------------
 
 moves from A to B
 
 
     |          |          |
    ***         |          |
   *****        |          |
  *******       |          |
 *********      *          |
 ---------------------------------
 
 moves from A to C
 
 
     |          |          |
     |          |          |
   *****        |          |
  *******       |          |
 *********      *         ***
 ---------------------------------
 
 moves from B to C
 
 
     |          |          |
     |          |          |
   *****        |          |
  *******       |          *
 *********      |         ***
 ---------------------------------*/

// HINT
// To move N disks from a peg A to peg B, you must first move N-1 disks from peg A to peg C, then move the last disk from A onto B and finally move N-1 disks from C to B. In other words to solve the Hanoi(N) problem you must first solve the Hanoi(N-1) problem two times. When you only have to move one disk you can just make the move.

//Function Definition
// func hanoi(_ N: Int, from firstPeg: String = "A", to secondPeg: String = "B", using thirdPeg: String = "C")

// your code here

// change N to set the dificulty of the problem
let N = 4

func first(N: Int) -> [Int] {
    var numbers:[Int] = []
    
    for number in 1...N {
        numbers.append(number)
    }
    
    return numbers
}

func reverseList(numbers: [Int]) -> [Int] {
    var reverse: [Int] = []
    for number in numbers {
        reverse = [number] + reverse
    }
    return reverse
}

func printDisk(size: Int) {
    let length = size * 2 - 1
    let spaces = N - size + 1
    
    for _ in 1...spaces {
        print(" ", terminator: "")
    }
    
    for _ in 1...length {
        print("*", terminator: "")
    }
    
    for _ in 1...spaces {
        print(" ", terminator: "")
    }
}

func printBlank() {
    for _ in 1...N {
        print(" ", terminator: "")
    }
    print("|", terminator: "")
    for _ in 1...N {
        print(" ", terminator: "")
    }
}

func printBotton() {
    for _ in 1...3 {
        for _ in 1...2*N+1 {
            print("-", terminator: "")
        }
    }
    print("\n")
}

class Hanoi {
    var leftPeg: [Int] = []
    var middlePeg: [Int] = []
    var rightPeg: [Int] = []
    
    func resetWithLevel(level: Int) {
        leftPeg = first(N: level).reversed()
        middlePeg = []
        rightPeg = []
    }
    
    func move(from: String, to: String) {
        let disk = popDisk(peg: from)
        pushDisk(disk: disk, peg: to)
        
        print("moves from \(from) to \(to)\n")
        
        
        showPegs()
    }
    
    func popDisk(peg: String) -> Int {
        switch peg {
        case "A":
            return leftPeg.removeLast()
        case "B":
            return middlePeg.removeLast()
        case "C":
            return rightPeg.removeLast()
        default:
            return -1
        }
    }
    
    func pushDisk(disk: Int, peg: String) {
        switch peg {
        case "A":
            leftPeg.append(disk)
        case "B":
            middlePeg.append(disk)
        case "C":
            rightPeg.append(disk)
        default:
            1
        }
    }
    
    func showPegs() {
        print("")
        
        let pegs = [leftPeg, middlePeg, rightPeg]
        
        for i in 1...N {
            for peg in pegs {
                if peg.count > N - i {
                    printDisk(size: peg[N - i])
                } else {
                    printBlank()
                }
            }
            print("")
        }
        
        printBotton()
    }
    
    struct Static {
        static let instance = Hanoi()
    }
    
    class var sharedInstance: Hanoi {
        return Static.instance
    }
}

func initHanoi() {
    Hanoi.sharedInstance.resetWithLevel(level: N)
    Hanoi.sharedInstance.showPegs()
}

func moveDisk(from: String, to: String) {
    Hanoi.sharedInstance.move(from: from, to: to)
}

// this initializes the pegs
initHanoi()

// Example usage of the move function - remove this to get started

moveDisk(from: "A", to: "B")
moveDisk(from: "A", to: "C")
moveDisk(from: "B", to: "C")

func hanoi(_ N: Int,
           from firstPeg: String = "A",
           to secondPeg: String = "B",
           using thirdPeg: String = "C") {
    if N == 1 {
        moveDisk(from: firstPeg, to: secondPeg)
    } else {
        hanoi(N - 1, from: firstPeg, to: thirdPeg, using: secondPeg)
        moveDisk(from: firstPeg, to: secondPeg)
        hanoi(N - 1, from: thirdPeg, to: secondPeg, using: firstPeg)
    }
}

hanoi(N)

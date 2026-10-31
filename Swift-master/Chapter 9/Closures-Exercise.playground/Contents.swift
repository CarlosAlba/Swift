import UIKit


///////////////////////////////////////////
/////////         K Times         /////////
///////////////////////////////////////////
/*Write a function named applyKTimes that takes an integer K and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.*/

// HINT
// Remember that you can call a closure just like a regular function.

// Function Definition
// func applyKTimes(_ K: Int, _ closure: () -> ())

// your code here

func applyKTimes(_ K: Int, _ closure: () -> ()) {
    for _ in 1...K {
        closure()
    }
}

////////////////////////////////////////
/////////         Div3         /////////
////////////////////////////////////////
/*Use filter to create an array called multiples that contains all the multiples of 3 from numbers and then print it.*/

// HINT
// Think of the condition the numbers have to satisfy so that they’re divisible by3.

let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]

// your code here

let multiples = numbers.filter { $0 % 3 == 0 }

print(multiples)


///////////////////////////////////////
/////////         Max         /////////
///////////////////////////////////////
/*Find the largest number from numbers and then print it. Use reduce to solve this exercise.*/

// HINT 1
// What would be the initial value for our reduce function?

// HINT 2
// How can you “combine” 2 numbers to get the maximum between them?

let numbersM = [4, 7, 1, 9, 6, 5, 6, 9]

// your code here

let max = numbersM.reduce(numbersM[0]) {
    if $0 > $1 {
        return $0
    } else {
        return $1
    }
}

print(max) // 9

////////////////////////////////////////
/////////         Join         /////////
////////////////////////////////////////
/*Join all the strings from strings into one using reduce. Add spaces in between strings. Print your result.*/

// HINT 1
// What would be the initial value for our reduce function?

// HINT 2
// How can you combine the strings so that they have spaces between them?

let strings = ["Hello", "Swift"]

// your code here

let string = strings.reduce("") {
    if $0 == "" {
        return $1
    } else {
        return $0 + " " + $1
    }
}

print(string)


///////////////////////////////////////////
/////////         Sorting         /////////
///////////////////////////////////////////
/*Sort numbers in ascending order by the number of divisors. If two numbers have the same number of divisors the order in which they appear in the sorted array does not matter.*/

// HINT
// You’ll have to pass a closure that tells you how the numbers should be compared.

var numbersS = [1, 2, 3, 4, 5, 6]

// your code here

numbersS.sort(by: { x, y in
    func countDivisors(_ number: Int) -> Int {
        var count = 0
        for i in 1...number {
            if number % i == 0 {
                count += 1
            }
        }
        return count
    }
    return countDivisors(x) < countDivisors(y)
})


//////////////////////////////////////////
/////////         Chains         /////////
//////////////////////////////////////////
/*Find the sum of the squares of all the odd numbers from numbers and then print it. Use map, filter and reduce to solve this problem.*/

// HINT
// The order in which you apply the map, filter and reduce operations is important.

var numbersC = [1, 2, 3, 4, 5, 6]

// your code here

let sum = numbersC.filter {
    $0 % 2 == 1 //select all the odd numbers
    }.map {
        $0 * $0 // square them
    }.reduce(0, +) // get their sum

print(sum)


////////////////////////////////////////////
/////////         For each         /////////
////////////////////////////////////////////
/*Implement a function forEach(array: [Int], _ closure: Int -> ()) that takes an array of integers and a closure and runs the closure for each element of the array.*/

// Function Definition
// func forEach(_ array: [Int], _ closure: (Int) -> ())


// your code here

func forEach(_ array: [Int], _ closure: (Int) -> ()) {
    for number in array {
        closure(number)
    }
}


//////////////////////////////////////////////////
/////////         Combine arrays         /////////
//////////////////////////////////////////////////
/*Implement a function combineArrays that takes 2 arrays and a closure that combines 2 Ints into a single Int. The function combines the two arrays into a single array using the provided closure.
 Assume that the 2 arrays have equal length.*/

// HINT
// You’ll have to iterate both arrays at the same time using an index.

// Function Definition
// func combineArrays(_ array1: [Int], _ array2: [Int], _ closure: (Int,Int) -> Int) -> [Int]

// your code here

func combineArrays(_ array1: [Int],
                   _ array2: [Int],
                   _ closure: (Int,Int) -> Int) -> [Int] {
    var result: [Int] = []
    for i in 0..<array1.count {
        result.append(closure(array1[i],array2[i]))
    }
    return result
}

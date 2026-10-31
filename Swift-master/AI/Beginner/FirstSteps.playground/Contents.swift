// 1. Print numbers 1-100. If divisible by 3, print "Fizz". If by 5, "Buzz". If by both, "FizzBuzz".

func fizzBuzz() {
    var number = 100
    
    while number >= 0 {
        if number % 3 == 0 {
            print("Fizz")
        }
        if number % 5 == 0 {
            print("Buzz")
        }
        number = number - 1
    }
}

fizzBuzz()

// 2. Function that checks if a given string is a palindrome.

func palindromeChecker(_ input: String) -> Bool {
    return input == String(input.reversed())
}

palindromeChecker("ama")

// 3. Given an array of integers, return the sum of all elements.

func arraySum(_ arrayA: [Int]) -> Int {
    var total = 0
    
    for element in arrayA {
        total = total + element
    }
    
    return total
}

arraySum( [1, 2, 3, 4, 5] )


// 4 .Calculate the factorial of a number using recursion.

func factorial( _ n: Int) -> Int {
    if n <= 1 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

factorial(3)

// 5. Write a function to reverse a given string.

func reverseString(_ input: String) -> String {
    return String(input.reversed())
}

reverseString( "Hello World" )

func reverseStringComplex(_ input: String) -> String {
    var reversedString = ""
    let characters = Array(input)
    
    for i in (0..<characters.count) {
        reversedString += String(characters[characters.count - i - 1])
    }
    
    return reversedString
}

reverseStringComplex("Hola")

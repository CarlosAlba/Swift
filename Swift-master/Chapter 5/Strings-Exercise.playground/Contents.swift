import UIKit


/////////////////////////////////////////////
/////////         Full name         /////////
/////////////////////////////////////////////
/*You are given the firstName and lastName of a user. Create a string variable called fullName that contains the full name of the user.*/

// HINT
// Use string concatenation or use string interpolation.

var firstName = "Martin"
var lastName = "Poops"

// your code here

var fullName = firstName + " " + lastName
// or
fullName = "\(firstName) \(lastName)"


///////////////////////////////////////
/////////         Sum         /////////
///////////////////////////////////////
/*You are given two numbers a and b. Compute the sum of a and b and create a string stored in a variable namedformattedSum that contains the sum written like bellow:

For a = 2 and b = 5

formattedSum = "2 + 5 = 7"

For a = 12 and b = 19

formattedSum = "12 + 19 = 31"
 */

// HINT
// Use string interpolation.

var a = 14
var b = 23

// your code here

var sum = a + b

var formattedSum = "\(a) + \(b) = \(sum)"


///////////////////////////////////////////
/////////         Replace         /////////
///////////////////////////////////////////
/*You are given a string stored in the variable aString. Create new string named replacedString that contains the characters of the original string with all the occurrences of the character "e" replaced by "*".*/

// HINT
// Create replacedString step by step by iterating over the characters ofaString

var aString = "Replace the letter e with *"

var replacedString = ""

// your code here

for character in aString.characters {
    let char = "\(character)"
    if char == "e" {
        replacedString = replacedString + "*"
    } else {
        replacedString = replacedString + char
    }
}


///////////////////////////////////////////
/////////         Reverse         /////////
///////////////////////////////////////////
/*You are given a string stored in variable aString. Create a new string called reverse that contains the original string in reverse order. Print the reversed string.
 
 "Hello" -> "olleH"
 "Swift" -> "tfiwS"
 */

// HINT
// Convert each character into a string and join them in reverse order.

var aStringR = "Hello"
var reverse = ""

// your code here

for character in aStringR.characters {
    let asStringR = "\(character)"
    reverse = asStringR + reverse
}

print(reverse) //olleH


//////////////////////////////////////////////
/////////         Palindrome         /////////
//////////////////////////////////////////////
/*Print true if aString is a palindrome, and false otherwise. A palindrome is a string which reads the same backward or forward.*/

// HINT
// How can reversing a string help here ?

let aStringP = "anitalavalatina" // anita lava la tina

var reverseP = ""

// your code here

for character in aStringP.characters {
    let char = "\(character)"
    reverseP = char + reverseP
}

print(aStringP == reverseP)


/////////////////////////////////////////
/////////         Words         /////////
/////////////////////////////////////////
/*Split this string into words and print them on separate lines*/

// HINT
// Iterate over the characters in the string. Keep track of the longest word you’ve encountered so far.

var sentence = "Hello world of Swift"

var word = ""

// your code here

for character in sentence.characters {
    if character == " " {
        print(word)
        word = ""
    } else {
        word += "\(character)"
    }
}

print(word)

// Hello
// world
// of
// Swift


/////////////////////////////////////////////
/////////         Long word         /////////
/////////////////////////////////////////////
/*Find the longest word in the problem description*/

// HINT
// Keep track of the longest word you encounter and also keep track of it’s length.

var sentenceL = "Hello longest Swift"

// this will help the algorithm see the last word
sentenceL += " "

var wordL = ""
var length = 0

var max = 0
var longestWord = ""

for character in sentenceL.characters {
    if character == " " {
        if length > max {
            max = length
            longestWord = wordL
        }
        wordL = ""
        length = 0
    } else {
        wordL += "\(character)"
        length += 1
    }
}

print(longestWord)


///////////////////////////////////////////////
/////////         Magic Time!         /////////
///////////////////////////////////////////////
/*Use this magic * operator to solve the next challenge:*/

func *(string: String, scalar: Int) -> String {
    let array = Array(repeating: string, count: scalar)
    return array.joined(separator: "")
}

print("cat " * 3 + "dog " * 2)
// cat cat cat dog dog

var newLine = "\n" * 2

print(newLine)

/*By using only one print() statement draw a rectangle of size N x M out of asterisks.*/

// HINT
// This problem can be solved by applying the magic operator exactly 2 times.

var newLineM = "\n"

var N = 5
var M = 10

var line = "*" * M
line += newLineM

var rectangle: String = line * N

print(rectangle)
// **********
// **********
// **********
// **********
// **********

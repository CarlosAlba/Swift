import UIKit


////////////////////////////////////////////////
/////////         Introduction         /////////
////////////////////////////////////////////////

// Often when you’re dealing with data you don’t just have a fixed amount of elements. Take for example a program where you compute the average of multiple grades in a class:

var grade1 = 4
var grade2 = 3

var average = Double(grade1 + grade2) / 2.0
print("Average grade: \(average)")

// What if we wanted the program to also work when we have 3 grades?
// We’d have to change our program to work with 3 grades.

var grade1I = 4
var grade2I = 3
var grade3I = 5

var averageI = Double(grade1I + grade2I + grade3I) / 3.0
print("Average grade: \(averageI)")

// After doing this it will no longer work with 2 grades. What if we wanted our program to work with any number of grades between 1 grade and 10 grades.

// It’s not practical to write a separate program for each case. We would like to have something like a list of grades. This list would contain any number of grades. This is where arrays come in.


/////////////////////////////////////////////////////
/////////         What is an array?         /////////
/////////////////////////////////////////////////////

// An array is an ordered collection that stores multiple values of the same type. That means that an array of Int can only store Int values. And you can only insert Int values in it.


////////////////////////////////////////////////////
/////////         Declaring Arrays         /////////
////////////////////////////////////////////////////

// To declare an array you can use the square brackets syntax([Type]).

var arrayOfIntsD: [Int]

//You can initialize an array with an array literal. An array literal is a list of values, separated by commas, surrounded by a pair of square brackets:

//[value, value, ...]

var arrayOfInts: [Int] = [1, 2]
var arrayOfStrings: [String] = ["Hello", "Swift"]

// Keep in mind that you can create empty arrays if you don’t write any values.

var emptyArray: [Int] = []


/////////////////////////////////////////////////
/////////         Getting values        /////////
/////////////////////////////////////////////////

// To get all the values from an array you can use the for-in syntax. This is called iterating through an array.

var listOfNumbers = [1, 2, 3, 10, 100] // an array of numbers
var listOfNames = ["Martin", "Poops", "Ninja"] // an array of strings

for number in listOfNumbers {
    print(number)
}
// 1
// 2
// 3
// 10
// 100

for name in listOfNames {
    print("Hello " + name + "!")
}
// Hello Andrei!
// Hello Silviu!
// Hello Claudiu!

// To get the number of elements in an array you can use the count property.

var listOfNumbersG = [1, 2, 3, 10, 100] // an array of numbers

print(listOfNumbersG.count) // 5

// You can access specific elements from an array using the subscript syntax. To do this pass the index of the value you want to retrieve within square brackets immediately after the name of the array. Also you can get a subsequence from the array if you pass a range instead of an index.
// Element in an array are indexed from 0 to the number of elements minus one. So an array with 3 elements will have elements at index 0, 1 and 2.

var listOfNumbersV = [1, 2, 3, 10, 100] // an array of numbers

listOfNumbersV[0] // 1
listOfNumbersV[1] // 2
listOfNumbersV[2] // 3
listOfNumbersV[3] // 10
listOfNumbersV[4] // 100
//listOfNumbersV[5]// this gives an error uncomment this line to see it

listOfNumbersV[1...2] // [2, 3] this is a subsequence of the original array


/////////////////////////////////////////////////
/////////         Adding values         /////////
/////////////////////////////////////////////////

// You can add elements to the end of an array using the append method.

// create a empty array of integers
var numbers: [Int] = []

for i in 1...5 {
    numbers.append(i)
    print(numbers)
    // [1]
    // [1, 2]
    // [1, 2, 3]
    // [1, 2, 3, 4]
    // [1, 2, 3, 4, 5]
}

print(numbers)
// [1, 2, 3, 4, 5]

// To insert an item into the array at a specified index, call the array’s insert(at:) method.

var numbersA: [Int] = [1, 2, 3]

numbersA.insert(0, at: 0) // numbers will be [0, 1, 2, 3]
numbersA.insert(9, at: 1) // numbers will be [0, 9, 1, 2, 3]

// You can also append another array using the += operator.

var numbersV: [Int] = [1, 2, 3]

numbersV += [4, 5, 6] // numbers will be [1, 2, 3, 4, 5, 6]

// or just one value
numbersV += [7] // numbers will be [1, 2, 3, 4, 5, 6, 7]


///////////////////////////////////////////////////
/////////         Removing Values         /////////
///////////////////////////////////////////////////

// To remove an item from a specific index call the remove(at:) method.

var numbersR: [Int] = [1, 2, 3]

numbersR.remove(at: 0) // numbers will be [2, 3]


///////////////////////////////////////////////////
/////////         Changing values         /////////
///////////////////////////////////////////////////

// To change a value use the assignment operator (=) after the subscript syntax.

var numbersC: [Int] = [1, 2, 3]

numbersC[0] = 7 // numbers will be [7, 2, 3]
numbersC[1] = 5 // numbers will be [7, 5, 3]
numbersC[2] = 4 // numbers will be [7, 5, 4]

// Or you could replace a subsequence of values using range subscripting.

var numbersCA: [Int] = [1, 2, 3, 4, 5, 6]

numbersCA[2...4] = [0, 0] // numbers will now be [1, 2, 0, 0, 6].

//Keep in mind that you don’t need to replace a sequence with another sequence with the same number of elements. In the example above numbers had 6 elements and after the replacement of the subsequence 2...4 ([3, 4, 5]) it had 5.


//////////////////////////////////////////////////
/////////         Type Inference         /////////
//////////////////////////////////////////////////

// Thanks to Swift’s type inference, you don’t have to declare the type of an array if you initialize it with something other than an empty array literal([]).

// arrayOfNumbers will be of type [Int]
var arrayOfNumbers = [1, 2, 3]

// arrayOfStrings will be of type [String]
var arrayOfStringsT = ["Hello", "Swift"]

// arrayOfBools will be of type [Bool]
var arrayOfBools = [true, false, true, true, false]

// this is the proper way of declaring a empty array of Int - [Int]
var emptyArrayOfInts: [Int] = []

// this will infer into [Int] because the right hand side of the
// assignment has a known type [Int]
var anotherEmptyArray = emptyArrayOfInts


/////////////////////////////////////////////////
/////////         Copy Behavior         /////////
/////////////////////////////////////////////////

// Swift’s Array types are implemented as structures. This means that arrays are copied when they are assigned to a new constant or variable, or when they are passed to a function or method.

var numbersB = [1, 2, 3]
var otherNumbers = numbersB // this will create a copy of numbers

// this will append 4 to otherNumbers but not to numbers
otherNumbers.append(4)

// numbers = [1, 2, 3]
// otherNumbers = [1, 2, 3, 4]


//////////////////////////////////////////////
/////////         Mutability         /////////
//////////////////////////////////////////////

// If you create an array and assign it to a variable, the collection that is created will be mutable. This means that you can change (or mutate) the collection after it is created. Changes can be done by adding, removing, or changing items in the collection. Conversely, if you assign an array to a constant, that array is immutable, and its size and contents cannot be changed. In other words if you want to be able to change an array declare it using the varkeyword, and if you don’t want to be able to change it use the let keyword.

var numbersM = [1, 2, 3, 4, 5, 6]

numbersM.append(7) // [1, 2, 3, 4, 5, 6, 7]
numbersM.remove(at: 0) // [2, 3, 4, 5, 6, 7]

var strings = ["Hello",  "Swift"]

// the next lines will not compile!
strings.append("!") // this will give an error because strings is immutable
strings.remove(at: 0) // this will give a similar error

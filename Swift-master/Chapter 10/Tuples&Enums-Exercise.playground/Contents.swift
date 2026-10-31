import UIKit


////////////////////////////////////////
/////////         Game         /////////
////////////////////////////////////////
/*You are working on a game in which your character is exploring a grid-like map. You get the original location of the character and the steps he will take.
 A step .Up will increase the x coordinate by 1. A step .Down will decrease the x coordinate by 1. A step .Right will increase the y coordinate by 1. A step .Left will decrease the y coordinate by 1.
 Print the final location of the character after all the steps have been taken.*/

// HINT 1
// Use a switch statement.

// HINT 2
// Modify the location tuple based on what case you’re handling in theswitch statement.

enum Direction {
    case up
    case down
    case left
    case right
}

var location = (x: 0, y: 0)

var steps: [Direction] = [.up, .up, .left, .down, .left]

// your code here

for step in steps {
    switch step {
    case .up:
        location.y += 1
    case .down:
        location.y -= 1
    case .right:
        location.x += 1
    case .left:
        location.x -= 1
//    default:
//        break
    }
}

print(location)


///////////////////////////////////////////
/////////         Min Max         /////////
///////////////////////////////////////////
/*Write a function named minmax that takes two integers and returns both the minimum and the maximum values inside a tuple.*/

// HINT
// A single comparison is enough to determine both the minimum and the maximum value.

// Function Definition
// func minmax(_ a: Int, _ b: Int) -> (Int, Int)

// your code here

func minmax(_ a: Int, _ b: Int) -> (Int, Int) {
    if a < b {
        return (a, b)
    } else {
        return (b, a)
    }
}


/////////////////////////////////////////////////////////
/////////         Rock, Paper, Scissors         /////////
/////////////////////////////////////////////////////////
/*1) Define an enumeration named HandShape with three members: .rock, .paper, .scissors.
 2) Define an enumeration named MatchResult with three members: .win, .draw, .lose.
 3) write a function called match that takes two hand shapes and returns a match result. It should return the outcome for the first player (the one with the first hand shape).*/

// HINT 1
// Handle the case when the hands result in a draw first.

// HINT 2
// Determine if a win has occurred.

// Function Definition
// func match(_ first: HandShape, _ second: HandShape) -> MatchResult

// your code here

enum HandShape {
    case rock
    case paper
    case scissors
}

enum MatchResult {
    case win
    case draw
    case lose
}

func match(_ first: HandShape, _ second: HandShape) -> MatchResult {
    if first == second {
        return .draw
    }
    
    if first == .rock && second == .scissors {
        return .win
    }
    
    if first == .paper && second == .rock {
        return .win
    }
    
    if first == .scissors && second == .paper {
        return .win
    }
    
    return .lose
}


/////////////////////////////////////////////
/////////         Fractions         /////////
/////////////////////////////////////////////
/*You are given 2 tuples of a, b type (Int,Int) representing fractions. The first value in the tuple represents the numerator, the second value represents the denominator. Create a new tuple sum of type (Int,Int) that holds the sum of the fractions.*/

// HINT
// To add 2 fractions together you have to get them to a common denominator.

var a = (5,8)
var b = (17,9)

// your code here

let numerator = a.0 * b.1 + b.0 * a.1
let denominator = a.1 * b.1
var sum = (numerator, denominator)


/////////////////////////////////////////
/////////         Money         /////////
/////////////////////////////////////////
/*You are given the CoinType enumeration which describes different coin values and moneyArray which has tuples(ammount, coinType). Print the total value of the coins in the array.*/

// HINT
// Remember that .rawValue gets the numeric value associated with an enum value.

// your code here

enum CoinType: Int {
    case penny = 1
    case nickle = 5
    case dime = 10
    case quarter = 25
}


var moneyArray:[(Int,CoinType)] = [(10,.penny),
                                   (15,.nickle),
                                   (3,.quarter),
                                   (20,.penny),
                                   (3,.dime),
                                   (7,.quarter)]

var totalMoney = 0

for (amount, coinType) in moneyArray {
    totalMoney += amount * coinType.rawValue
}

print(totalMoney)


////////////////////////////////////////////////////
/////////         Counting Strings         /////////
////////////////////////////////////////////////////
/*You are given an array of strings stored in the variable strings. Create a new array named countedStringscontaining values of type (String,Int). Each tuple contains a string from the strings array followed by an integer indicating how many times it appears in the strings array. Each string should only appear once in thecountedStrings array.*/

// HINT
// Keep in mind that you can’t change a tuple when iterating an array using the for in syntax. You’ll have to iterate using an index.

// your code here

var strings = ["tuples", "are", "awesome", "tuples", "are", "cool",
               "tuples", "tuples", "tuples", "shades"]

var countedStrings: [(String,Int)] = []

for string in strings {
    var alreadyExists = false
    
    for i in 0..<countedStrings.count {
        if (countedStrings[i].0 == string) {
            countedStrings[i].1 += 1
            alreadyExists = true
        }
    }
    if alreadyExists == false {
        let _ = (string,1)
        countedStrings.append((string,1))
    }
}

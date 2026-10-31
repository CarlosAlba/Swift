import UIKit


//////////////////////////////////////////
/////////         Encode         /////////
//////////////////////////////////////////
/*You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a message which contains only lowercase letters and spaces. Use the code dictionary to encode the message and print it.*/

// HINT 1
// If a character doesn’t have a corresponding encoded character leave it unchanged.

// HINT 2
// Build the encoded message step by step by getting the corresponding encoded character from the dictionary.

var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

var message = "hello world"

// your code here

var encodedMessage = ""

for char in message.characters {
    let character = "\(char)"
    
    if let encodedChar = code[character] {
        // letter
        encodedMessage += encodedChar
    } else {
        // space
        encodedMessage += character
    }
}

print(encodedMessage)


//////////////////////////////////////////
/////////         Decode         /////////
//////////////////////////////////////////
/*You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the code dictionary to decode the message and print it.*/

// HINT
// You’ll have to invert the code dictionary. Create a new dictionary for this.

var encodedMessageD = "uijt nfttbhf jt ibse up sfbe"

// your code here

var decoder: [String:String] = [:]

// reverse the code
for (key, value) in code {
    decoder[value] = key
}

var decodedMessage = ""

for char in encodedMessageD.characters {
    let character = "\(char)"
    
    if let encodedChar = decoder[character] {
        // letter
        decodedMessage += encodedChar
    } else {
        // space
        decodedMessage += character
    }
}

print(decodedMessage)


/////////////////////////////////////////
/////////         Names         /////////
/////////////////////////////////////////
/*You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.*/

// HINT
// Keep in mind that persons is an array of dictionaries, you’ll have to process this array to get the required data.

// your code here

var people: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]

var firstNames: [String] = []

for person in people {
    if let firstName = person["firstName"] {
        print(firstName)
        firstNames.append(firstName)
    }
}


//////////////////////////////////////////////
/////////         Full names         /////////
//////////////////////////////////////////////
/*You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.*/

var fullNames: [String] = []

// your code here

// Solution 1

for person in people {
    if let firstName = person["firstName"] {
        if let lastName = person["lastName"] {
            let fullName = "\(firstName) \(lastName)"
            fullNames.append(fullName)
        }
    }
}

// Solution 2

for person in people {
    var fullName = " "
    for (key, value) in person {
        if key == "lastName" {
            fullName += value
        } else {
            fullName = value + fullName
        }
    }
    fullNames += [fullName]
}

print(fullNames)


//////////////////////////////////////////////
/////////         Best score         /////////
//////////////////////////////////////////////
/*You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the best score and print his full name.*/

// HINT
// Keep track of the person with the best score that you’ve encountered.

// your code here

var peopleB: [[String:Any]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 23
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]

var topPerson = peopleB[0]
var bestScore = topPerson["score"] as! Int

for person in peopleB {
    if let score = person["score"] as? Int {
        if bestScore < score  {
            bestScore = score
            topPerson = person
        }
    }
}

if let first = topPerson["firstName"] as? String,
    let second = topPerson["lastName"] as? String  {
    print("\(first) \(second)")
}


///////////////////////////////////////////////
/////////         Leaderboard         /////////
///////////////////////////////////////////////
/*You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format:
 
 1. full name - score
 2. ...
 ...*/

// HINT
// Sort the list of people using a function that compares two dictionaries.

// your code here

func compareScores(_ first: [String:Any], second: [String:Any]) -> Bool {
    if let a = first["score"] as? Int {
        if let b = second["score"] as? Int {
            return a > b
        }
    }
    return false
}

peopleB.sort(by: compareScores)

for (index, person) in peopleB.enumerated() {
    if let firstName = person["firstName"] as? String {
        if let lastName = person["lastName"] as? String  {
            if let score = person["score"] as? Int {
                print("\(index + 1). \(firstName) \(lastName) - \(score)")
            }
        }
    }
}


/////////////////////////////////////////////
/////////         Frequency         /////////
/////////////////////////////////////////////
/*You are given an array of integers. Find out the frequency of each one.
 The frequency of a number is the number of times it appears in the array.
 Print the numbers in ascending order followed by their frequency.*/

// HINT 1
// Use a dictionary to keep track of the frequency.

// HINT 2
// Keep track of all the unique numbers of the array

// your code here

var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]

var frequency: [Int:Int] = [:]
var uniqueNumbers: [Int] = []

for number in numbers {
    if let oldFr = frequency[number] {
        frequency[number] = oldFr + 1
    } else {
        uniqueNumbers.append(number)
        frequency[number] = 1
    }
}

uniqueNumbers.sort(by: <)

for number in uniqueNumbers {
    print("\(number) \(frequency[number]!)")
}

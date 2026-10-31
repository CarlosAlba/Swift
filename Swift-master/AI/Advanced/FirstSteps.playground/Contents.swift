// 1. Check if two strings are anagrams of each other.

func anagram(_ input1: String, _ input2: String) -> Bool {
    let sorted1 = input1.lowercased().sorted()
    let sorted2 = input2.lowercased().sorted()
    
    return sorted1 == sorted2
}

anagram("listen", "silent")

func anagramsComplex(_ input1: String, _ input2: String) -> Bool {
    // Step 1: If lengths differ, they can't be anagrams
        if input1.count != input2.count {
            return false
        }

        // Step 2: Create a frequency dictionary
        var frequency: [Character: Int] = [:]

        // Step 3: Count characters in first string
        for char in input1.lowercased() {
            frequency[char, default: 0] += 1
        }

        // Step 4: Subtract counts using second string
        for char in input2.lowercased() {
            frequency[char, default: 0] -= 1
            if frequency[char]! < 0 {
                return false
            }
        }

        // Step 5: Ensure all values are zero
        return frequency.values.allSatisfy { $0 == 0 }
}

anagramsComplex("apple", "ppael")

// 2. Create a struct for a "Car" with properties like make, model, and year.

struct Car {
    let make: String
    let model: String
    let year: Int
    
    func description() -> String {
        return "Make: \(make), Model: \(model), Year: \(year)"
    }
}

let myCar = Car(make: "Toyota", model: "Camry", year: 2021)

myCar.description()


// 3. Write a function that safely unwraps and prints an optional string.

func printOptionalString1(_ optionalString: String?) {
    
    let printString = optionalString ?? "No value provided"
}

printOptionalString1(nil)

func printOptionalString2(_ optionalString: String?) {
    
    guard let safeString = optionalString else {
        print("No Value provided")
        return
    }
    
    print(safeString)
}

printOptionalString2(nil)

func printOptionalString3(_ optionalString: String?) {
    
    if let safeString = optionalString {
        print(safeString)
    } else {
        print("No value provided")
    }
}

printOptionalString3(nil)

// 4. Define a protocol `Vehicle` and make a class `Bike` that conforms to it.

protocol Vehicle {
    var wheels: Int { get }
}

class Bike: Vehicle {
    var wheels: Int
    
    init(wheels: Int) {
        self.wheels = wheels
    }
}

let myBike = Bike(wheels: 4)

myBike.wheels


// 5. Create a function that accepts a closure and executes it.

let myHello = {
    print("Hello")
}

myHello()

let printString: (String) -> Void = {
    input in print(input)
}

printString("Hello World")

func multiplyNumbers(_ numA: Int, _ numB: Int, operation: (Int, Int) -> Int) {
    
    let result = operation(numA, numB)
    print("Result: \(result)")
}

multiplyNumbers(2, 3) { a, b in
    return a * b
}

import UIKit

var greeting = "Hello, playground"

var thing = "cars"

let closer = {
    print("Hola \(thing)")
}

let closer2 = { [thing] in
    print("Hola \(thing)")
}

thing = "airplanes"

closer()

closer2()

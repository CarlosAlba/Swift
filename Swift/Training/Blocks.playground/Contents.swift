import UIKit

var thing = "cars"

let closer = {
    print("Hi \(thing)")
}

let closer2 = { [thing] in // TODO: check closer "in"
    print("Hi \(thing)")
}

thing = "airplanes"

closer()

closer2()


//     * They are two pointers wide, where the first pointer is a function pointer pointing to the code that implements the closure, and the second pointer optionally points to a reference counted object containing the closed-over state.
//  So, yes, the capture list is heap allocated, and it is reference counted.

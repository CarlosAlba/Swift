import UIKit

// The @autoclosure attribute can be applied to a closure parameter for a function, and automatically creates a closure from an expression you pass in. When you call a function that uses this attribute, the code you write isn't a closure, but it becomes a closure, which can be a bit confusing – even the official Swift reference guide warns that overusing autoclosures makes your code harder to understand.

func printTest1(_ result: () -> Void) {
    print("Before")
    result()
    print("After")
}

printTest1({ print("Hello") })

func printTest2(_ result: @autoclosure () -> Void) {
    print("Before")
    result()
    print("After")
}

printTest2(print("Hello"))

// The @autoclosure attribute is used inside Swift wherever code needs to be passed in and executed only if conditions are right. For example, the && operator uses @autoclosure to allow short-circuit evaluation, and the assert() function uses it so that the assertion isn’t checked outside of debug mode.

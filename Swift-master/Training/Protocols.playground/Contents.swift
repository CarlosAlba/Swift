import UIKit

// In Swift, a protocol defines a blueprint of methods or properties that can then be adopted by classes (or any other types).

protocol Greet {
  // blueprint of a property
  var name: String { get }

  // blueprint of a method
  func message()
}

// conform class to Greet protocol
class Employee: Greet {
  // implementation of property
  var name = "Perry"

  // implementation of method
  func message() {
    print("Good Morning!")
  }
}

let emp = Employee()
print(emp.message())

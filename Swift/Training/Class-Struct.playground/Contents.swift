import UIKit

// Classes

// Reference Type
// - When you copy a reference type, each instance shares the data. The reference itself is copied, but not the data it references. When you change one, the other changes too.

// When should use it
// - Use for inherit
// - Subclassing
// - Deinit
// - interop between Swift and Objective-C (if you want to use @objc and dynamic in a Realm data model)
// - Copying Doesn’t Make Sense
// - External Effects or Data
// - Intermediaries

// Declaration
class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
// Use
var cat = Animal(name: "Super Cat")
print(cat.name)

// Struct
// Value Type
// - When you copy a value type (i.e., when it’s assigned, initialized or passed into a function), each instance keeps a unique copy of the data. If you change one instance, the other doesn’t change too.

// When should use it
// - Simple Data Types
// - Thread Safety
// - Mostly Structs Scenario
// - Don’t Need Inheritance

// Declaration
struct NewsItem {
    var title: String = ""
    var url: String = ""
}
// Use
var item = NewsItem()
item.title = "Struct vs. Class in Swift Explained"
item.url = "https://google.com/"



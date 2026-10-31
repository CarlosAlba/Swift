import UIKit

// Strong
// -  increment the reference count by 1. By default, references in Swift are strong meaning using var without a modifier creates a strong reference.

class HomeVC: UIViewController {
    // Creates a strong reference to an API instance. When
    // a HomeVC instance is deallocated, HomeVC will
    // decrease the reference count of the API instance by 1
    let api = API()

    // Placeholder used in the following examples
    func hideLoadingIndicator() {}
}

// Weak
// -  instance is deallocated if no other objects have a strong reference to the instance.

open class UITableView : UIScrollView, NSCoding {
    weak open var dataSource: UITableViewDataSource?
    weak open var delegate: UITableViewDelegate?
}

// Unowned
// - don't keep a strong reference to the instance they are referencing. They serve the same purpose as weak references, that is, they avoid strong reference cycles.

// Difference
// - The first difference you need to know about is that an unowned reference is always expected to have a value. This is not true for weak references, which are set to nil if the instance they reference is deallocated. When that happens, the reference is set to nil.
// - Because a weak reference can be set to nil, it is always declared as an optional. That is the second difference between weak and unowned references. The value of a weak reference needs to be unwrapped before it can be accessed whereas you can directly access the value of an unowned reference.

class Account {
    // MARK: - Properties
    var plan: Plan
    
    init(plan: Plan) {
        self.plan = plan
    }
}

class Plan {
    // MARK: - Properties
    unowned var account: Account

    // MARK: - Initialization
    init(account: Account) {
        self.account = account
    }

}

// Do UIView Animation Blocks Require Weak or Unowned Self?
// - Not all blocks require weak or unowned self to prevent retain cycles. UIView animation blocks run only once and are then deallocated. This means even strong references in animation blocks will be released when the block runs.

// Animation blocks do not need weak or unowned
// references to self
UIView.animate(withDuration: 0.25) {
    self.view.alpha = 0
}

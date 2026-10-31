import UIKit

DispatchQueue.global(qos: .default).sync {
    print("In global Queue")
}
print("In Main Queue")

// NEVER DO IT

DispatchQueue.main.sync {
   print("main - sync")
}
print("In main Queue")

//

let privateQueue = DispatchQueue(label: "com.training.private")
privateQueue.async {
    for _ in 1...5 {
        print("first - task")
    }
}
privateQueue.async {
    for _ in 1...5 {
        print("second - task")
    }
}

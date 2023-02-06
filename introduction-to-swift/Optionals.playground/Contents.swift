import UIKit

var integer: Int?
print(integer)
integer = 200
print(integer)

// Unwrapping an optional using if
// Uncomment line below to see how the if will behave
//integer = nil
if let number = integer {
    print("Integer variable is \(number)")
} else {
    print("Integer variable is nil")
}

// Unwrapping an optional using guard statement

func unwrappingUsingGuard(_ num: Int?) {
    guard let integer = num else {
        print("Integer is nil")
        return
    }
    print("Integer variable is \(integer)")
}
unwrappingUsingGuard(nil)
unwrappingUsingGuard(integer)

// Forcing unwrapping

print(integer!)
// Uncomment lines below to force a nil variable
//integer = nil
// The line below will throw: Fatal error: Unexpectedly found nil while unwrapping an Optional value
//print(integer!)

// Nil coalescing

integer = nil
print(integer ?? -1)

// Optional chaining

var dict: [String : [Int]] = ["Pedro": [1, 2, 3, 4]]
print(dict["Pedro"]?.first ?? "None")

// Optional Try

enum UsernameError: Error {
    case emptyUsername
}

func performValidation(_ username: String?) throws -> Bool {
    guard let username, username.count > 0 else {
        throw UsernameError.emptyUsername
    }
    
    return true
}

do {
// The commented lines below will fall into the catch block, but the optional try won't
//    try performValidation(nil)
//    try! performValidation(nil)
    try? performValidation(nil)
    print("Validation run without thwrowing an error")
} catch {
    print("Error")
}

// Failable init

class User {
    let id: Int
    
    init?(id: Int) {
        if id < 1 {
            return nil
        } else {
            self.id = id
        }
    }
}

let user = User(id: 10)
let anotherUser = User(id: 0)
print("Here's user: \(user), here's another user: \(anotherUser)")

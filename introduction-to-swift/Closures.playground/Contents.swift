import UIKit

// MARK: - Basic Closures

let closure = {
    print("Hi I'm a closure")
}

let anotherClosure = { (_ str: String) in
    print("Hi I'm another closure that prints a custom string: \(str)")
}

let returningClosure = { (_ str: String) -> String in
        return "Hi I'm a closure that returns a custom string: \(str)"
}

func functionThatAcceptsClosures(_ closure: () -> Void) {
    closure()
}

func functionThatReturnsClosure() -> () -> Void {
    return { print("Print function") }
}

closure()
anotherClosure("👋👋👋")
print(returningClosure("😄😄😄"))
functionThatAcceptsClosures {
    print("I'm a closure, awesome huh?")
    closure()
    anotherClosure("👋👋👋")
    print(returningClosure("😄😄😄"))
}

type(of: functionThatReturnsClosure)
type(of: functionThatReturnsClosure())
functionThatReturnsClosure() // Here the function just returns a closure, but it won't be executed
functionThatReturnsClosure()() // Here print happens

import UIKit

// MARK: - For loops

let range = 0...10

for number in range {
    print(number)
}

let names = ["Jonas", "Michael", "Ben"]

for name in names {
    print("Hi, I'm \(name)")
}

for _ in 1...3 {
    print("Loop without constant running ;)")
}

// MARK: - While loops

var number = 0

while number < 5 {
    print(number)
    number += 1
}

// MARK: - Repeat loops

// Because the condition comes at the end of the repeat loop the code inside the loop will always be executed at least once,
// whereas while loops check their condition before their first run.
repeat {
    print("Repeat loop", number)
    number += 1
} while number < 0

// How to skip loop items with break and continue

// Skip

let surnames: [String?] = ["Freddi", "Sell", nil, "Ortega"]

for surname in surnames {
    if surname == nil {
        // It will interrupt for in execution, then the Ortega surname won't be printed
        break
    } else {
        print(surname!)
    }
}


// Continue

let numbers = 1...8

for number in numbers {
    if number % 2 == 0 {
        // It will interrupt the execution of the current iteration always when an even number is found
        continue
    }
    print("This is an odd number: \(number)")
}

// MARK: - Exiting multiple loops

let items: [[String?]] = [["A", "B", "C"], ["D", "E", "F"], [nil, "H", "I"]]

outerLoop: for item in items {
    for subItem in item {
        if subItem == nil {
            break outerLoop
        }
        print(subItem!)
    }
}

// MARK: - Infinite loops

// This is an infinite loop, be careful when executing it
//var counter = 1
//while true {
//    print("You are in an infinite loop", counter)
//    counter+=1
//}

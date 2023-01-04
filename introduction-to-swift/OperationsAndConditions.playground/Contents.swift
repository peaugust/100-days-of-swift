import UIKit

// MARK: - Arithmetic operators
let sum = 1 + 1 // 2
let subtract = 11 - 1 // 1
let product = subtract * sum // 20
let division = product / sum // 10
let remainder = product % division // 0

// MARK: - Operator overloading

let someNumber = 32
let numberOverloading = someNumber + 42 // 74
let someString = "Hi there, "
let stringOverloading = someString + "I'm Freddi" //Hi there, I'm Freddi
let someArray = ["A", "B", "C"]
let anotherArray = ["1", "2", "3"]
let arrayOverloading = someArray + anotherArray

// MARK: - Compound assignment operators

var number = 100
number -= 5 // 95
number += 10 // 105
number *= 2 // 210
number /= 210 // 1


// MARK: - Comparison operators

let first = 10
let second = 11

first == second
first != second
first < second
first >= second

let nameOne = "Taís"
let nameTwo = "José"
nameOne == nameTwo
nameOne == nameOne
// Strings have a natural alphabetical order
nameOne > nameTwo
nameOne <= nameTwo

// MARK: - Conditions

if nameOne.count > 10 {
    print("What a big name!")
} else if nameOne.count < 3 {
    print("This is a short name")
} else {
    print("Oookay you have a \(nameOne.count) letters in your name ")
}

// MARK: - Combining conditions

let anotherNumber = 24
if number >= 1 && anotherNumber < 30 {
    print("number is: \(number), anotherNumber is: \(anotherNumber)")
}

if number % 2 != 0 || (anotherNumber / 12) % 2 == 0 {
    print("remaining is: \(number % 2), remaining is: \((anotherNumber / 12) % 2)")
}

// MARK: - The ternary operator

number >= 1 && anotherNumber < 30 ? print("number is: \(number), anotherNumber is: \(anotherNumber)") : print("Nothing")
number > 1 && anotherNumber < 30 ? print("number is: \(number), anotherNumber is: \(anotherNumber)") : print("Nothing")

// MARK: - Switch statements

// Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword
let weather = "rain"
switch weather {
case "rain":
    print("Bring an umbrella")
    fallthrough
case "snow":
    print("Wrap up warm")
    fallthrough
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

// MARK: - Range operators

let testNumber = 33

switch testNumber {
case 0..<10:
    print("Your number is between 0 and 9")
case 10...50:
    print("Your number is between 10 and 50")
default:
    print("Your number is out the interval tested")
}

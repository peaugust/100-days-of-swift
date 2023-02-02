import UIKit

// Docs: https://developer.apple.com/documentation/swift/string

let hamlet = "To be, or not to be, that is the question"
print(hamlet.count)
print(hamlet.hasPrefix("To"))
print(hamlet.contains("be"))
print(hamlet.uppercased())
print(hamlet.sorted())
print(hamlet.split(separator: ","))

let name = "Pedro Freddi"
let firstSpace = name.firstIndex(of: " ") ?? name.endIndex
let firstName = name[..<firstSpace]
print(firstName)

// Creating a numeric string that's binary
let number = 3 // Binary representation == 11
let numericString = String(3, radix: 2)
print(numericString) // == 11


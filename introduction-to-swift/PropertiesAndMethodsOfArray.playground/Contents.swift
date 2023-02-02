import UIKit

// Docs: https://developer.apple.com/documentation/swift/string

var numbers = [99, 1, 2, 88, 3, 100, 4, 5, 6, 31]
print(numbers.count)
print(numbers.sorted())
print(numbers.randomElement())
print(numbers.remove(at: 0))
print(numbers.contains(31))

numbers = numbers + [44, 56, 7, 82, 11]
print(numbers)

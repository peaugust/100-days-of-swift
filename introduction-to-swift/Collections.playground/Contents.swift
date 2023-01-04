import UIKit
// Ordered and not-unique
var array = [1, 2, 3, 1]
array[0]
// Unordered and unique
var set = Set([1, 2, 3, 1])
set.contains(1)
// Key-value
var dictionary = [1: 1, 2:2, 3:3]
dictionary[0]
dictionary[0, default: 0]
dictionary[0, default: -1]
dictionary[1]

// https://developer.apple.com/documentation/swift/optionset
struct ShippingOptions: OptionSet {
    let rawValue: Int

    static let nextDay    = ShippingOptions(rawValue: 1 << 0)
    static let secondDay  = ShippingOptions(rawValue: 1 << 1)
    static let priority   = ShippingOptions(rawValue: 1 << 2)
    static let standard   = ShippingOptions(rawValue: 1 << 3)

    static let express: ShippingOptions = [.nextDay, .secondDay]
    static let all: ShippingOptions = [.express, .priority, .standard]
}

let purchasePrice = 87.55

let singleOption: ShippingOptions = .priority
let multipleOptions: ShippingOptions = [.nextDay, .secondDay, .priority]
let noOptions: ShippingOptions = []

var freeOptions: ShippingOptions = []
if purchasePrice > 50 {
    freeOptions.insert(.priority)
//    freeOptions.insert(.standard)
}

if freeOptions.contains(.priority) {
    print("You've earned free priority shipping!")
} else {
    print("Add more to your cart for free priority shipping!")
}

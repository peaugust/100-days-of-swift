import UIKit

// Variables

var greeting = "Hello, playground"
print(greeting)

// If you uncomment the line below it will throw an error, because greeting is a String variable, and it's trying to assign an Int value.
//greeting = 1
// It happens because swift it's a type-safe language, so once you defined/assigned a type to a variable it will just accept values of it type

// Since here we're assigning a string to greeting variable we'll be able to update it's value.
greeting = "Another string"
print(greeting)

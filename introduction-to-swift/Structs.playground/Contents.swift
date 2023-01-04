import UIKit

// DOCS: https://developer.apple.com/documentation/swift/choosing-between-structures-and-classes
// DOCS: https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html

enum Status: String {
    case online, offline
}

struct User {
    var name: String
    var age: Int
    var email: String
    var isLogged: Bool
    var status: String {
        return (isLogged ? Status.online.rawValue : Status.offline.rawValue).uppercased()
    }
    
    func is18yearsOld() -> Bool {
        return age > 18
    }
    
    mutating func banUser() {
        name = "Banned user"
        age = -1
        email = ""
        isLogged = false
    }
}

// Structs don't keep reference types, so when we assign it to another variable it will be copied
var freddi = User(name: "Freddi",age: 23, email: "freddi@freddi.com", isLogged: false)
var augusto = freddi
augusto.name = "Augusto"
augusto.isLogged = true
augusto.age = 17
print("The user \(freddi.name) status is \(freddi.status)")
print("The user \(augusto.name) status is \(augusto.status)")

freddi.is18yearsOld()
augusto.is18yearsOld()
freddi.banUser()
print(freddi)

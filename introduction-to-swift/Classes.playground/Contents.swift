import UIKit

class User {
    let name: String
    var age: Int
    var email: String
    
    init(name: String, age: Int, email: String) {
        self.name = name
        self.age = age
        self.email = email
    }
    
    deinit {
        print("Now \(name) is dead!")
    }
    
    func makeBirthday() {
        age += 1
    }
    
    func updateEmail(newEmail: String) {
        email = newEmail
    }
}

var pedro = User(name: "Pedro Freddi", age: 23, email: "pedro@freddi.com")
pedro.makeBirthday()
print(pedro.age)
pedro = User(name: "", age: 1, email: "") // Here Pedro will be deinitialized to receive another User object

class SimpleUser: User {
    init(name: String, age: Int) {
        super.init(name: name, age: age, email: "")
    }
    
    override func updateEmail(newEmail: String) {
        print("This is a overriden version")
        self.email = "Isn't the email you was expecting"
    }
}

let robert = SimpleUser(name: "Robert P.", age: 33)
robert.makeBirthday()
print(robert.age)
robert.updateEmail(newEmail: "r@r.com")
print(robert.email)


// Copying objects

var newRobert = robert
robert.age = 44
newRobert.age = 52
print(robert.age, newRobert.age) // Both robert and newRobert are pointing to the same object in memory

struct UserStruct {
    let name: String
    var age: Int
    var email: String
    
    init(name: String, age: Int, email: String) {
        self.name = name
        self.age = age
        self.email = email
    }
}

let jonas = UserStruct(name: "Jonas", age: 14, email: "j@j.com")
var john = jonas

john.age = 200

print(jonas.age, john.age) // Differently of a class, structs are value types so once created, if you assign the same struct to other variable it will pass the same values, but both variables will use different memory spaces, while a class is a reference type so when I assign a variable to another both are pointing to the same space in memory.

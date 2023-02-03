import UIKit

protocol Identifiable {
    var id: String { get set }
}

protocol Payable {
    func calculateWages() -> Double
}

class User: Identifiable, Payable {
    var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func calculateWages() -> Double {
        return 1750.99
    }
}

let newUser = User(id: "MyCustomId")
print(newUser.id)
print(newUser.calculateWages())


// MARK: - Functions

func myFunction() {
    print("This is my function")
}

func anotherFunction() {
    myFunction()
}

myFunction()
anotherFunction()


func sum(a: Int, b: Int) -> Int {
    return a + b
}
sum(a: 1, b: 1)

func summation(n: Int) -> Int {
    var result = 0

    if n == 0 {
        return result
    } else {
        let range = 1...n
        for number in range {
            result += number
        }
        return result
    }
}

summation(n: 11)

// MARK: - Parameter label

func square(of number: Int) -> Int {
    return number * number
}

square(of: 3)

// MARK: - Omitting parameter label

func square(_ number: Int) -> Int {
    return number * number
}

square(3)

// MARK: - Default parameter value

func saySomething(_ str: String = "Someting") {
    print(str)
}
saySomething()
saySomething("Saying")

// MARK: - Variadic functions

func square(numbers: Int...) {
    for number in numbers {
        print(number * number)
    }
}
square(numbers: 1, 2, 3)

// MARK: - Throwing functions

enum PasswordErrors: Error {
    case lessThanEightDigits
    
    var localizedDescription: String {
        switch self {
        case .lessThanEightDigits:
            return "Your password has less than 8 digits"
        }
    }
}

func validatePassword(_ password: String) throws -> Bool {
    if password.count < 8 {
        throw PasswordErrors.lessThanEightDigits
    }
    
    return true
}

func addNewPassword(_ password: String) {
    do {
        try validatePassword(password)
        print("Password added!")
    } catch let error {
        let passwordError = error as! PasswordErrors
        print(passwordError.localizedDescription)
    }
}

addNewPassword("A")
addNewPassword("AAAAAAAA")

// MARK: - Inout Parameters

// Normal function

func updateNumber(number: Int) {
//    Left side of mutating operator isn't mutable: 'number' is a 'let' constant
//    number += 1
}

func updateNumber(number: inout Int) {
    // Her number is mutable so you're allowed to for instance add or subtract directly from it
    number += 1
    print(number)
}
 


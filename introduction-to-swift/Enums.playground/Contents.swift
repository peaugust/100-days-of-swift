
enum Result {
    case failure, success, unknown
}

let result: Result = .success
let anotherResult = Result.failure
let unkownResult: Result = .unknown


// Enum with associated values

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let activityOne: Activity = .bored
let activityTwo: Activity = .running(destination: "Home")
print(activityTwo)

switch activityTwo {
case .running(let destination):
    print("Activity destination is: \(destination)")
default:
    print("Unknown")
}

// Enum with raw values

enum Planets: String {
    case Earth, Venus, Mars
}

let earth = Planets.Earth.rawValue
let venus = Planets.Venus.rawValue
let mars = Planets(rawValue: "Mars")
let jupyter = Planets(rawValue: "Jupyter")

// Enum with implicitly assigned raw values

enum Numbers: Int, CaseIterable {
    case One = 1, Two, Three, Four
}

let numberRaw = Numbers.Four.rawValue
let cases = Numbers.allCases.count

for number in Numbers.allCases {
    print(number, number.rawValue)
}

// Recursive enum

enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

//You can also write indirect before the beginning of the enumeration to enable indirection for all of the enumeration’s cases that have an associated value:

//indirect enum ArithmeticExpression {
//    case number(Int)
//    case addition(ArithmeticExpression, ArithmeticExpression)
//    case multiplication(ArithmeticExpression, ArithmeticExpression)
//}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))
print(evaluate(sum))

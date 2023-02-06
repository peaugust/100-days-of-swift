import UIKit

protocol ScreenDisplayLogic {
    func requestSomeData()
}

class ScreenOne: ScreenDisplayLogic {
    func requestSomeData() {
        print("Here's screen one!")
    }
}

class ScreenTwo: ScreenDisplayLogic {
    func requestSomeData() {
        print("Here's screen two!")
    }
    
    func someInternalLogic() {
        print("Thanks to the typecasting you can call this function")
    }
}

let screens: [ScreenDisplayLogic] = [ScreenOne(), ScreenTwo()]

for screen in screens {
    switch screen {
    case let one as ScreenOne:
        one.requestSomeData()
    case let two as ScreenTwo:
        two.requestSomeData()
        two.someInternalLogic()
    default:
        print("No case assigned")
    }
}

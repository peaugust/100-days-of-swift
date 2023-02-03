import UIKit

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 10
print(number.squared())


// ProtocolExtension

protocol APIRequestable {
    func request(url: String, params: [String:String]) -> String
}

extension APIRequestable {
    func request(url: String, params: [String:String]) -> String {
        return "\(url), \(params)"
    }
}

class SomeRequest: APIRequestable {}

print(SomeRequest().request(url: "www.google.com", params: ["param1": "1234", "param2": "MySecretToken"]))

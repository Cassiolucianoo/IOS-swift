import UIKit

// Definição de uma classe existente
class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// Extensão para adicionar um método
extension Person {
    func sayHello() {
        print("Hello, my name is \(name)!")
    }
}

// Uso da extensão
let person = Person(name: "Cassio luciano da silva")
person.sayHello() // Isso imprimirá "Hello, my name is Alice!"

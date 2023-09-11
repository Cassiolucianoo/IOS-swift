class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var person1: Person? = Person(name: "Alice")
var person2: Person? = person1

person1 = nil // Liberando a primeira referência
person2 = nil // Liberando a segunda referência

// Neste ponto, o objeto Person é desalocado automaticamente pelo ARC, pois não há mais referências a ele.

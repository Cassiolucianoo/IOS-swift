class Person {
    var name: String
    var apartment: Apartment?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) foi desalocado")
    }
}

class Apartment {
    var unit: String
    var tenant: Person?
    
    init(unit: String) {
        self.unit = unit
    }
    
    deinit {
        print("Apartamento \(unit) foi desalocado")
    }
}

var person1: Person? = Person(name: "Alice")
var apartment1: Apartment? = Apartment(unit: "A101")

person1?.apartment = apartment1
apartment1?.tenant = person1

person1 = nil
apartment1 = nil

// Neste caso, o ARC não pode desalocar nem a pessoa nem o apartamento porque eles têm uma retenção cíclica.

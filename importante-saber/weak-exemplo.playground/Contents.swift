class Person {
    let name: String
    weak var bestFriend: Person?

    init(name: String) {
        self.name = name
    }

    deinit {
        print("\(name) foi desalocado da memória")
    }
}

var alice: Person? = Person(name: "Alice")
var bob: Person? = Person(name: "Bob")

alice?.bestFriend = bob
bob?.bestFriend = alice

alice = nil
bob = nil

// Mensagens de desalocação serão impressas quando as instâncias são desalocadas

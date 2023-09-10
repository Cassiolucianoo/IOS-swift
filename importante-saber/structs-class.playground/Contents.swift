/*As classes são tipos de referência, o que significa que quando você atribui uma instância de classe a outra variável, ambas as variáveis apontam para o mesmo objeto na memória.*/

class Dog {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func bark() {
        print("\(name) is barking!")
    }
}

let myDog = Dog(name: "Fido")
let anotherDog = myDog // outraDog agora faz referência ao mesmo objeto

myDog.name = "Buddy"
print(anotherDog.name) // Isso imprimirá "Buddy" porque ambas as variáveis se referem ao mesmo objeto


/*As structs são tipos de valor, o que significa que quando você atribui uma instância de struct a outra variável, uma cópia completa da instância é feita.*/

struct Point {
    var x: Int
    var y: Int
}

var p1 = Point(x: 1, y: 2)
var p2 = p1 // p2 é uma cópia de p1, não uma referência

p1.x = 3
print(p2.x) // Isso imprimirá "1" porque p2 é uma cópia independente de p1

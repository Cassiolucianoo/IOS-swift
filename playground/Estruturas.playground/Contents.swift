import UIKit


let idade: Int = 20
let name: String = "Cassio luciano da Silva"


struct Pessoa {
    var name: String?
    var age: Int = 0
    
    init(name: String) {
        
    //self determina que a valor name pertece a struct e o nmae que é atribuido ao self é do init
        self.name = name
    }
    
    func falaOI() {
        print("OI")
    }
    
    // Metodos que muda uma struct precisa inicializar de mutating
    mutating func addIdade(){
        age += 1
    }
    
}


pessoa.name = "Cassio Luciano da silva"
// fazer depois da aula
    print(pessoa.name)

//apenas um parametro
var pessoa = Pessoa.init(name: "Cassio")
pessoa.age = 39
pessoa.addIdade()

// passando dois pararametros para o construtor
//var pessoa = Pessoa.init(name: "Cassio", age: 33)


//Computed Properties (Propriedades computadas)

struct Temperatura{
    var celsius: Double
    var fehrennheit: Double {
        return celsius * 1.8 + 32
    }
}

var temperatura = Temperatura(celsius: 25)
print(temperatura.celsius)
print(temperatura.fehrennheit)

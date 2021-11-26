import UIKit

//MARK: - CLASSE ANIMAL
class Animal {
    
    let cor: String
    let genere: Character
    let raca: String
    
    init (cor: String, genero: Character, raca:String){
        
        self.cor = cor
        self.genere = genero
        self.raca = raca
        
    }
    
    func emitirSom()  {
       print("...........")
    }
}

// MARK: - Dog
class Cachorro: Animal{
    
    //Polimorfismo
    override func emitirSom() {
        print(" Au, Au, Au, Auuuu")
    }
    
    func andar()  {
        print("O cachorro está correndo")
    }
}

// MARK: - passarinho
class Passarinho: Animal{
    let podeVoar: Bool
    
    override func emitirSom() {
        print(" 🎶  🎶 🎶 🎶 🎶 🎶 🎶 🎶 🎶 ")
    }
    
    func voar()  {
        if podeVoar{
            print("O pássarinho está voando")
        } else {
            print("Este pássaro não pode voar")
        }
    }
    
    init(cor: String, genero: Character, raca: String, voando: Bool ) {
        self.podeVoar = voando
        super.init(cor: cor, genero: genero, raca: raca)
    }

    
    convenience  init(cor: String, raca: String) {
        self.init(cor: cor, genero: "M", raca: raca, voando: false)
    }
    
}

// MARK: - pato

class Pato: Passarinho{
    
    init(cor: String, genero: Character, raca: String) {
        super.init(cor: cor, genero: genero, raca: raca, voando: true)
    }
    override func emitirSom() {
        print("quack, quack, quack, quack..........")
    }
    
}

// MARK: - chamadas das classes

let thor  = Cachorro(cor: "Preto e branco", genero: "M", raca: "Pastor Alemão")
let kiko  = Passarinho(cor: "Verde", genero: "M", raca: "Papagaio", voando: true)
let kako = Passarinho(cor: "Verde", raca:"Papagaio")

let patolino = Pato(cor: "Preto", genero: "M", raca: "?")

// MARK: - Imprimi no console
thor.andar()
thor.emitirSom()

kiko.voar()
kiko.emitirSom()

kako.voar()
kako.emitirSom()

patolino.emitirSom()

// MARK: - Type Casting

let animals: [Animal] = [

Passarinho(cor: "Verde", genero: "M", raca: "Papagaio", voando: true),
Cachorro(cor: "Preto e branco", genero: "M", raca: "Pastor Alemão"),
Passarinho(cor: "Verde", raca:"Papagaio"),
Pato(cor: "Preto", genero: "M", raca: "?")
]

print("====================================================")
for animal in animals{
    animal.emitirSom()
    
    /*if animal is Cachorro{
        
        (animal as! Cachorro).andar()
    }
    
    if animal is Pato{
        
        (animal as! Pato).emitirSom()
    }*/
    
    if let dog = animal as? Cachorro {
        dog.andar()
    }
}

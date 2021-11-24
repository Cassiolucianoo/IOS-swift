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
//MARK: - Classe que herda tudo da classe Animal
class Cachorro: Animal{
    func run()  {
        print("O cachorro está correndo")
    }
}

//MARK: - Classe que herda tudo da classe Animal
class Passarinho: Animal{
    let podeVoar: Bool
    
    func voar()  {
        if podeVoar{
            print("O pássarinho está voando")
        } else {
            print("Este pássaro não pode voar")
        }
    }
    
//MARK: - Cosntrutor Designated Inicializer
    init(cor: String, genero: Character, raca: String, voando: Bool ) {
        self.podeVoar = voando
        super.init(cor: cor, genero: genero, raca: raca)
    }
//MARK: - Cosntrutor Convenience Inicializer
    
    convenience  init(cor: String, raca: String) {
        self.init(cor: cor, genero: "M", raca: raca, voando: false)
    }
    
    
}

let thor  = Cachorro(cor: "Preto e branco", genero: "M", raca: "Pastor Alemão")
let kiko  = Passarinho(cor: "Verde", genero: "M", raca: "Papagaio", voando: true)


let kako = Passarinho(cor: "Verde", raca:"Papagaio")


thor.run()
thor.emitirSom()

kiko.voar()
kiko.emitirSom()

kako.voar()
kako.emitirSom()

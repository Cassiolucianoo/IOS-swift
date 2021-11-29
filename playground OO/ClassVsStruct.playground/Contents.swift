import UIKit

struct Aluno{
    var nome: String
    var idade: Int
}

class Pessoa {
    var nome: String
    var idade: Int
    weak var amigo: Pessoa? 
    
    init(nome: String, idade: Int) {
        self.nome  = nome
        self.idade = idade
    }
    
    deinit {
        print("\(nome) foi desalocado da memoria")
    }
    
}


var estudante1 = Aluno(nome: "Cassio Luciano da Silva", idade: 33)
var estudante2 = estudante1

estudante1.nome = "Cassio l silva"
estudante1.idade = 34
print(estudante2.idade, estudante2.nome)

//=========================================

var pessoa1: Pessoa? = Pessoa(nome: "cassio", idade: 33)
var pessoa2: Pessoa? = Pessoa(nome: "freed", idade: 44)

pessoa1!.nome = "Cassios"
pessoa1!.idade = 33

print(pessoa2!.idade, pessoa2!.nome)


pessoa2?.amigo = pessoa2
pessoa1?.amigo = pessoa1


pessoa1 = nil
pessoa2 = nil

//valuy type

//Reference Type


let array:[Int] = [3,4,5,6,7,5,4,3,4,4,3,45,6,7,7,8,9,4]

//Copy On Write
var array2 = array
array2[0] = 45





//Extensoes


import Foundation


let name = "Cassio Luciano da Silva"

extension String {
    var vowels: [Character]{
        var list: [Character] = []
        for character in characters {
            switch String(character).lowercased(){
            case "a", "e", "i","o", "u":
                list.append(character)
            default:
                break
            }
            
        }
        return list
    }
    
    func tinitials() ->String {
        let array = self.components(separatedBy: " ")
        let firsts = array.map({$0.first!})
        return String(firsts)
    }
    
}

print(name.vowels)

//MARK: - Outra forma

class Conta {
    
    let numero: String
    var saldo: Double = 0
    
    init (number: String){
        self.numero = number
    }
}

extension Conta {
    convenience init (number: String, valor: Double){
        self.init(number: number)
        self.saldo = valor
    }
}

let conta = Conta(number: "22222222", valor: 2222222)
print(conta)

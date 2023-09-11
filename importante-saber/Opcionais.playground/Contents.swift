import UIKit

//Forçar o Desembrulho (Forced Unwrapping):


let nome: String? = "João"
let nomeDesembrulhado = nome! // Forçando o desembrulho

print("Olá, \(nomeDesembrulhado)") // Funciona se nome não for nulo


//Desembrulho Condicional (Optional Binding):

let nome1: String? = "Maria"

if let nomeDesembrulhado1 = nome1 {
    print("Olá, \(nomeDesembrulhado1)") // Será executado se nome não for nulo
} else {
    print("Nome não especificado") // Será executado se nome for nulo
}

//Operador Nil Coalescing:

let nome2: String? = nil
let nomeDesembrulhado2 = nome2 ?? "Visitante"

print("Olá, \(nomeDesembrulhado2)") // Usará "Visitante" se nome for nulo



//Optional Chaining:

struct Pessoa {
    var nome: String
    var endereco: Endereco?
}

struct Endereco {
    var rua: String
    var cidade: String
}

let pessoa: Pessoa? = Pessoa(nome: "Carlos", endereco: nil)
let nomeRua = pessoa?.endereco?.rua // Será nil se pessoa ou endereco forem nulos


//Optional Forced Unwrapping
let valorDefinido3: String! = "Isso é um opcionalimplicitamente desembrulhado"

print("Valor: \(valorDefinido3)") // Não é necessário forçar o desembrulho



//Optional Binding (Vinculação Opcional):

let numero: Int? = 42

if let valorDesembrulhado = numero {
    print("O valor desembrulhado é \(valorDesembrulhado)")
} else {
    print("A variável opcional é nula")
}

//desembrulhar variáveis opcionais usando guard
func imprimirValor(_ numero2: Int?) {
    guard let valorDesembrulhado = numero2 else {
        print("A variável opcional é nula")
        return
    }
    print("O valor desembrulhado é \(valorDesembrulhado)")
}

let numero2: Int? = 42
imprimirValor(numero2)

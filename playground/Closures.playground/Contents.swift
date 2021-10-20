import UIKit


// Closure - É um pedaço auto contido de código e funcionalidade que podem ser repassados e utilizados em seu código

func soma(_ a: Int, _ b: Int) -> Int{
    
    return a + b
    
}
func SUB(_ a: Int, _ b: Int) -> Int{
    
    return a + b
    
}

func calcular(_ a: Int,_ b: Int, operacao: (Int, Int) -> Int) -> Int {
    return operacao(a, b)
}

calcular(10, 3, operacao: soma)

//exemplo 1 de Closures
calcular(15, 10, operacao: {(a: Int, b: Int) -> Int in
    return a * b
})

//1 Simplificação closures
// A linguagem ja sabe que o retorno é inteiro
calcular(15, 10, operacao: {(a, b) -> Int in
    return a * b

})

//2 Simplificação closures
// A linguagem sabe que retorna um valor inteiro
calcular(15, 10, operacao: {a, b   in
    return a * b

})

//3 Simplificação closures
// A linguagem ja sabe que tem um retorno dos parametros $ é para saber qual o parametro 1a 2b
calcular(15, 10, operacao: {
    return $0 * $1
    
})


//4 Simplificação closures
// A linguagem ja sabe que tem um retorno
calcular(15, 10, operacao: { $0 * $1})
    
//5 Simplificação closures
// se tem um  * entre dois $0 e  $1,  podem ser removidos também
calcular(15, 10, operacao:  * )

import Foundation

var nomes = [
     "    Cassio",
      "    Karina",
    " Luciano",
    "     Jose ",
    "     Maria",

]

//MAP
let correcaoNome = nomes.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)})
print(correcaoNome)

let uppercasedNames = correcaoNome.map({$0.uppercased})
print(uppercasedNames)

let silva = correcaoNome.map({$0  + " Silva"})
print(silva)

//Filter
let novoNomes = correcaoNome.filter({$0.count < 7})
print(novoNomes)

//Reduce
let contaCaracterstotal = correcaoNome.reduce(0, {$0 + $1.count})
print(contaCaracterstotal)









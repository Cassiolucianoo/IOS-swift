import UIKit

func soma (_ a: Int, _ b: Int) -> Int{
    a + b
}

func subt(_ a: Int, _ b: Int) -> Int{
    a - b
}

func div (_ a: Int, _ b: Int) -> Int{
    a / b
}

func mult(_ a: Int, _ b: Int) -> Int{
    a * b
}

//Funcao seguinte  porem sem apelidar os seus operadores

//func aplicarOperacao (_ a: Int, _ b: Int, operacao: (Int, Int) -> Int ) -> Int{
//    return operacao(a, b)
//}

//apelidando um tipo de valor Int

typealias Inteiro = Int
typealias  operacaoApelidada = (Int, Int) -> Int

//função que vai operar outras funçoes

func aplicarOperacao (_ a: Int, _ b: Int, operacao: operacaoApelidada) -> Int{
    return operacao(a, b)
}


let resultado = aplicarOperacao(10, 30, operacao: soma)

// opção de operadores
func pegarOperacao(_ operacao: String) -> operacaoApelidada{
    switch operacao {
    case "Somar":
        return soma
    case "Multiplicação":
        return mult
    case "Subtração":
        return subt
    default:
        return div
    }
    
}

// oque está acontecendo nas linhas seguintes (var operacao = subt(30, 15))

// pegando o tipo de operação que vai retornar um tipo de função
var operacao = pegarOperacao("Somar")
// atribuindo valores na função do retorno
operacao(30, 15)

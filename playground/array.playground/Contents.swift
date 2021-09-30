import UIKit

var greeting = "Hello, playground"
print(greeting)


var names = ["zé","maria","cassio luciano da silva"]

//COM O TIPOO
var namesB: [String] = ["zé","maria","cassio luciano da silva"]

//TODO ARRAY SEM ELEMENTO PRECISA INFORMAR O TIPO DELE
var idade: [Int] = []

//array nulo que não existe ainda

var tel: [String]?


var ages: [UInt8] = [9, 7, 12, 15, 22] //Uint8 explicito

// contando elementos
var namesC = ["zé","maria","cassio luciano da silva"]

print(namesC.count)

//fala se ele tem elementos sim ou não
print(namesC.isEmpty)

//ADD elemento de um array em uma variavel
let secondNomes = namesC[2]
print(secondNomes)


//ADD ELEMENTO
namesC[0] = "cassiosssss"
print(namesC)

//add de uma posição em diante
var namesI = ["zé","maria","cassio luciano da silva"]
namesI[0...1] = ["ele","jow","lisa"]
print(namesI)



//PROPRIEDADE PARA PEGAR O PRIMEIRO E ULTIMO ELEMENTO
if let primeiro = namesI.first{
    print(primeiro)
}

if let ultimo = namesI.last{
    print(ultimo)
}

// add novos elementos na lista array

namesI += ["Opa","visjh"]

//add apenas um elemento

namesI.append("Aeeee")

//add em uma posição existente

namesI.insert("Novo", at: 3)
print(namesI)


//removendo elementos da lista
//namesI.removeAll()
//namesI.removeLast()
//namesI.removeFirst()
//namesI.remove(at: 3)


// verificando se existe um elemento com o nome determinado na lista
if namesI.contains("Novo"){
    print("Fomos !!!!!!!!!!")}

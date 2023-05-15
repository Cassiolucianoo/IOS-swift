import UIKit


print(" Estou no dia 1 de Setembro")

for day in 1...30{
    print("Estou no dia \(day) de Setembro")
}

for _ in 1...5 {
    print("Dedique-se ao curso de Desenvolvimento iOS 11")
}

let estudantes = [
    "Cassio Luciano da silva",
    "Jose Luiz da Silva Filho",
    "Karina luciano da silva",
    "Jose luciano da silva",
    "Maria jose da silva",
    "Julya britos da silva",
    "Clara vilar da Silva",
    "Pedro brito teixeira",
    "Antony britos teixeira"
]

for estudantes in estudantes {
    
    print("O nome \(estudantes) Membro da familia está presente na festa de hoje!")
    
}

//propriedade que imprime letra por letra chamada characters
let nome = "Cassio Luciano da Silva"

//for letras in nome.characters{
//    print(letras)
//}

for letras in nome{
    print(letras)
}

//tuplas imprimindo numeração da letra do meu nome
for(index, letras) in nome.enumerated(){
    print(index,letras)
}

let pessoa = [
    "Cassio Luciano da silva": 33,
    "Jose Luiz da Silva Filho": 67,
    "Karina luciano da silva": 33,
    "Jose luciano da silva": 43,
    "Maria jose da silva": 55,
    "Julya britos da silva": 15,
    "Clara vilar da Silva": 18,
    "Pedro brito teixeira": 10,
    "Antony britos teixeira": 15
]


for familiar in pessoa {
    
    print(familiar.key, familiar.value)
    
}

//Outra forma de descrever

for (nome, idade) in pessoa {
    
    print(nome, idade)
    
}


// While controle de fluxo, Ele continua a execução finaliza quando ele retorna uma condição

var vidas = 33
while vidas > 0{
    
    print("Cara você está perdendo seus dias de vidas está com \(vidas)")
    vidas = vidas - 1
    
}


//conjuto de regras para usar no codigo " importar o metodo "
import Foundation

var megaSena: [Int] = []
while megaSena.count < 6 {
    //vai gerar numeros fora da sequencias
    let numero = Int(arc4random_uniform(60)+1)
    // Se esse numero não estiver na megasena
    if !megaSena.contains(numero){
        //ele usa o append e adiciona o numero no array da megasena
        megaSena.append(numero)
    }
}
// aqui ele está imprimindo de forma ordenada usando o metodo SORTED
print(megaSena.sorted())


var erros = 0
var jogarDados = 0

repeat{
    erros += 1
    jogarDados = Int(arc4random_uniform(6)+1)
    
}while  jogarDados != 6
print("quantidade de erros \(erros) pra tirar 6")



var grade = [10.0, 9, 4, 5, 6, 6, -10, 14.00]

for grade in grade {
    print(" Nota da grade = " + String(grade))
    if grade < 0.0 || grade > 10.0 {
     
        print("Nota invalide favor verificar, apenas notas de 0...10.0")
     break
    }
}













import UIKit

//tipos de comentarios

//basico
/*
 varias linhas
 */
//comentar em todas as linhas command / selecionando o cod


var greeting = "Hello, playground"

var nome = "Casso Luciano da Silva"

nome = "Luciano"

var endereco = "São Paulo"

print(nome)

//declarando valores

let nomet = "Churros"
let tristezas: Int = 5
let calorias: Double = 79.5


func add(){
    
    print("Teste")
    
}
func add(_ opa: String){
    
    print("Teste")
    
}

var opa = "Opa"


add(opa)

//add(opa: opa)
add()




let caloria1 = 50.5
let caloria2 = 100
let caloria3 = 300
let caloria4 = 500


let totalDeCalorias = [50.0,100,300,500,450]
print(totalDeCalorias)

print("primeira forma de escrever um for")

for i in 0...3{
    print(i)
    print(totalDeCalorias[i])
    
}

print("segunda forma de escrever um for")

for i in 0...totalDeCalorias.count-1{
    print(i)
    print(totalDeCalorias[i])
    
    
}

//forma sem indice

print("terceira forma de escrever um for")


for  calorias in totalDeCalorias{
    
    print(calorias)
    
}



print("for passando arrays para fun funcões retornos e cuidados com inferências ")
let totalDeCalorias2 = [50.5,100]
// -> india que o metodo tem um retorno

func todasCalorias(totalDeCalorias2: [Double]) -> Double{
    
    var total: Double = 0
    
    for calorias in totalDeCalorias2{
        total += calorias
    }
    return total
}
    
let total = todasCalorias(totalDeCalorias2:[50.5, 100, 400])

print(total)



class tristeainda{
    var nome: String
    var triste: String
    
    init(nome: String, triste: String){
        self.nome = nome
        self.triste = triste
    }
    
}
print("opa")

let rango = tristeainda(nome: "Não comi nada ainda", triste: "5")
print(rango.nome)
print(rango.triste)






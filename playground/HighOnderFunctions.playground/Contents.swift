import UIKit

//import Foundation

var nomes = [
     "    Cassio",
      "    Karina",
    "                     Luciano",
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


print("------------------------- Reduce ----------------------------------")

let contaCaracterstotal = correcaoNome.reduce(0, {$0 + $1.count})
print(contaCaracterstotal)




print("------------------------- Filter----------------------------------")

func hashtags(in string: String) -> [String] {
    let palavra = string.components(
        separatedBy: .whitespacesAndNewlines
    )
    // Filtro elemina qualquer caracter que não se enquadrem
    // determina o elemento que não começa com #
    return palavra.filter { $0.starts(with: "#") }

}

let queTemtags = hashtags(in: "#CASSIO teste #Luciano")
print(queTemtags)


print("------------------------- Map----------------------------------")
let strings = [
    "!ixi up !teste",
    "#Ae s!m !Teste",
    "!OPS vish !like"
]

func hashtagsUm(in string: String) -> [String] {
    let palavras = string.components(
        separatedBy: .whitespacesAndNewlines
    )

    let pa = palavras.filter { $0.starts(with: "!") }
    
    // Usando 'map', podemos converter uma sequência de valores em
         // uma nova matriz de valores, usando um encerramento como uma transformação:
    return pa.map { $0.uppercased() }
   
}


let tags = strings.map { hashtagsUm(in: $0) }
print(tags)

//Função aceita uma string como entrada, pode se passar uma função diretamente como argumento ()
let tags2 = strings.map(hashtagsUm)
print(tags2)


//flatMap funciona exatamente como o mapa  porem ele resultante em apenas uma única matriz
print("------------------------flatMap-----------------------------------")
let palavrasflatmap = strings.flatMap(hashtagsUm)
print(palavrasflatmap)


//temos uma matriz de strings que pode conter números e que
//queremos converter todos esses números em valores Int
print("------------------------compactMap---------------------------------")

let numbers = ["42", "19", "notANumber"]
let ints = numbers.compactMap { Int($0) }
print(ints)

//a função valida se o valor é existente dentro do elemento e retorna true ou false
print("------------------------contains---------------------------------")
let cast = ["Cassio", "Luciano", "Maria", "Karina"]


let procura = cast.contains("Luciano")

if (procura == true){
    
    print("Encontrado")
    
}else{
    print("Nada encontrado")
}

print(cast.contains("Cassio"))
// Prints "true"
print(cast.contains("pedro"))
// Prints "false"

//
print("------------------------sort---------------------------------")

var alunos = ["Cassio", "Aline", "Pedro", "josias", "Luciano"]
alunos.sort()
print(alunos)

//ordena os elementos na sequencia
print("------------------------sorted---------------------------------")
let cursos: Set = ["Java", "Kotlin", "C#", "Flutter", "Swift"]
let sortedCursos = cursos.sorted()
print(sortedCursos)


//passe o operador maior que (>) para o método sorted(by:)
let descendingStudents = sortedCursos.sorted(by: >)
print(descendingStudents)

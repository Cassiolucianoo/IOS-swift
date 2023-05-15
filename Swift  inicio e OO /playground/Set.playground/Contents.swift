import UIKit

//não aceita elementos repetidos

var movies: Set<String> = [
"Filme1",
    "Filme1",
    "Filme2",
    "Filme3",
    "Filme4",]



var movies2 = Set<String>()

movies.insert("Filme5")

print(movies.count)


let result = movies.insert("Filme5")

//quem foi atribuido e se foi sim ou não atribuido
print(result.inserted, result.memberAfterInsert)


// removendo
movies.remove("Filme5")

// como apresentar os elementos
for movies in movies{
    print(movies)
}

// validar se contem o elemento dentro da lista
if movies.contains("Filme5"){
    
    print("O filme está na lista de filmes")
}


//lista de filmes para comparação ........
var movies0: Set<String> = [
"Filme1",
    "Filme6",
    "Filme2",
    "Filme7",
    "Filme4",]

let comparacao = movies.intersection(movies0)
print(comparacao)
//lista de filmes para comparação


//unindo filmes das listas
let todos  = movies.union(movies0)
print(todos)

//removendo filmes que foram unidos da lista associada
movies = movies.subtracting(movies0)
print(movies)



//tuplas combinaçoes de lementos diferentes


//let end = " av. aguas de março, 78, são paulo, - 08267010"



let end : (type: String, name: String, number: Int, city: String, state: String, zipCode: String) = ("Av",
"Paulista", 1578, "São Paulo", "SP", "91310-200")

print(end.number)

//variaveis para apresentar valores _ para não msotrar valores
let (type, name, _, _, state, cep) = end

print(type)
print(name)

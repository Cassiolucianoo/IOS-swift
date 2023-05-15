import UIKit


//Populando um dicionario com suas chaves
var populatedDictionary = ["key1": "value1", "key2": "value2"]

//criando sem elementos
var shoppingList: [String: Double] = [:]


//add elemento na Dicionario
populatedDictionary["key1"] = "Muda"

//da mesma forma altera
//populatedDictionary["key1"] = "Muda2"


let oldGo = populatedDictionary.updateValue("Goiás", forKey: "go")

print(populatedDictionary)


//recuperando um valor do dicionario
let myTeste = populatedDictionary["Key1"]

if let populatedDictionary = myTeste {
    print(populatedDictionary)
}


//eleminando um elemendo pela chave
populatedDictionary["Key1"] = nil
print(populatedDictionary)


//listando os elementos de um dicionario
print(populatedDictionary.count)


// passando apenas um array apenas as keys de um dicionario
let chaves = Array(populatedDictionary.keys)
print(chaves)

// e os valores das keys
let valores = Array(populatedDictionary.values)
print(valores)




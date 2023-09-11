import UIKit



//sintaxe geral:
//{ (parâmetros) -> TipoRetorno in
  
//}



//Simplificada
//{ parametro in expressao }


//Closures como Funções

let somar: (Int, Int) -> Int = { (a, b) in
    return a + b
}

let resultado = somar(5, 3) // resultado é igual a 8




//Captura de Valores Externos

func criarIncrementador(incremento: Int) -> () -> Int {
    var total = 0
    let incrementador: () -> Int = {
        total += incremento
        return total
    }
    return incrementador
}

let incrementarPorCinco = criarIncrementador(incremento: 5)
let resultado1 = incrementarPorCinco() // resultado1 é igual a 5
let resultado2 = incrementarPorCinco() // resultado2 é igual a 10


//Ordenação de Arrays

let nomes = ["Alice", "Bob", "Charlie", "David"]
let nomesOrdenados = nomes.sorted { $0 < $1 }




import UIKit

var str = "Enum"

// forma um de formar um enum

 
enum CarroTipo{
    
    case fusca
    case combe
    case monza
    case chevete80
}

//Aqui explicitamente informamos que a variavel tipo do carro é do tipo Carrotipo
   var tipoCarro: CarroTipo = CarroTipo.chevete80
print("O meu carro é \(tipoCarro)")
//Dessa forma a linguagem ja sabe que a variavel é dotipo CarroTipo então não precisa colocar
    var tipoCarro2: CarroTipo = CarroTipo.monza
print("O meu carro é \(tipoCarro2)")

//Dessa forma se deixar explicitamente o tipo
    var tipoCarro3: CarroTipo = .chevete80
print("O meu carro é \(tipoCarro3)")

//Alterando 
    tipoCarro3  = .fusca
print("3 errei é \(tipoCarro3)")

// colocando todos em um case só
enum LugarLotacao{
    case emPe, naJanela, noCorredor
}

var lugares = LugarLotacao.emPe
  switch lugares {
  case .emPe:
        print(" i cara vai chegar cansado em casa")
  case .naJanela:
     print(" Tranquilo ")
  case .noCorredor:
     print(" Não muito bom mas da pra ficar de boas")
}

//determinando o valor bruto

enum LugarLotacao2: String{
    case emPe = "Em pé Vaicansar", naJanela = "Janela De boas", noCorredor = " Corredor Vai ser esbarrado toda hora"
}

var lugares2 = LugarLotacao2.emPe
  switch lugares {
  case .emPe:
        print(" i cara vai chegar cansado em casa")
  case .naJanela:
     print(" Tranquilo ")
  case .noCorredor:
     print(" Não muito bom mas da pra ficar de boas")
}

print(lugares2.rawValue)


enum Month: Int{
    case segunda = 1
    case terca
    case quarta
    case quinta
    case sexta
    case sabado
    case domingo
}

print(Month.domingo.rawValue)


//valores Associados

enum LugarLotacao3{
    case emPe(Double)
    case naJanela(Int)
    case noCorredor(String)
}

let lugares3 : LugarLotacao3 = .emPe(8.0)
  switch lugares3 {
  case .emPe(let emPe):
        print(" i cara vai chegar cansado em casa \(emPe)")
  case .naJanela:
     print(" Tranquilo ")
  case .noCorredor:
     print(" Não muito bom mas da pra ficar de boas")
  }

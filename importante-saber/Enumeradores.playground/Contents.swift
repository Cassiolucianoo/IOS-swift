import UIKit


//Enum Simples
enum DiaDaSemana {
    case segunda
    case terca
    case quarta
    case quinta
    case sexta
    case sabado
    case domingo
}

let dia = DiaDaSemana.quarta
print("Hoje é \(dia)")




//2: Enum com Valores Associados
enum Resultado {
    case sucesso(String)
    case erro(Int, String)
}

let resultado1 = Resultado.sucesso("Operação bem-sucedida.")
let resultado2 = Resultado.erro(404, "Recurso não encontrado.")

switch resultado1 {
case .sucesso(let mensagem):
    print("Sucesso: \(mensagem)")
case .erro(let codigo, let mensagem):
    print("Erro \(codigo): \(mensagem)")
}




//3: Enum com Métodos e Propriedades
enum EstadoLuz {
    case ligada, desligada
    
    func descricao() -> String {
        switch self {
        case .ligada:
            return "Ligada"
        case .desligada:
            return "Desligada"
        }
    }
}

let luz = EstadoLuz.ligada
print("A luz está \(luz.descricao())")

import UIKit

//MARK: - Classe

class Veiculo{
    //MARK: - Observadores de propriedade visualizando Protegendo uma classe
    var correr: Double = 0 {
        didSet{
        //metodo min que compara dois valores
            correr = min(correr, maxVelocidade)
        }
    }
    var maxVelocidade: Double{
        return 250
    }
    //MARK: - static
    static let velocidadeMedida = "KM/h"
    var modelo: String
    
    var maximaVelocidade: Double{
        get{
            
            return  correr / 1.600
        }
        set{
            correr = newValue * 1.699
            
        }
    }
    
    init(correr: Double, modelo: String) {
        self.modelo = modelo
        self.correr = correr
    }
    
    func descript () -> String {
        return "Veiculo : \(modelo), Velocidade atual \(correr)"
    }
    
    class func alerta () -> String {
        return "Se beber não pilote"
    }
    
}

let w = Veiculo(correr: 10, modelo: "Fusca")

w.correr = 100
w.modelo = "Gol"

w.descript()


let c = Veiculo(correr: 100, modelo: "C")
c.correr = 300
print(c.correr)

//MARK: - estancia sem Criar um objeto dentro da classe
print(Veiculo.alerta())
print(Veiculo.velocidadeMedida)





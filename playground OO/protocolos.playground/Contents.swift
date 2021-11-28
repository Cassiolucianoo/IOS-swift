import UIKit

enum Tiposcombustiveis{
    case gasolina, ethanol, disel, flex
}

protocol Ar{
    var ar: Bool{get set}
    func LigarAr(ligado: Bool)
}

class Veiculo {
    var combustivel: String
    var tiposcombustiveis: Tiposcombustiveis
    
    init(combustivel: String, tiposcombustiveis: Tiposcombustiveis) {
        self.tiposcombustiveis = tiposcombustiveis
        self.combustivel = combustivel
    }
}

class Carro: Veiculo, Ar{
    
    var numeroDePortas: Int
    var ar: Bool = true
    
    
    init(combustivel: String, tiposcombustiveis: Tiposcombustiveis, numeroDePortas: Int) {
        self.numeroDePortas = numeroDePortas
        super.init(combustivel: combustivel, tiposcombustiveis: tiposcombustiveis)
    }
    
    func LigarAr(ligado: Bool) {
        if ligado {
            print("Ar Ligado")
        }else{
            print("Ar dESLIGADO")
        }
    }
    
class Bicicleta : Veiculo{
        
        var numeroDeRodas: Int
        
        init(combustivel: String, tiposcombustiveis: Tiposcombustiveis, numeroDeRodas: Int) {
            self.numeroDeRodas = numeroDeRodas
            super.init(combustivel: combustivel, tiposcombustiveis: tiposcombustiveis)
        }
    }
    
    class Helicoptero : Veiculo, Ar{
        
        var numeroDeMotores: Int
        var ar: Bool = true
        
        init(combustivel: String, tiposcombustiveis: Tiposcombustiveis, numeroDeMotores: Int) {
            self.numeroDeMotores = numeroDeMotores
            super.init(combustivel: combustivel, tiposcombustiveis: tiposcombustiveis)
        }
        
        func LigarAr(ligado: Bool) {
            
            if numeroDeMotores > 4 {
                
                print("O ar não pode ser ligado potencia de motor a baixo ")
                
            } else {
                if ligado {
                print("Ar Ligado")
            }else{
                print("Ar dESLIGADO")
            }
            }
        }
        
    }
    
    /*extension Bicicleta :Ar {
        
    }*/
    
}




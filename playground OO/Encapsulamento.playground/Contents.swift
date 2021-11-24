import UIKit



//MARK: - Classe cartão de credito
class CartaoCredito {
    let numero: String
    let limiete: Double
    
    //MARK: - Tornando uma variavel privada para evitar alteraçoes
    private var faturaValues: Double = 0
    
    let compraInternacional :Double = 6.38
    
    init(numero: String, limite: Double){
        self.numero = numero
        self.limiete = limite
        
    }
    //MARK: - final na função
    final func efetuarCompra (off value: Double, internacionalCrediCard: Bool) -> Bool {
        let debito = internacionalCrediCard ? value * (1 + compraInternacional / 100 ): value
        let valorFinal = faturaValues + debito
        if valorFinal > limiete {
            return false
        } else {
            faturaValues = valorFinal
            return true
        }
    }
    
    
    //MARK: - Função get para apresentar um valor privado da classe sem que altere ele 
    func getFatura() -> Double {
    return faturaValues
    }

}

let creditoCard = CartaoCredito(numero: "10.10.10.10", limite: 6000)
creditoCard.efetuarCompra(off: 1500, internacionalCrediCard: true)


print(creditoCard.getFatura())


//print(creditoCard.faturaValues)


//creditoCard.fatutavalues = 0

//Não tem acesso direto ao valor por ser private.
//print(creditoCard.faturavalue)


//MARK: - Cartão de debito que herda cartão de credito
class CartaoDebito: CartaoCredito {
    private var _saldo: Double = 0
    
    var saldo: Double{
        return _saldo
    }
    
    func  fazerTranzacao(of value: Double)  {
        _saldo += value
    }
    
    //MARK: - Evitando sobrescrita de funçoes  com o final
    
//    override func efetuarCompra(off valor: Double, internacionalCrediCard: Bool) -> Bool {
//
//         _saldo += valor
//
//    return true
//    }
//
    
   

}
let debitaDoCartao = CartaoDebito(numero: "101010", limite: 7000)
debitaDoCartao.fazerTranzacao(of: 100)
debitaDoCartao.fazerTranzacao(of: -400)
print(debitaDoCartao.saldo)

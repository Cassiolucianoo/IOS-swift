import UIKit


//função sem parametros
func falaOi(){
    
    print("Oi")
    
}
falaOi()

//função com dois parametros
func falaOieNome(falaOi: String, nome:String){
    
    print("\(falaOi) meu nome é : \(nome)")
    
}
falaOieNome(falaOi: "Oi", nome: "Cassio Luciano da silva")

// Função com return

func BoaNoite(falaBoaNoite: String, mensagem:String) -> String{
    
    return falaBoaNoite + " " + mensagem
    
}
 let boaNoite = BoaNoite(falaBoaNoite: "Boa noite !", mensagem: "Cara")
print(boaNoite)

//função mutiplica com retorno

func mul( _ a: Int, _ b: Int) -> Int{
    
    return a * b
    
}

//print ja com os argumentos
print(mul( 10,  10))


//função mutiplica com retorno

func soma( _ a: Int, por b: Int) -> Int{
    
    return a * b
    
}

//print ja com os argumentos
print(soma( 10, por: 10))


func somaTudo( _ inicialValor: Int, comValores valores: Int...) -> Int{
    
    var resultado = inicialValor
    for valores in valores {
        resultado += valores
    }
    return resultado
    
}
print(somaTudo(2, comValores: 2, 3, 4, 6, 7, 8))


import UIKit

enum LoginError: Error {
    case wronUser
    case wronSenha
    case moInternetConnection
}

func entrar (nomeUser : String, senhaUser: String) throws -> Bool {
    if validarInternet() {
        if nomeUser != "cassio luciano" {
            
            throw LoginError.wronUser
            
        }
        if senhaUser != "123" {
             
            throw LoginError.wronSenha
         
        }
        return true
    } else {
        throw  LoginError.moInternetConnection
    }
}

func validarInternet() -> Bool {
    return true
}

do {
    var loginResultado = try entrar(nomeUser: "cassio luciano ", senhaUser: "123")
} catch LoginError.wronUser{
    print("Deu algum problema aqui no login")
}
catch LoginError.wronSenha{
    print("Deu Ruim na senha")
}catch LoginError.moInternetConnection{
    print("Sem net no momento")
}
 
//falhas de login e senha
if ( try? entrar(nomeUser: "cassio luciano", senhaUser: "123")) != nil{
    print("acesso permitido")
}else {
    print("Login ou senha invalidas")
}



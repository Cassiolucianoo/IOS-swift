//
//  GeradorDeSenhas.swift
//  Treinamento1.09 - SenhaBruta
//
//  Created by cassio luciano on 03/02/22.
//

import Foundation

class GeradorDeSenhas {
    
    
    var numeroDeLetras: Int
    var usarLetrasMinusculas: Bool!
    var usarLetrasMaiusculas: Bool!
    var usarCaracteresEspeciais: Bool!
    var usarNumero: Bool!
    
    var senhas: [String] = []
    
    private let letras = "abcdefghijklmnopqrstuvwxyz"
    private let numeros = "0123456789"
   private let caracteresEspeciais = "!@#$%&*()_-+=~`|]][{':;?/<>.,"



    init( numeroDeLetras: Int , usarLetrasMinusculas: Bool , usarLetrasMaiusculas: Bool, usarCaracteresEspeciais: Bool, usarNumero: Bool) {
        
        var numerosCaracteres = min( numeroDeLetras, 16)
        numerosCaracteres = max( numerosCaracteres, 1)
        
        self.numeroDeLetras = numerosCaracteres
        self.usarLetrasMinusculas = usarLetrasMinusculas
        self.usarLetrasMaiusculas = usarLetrasMaiusculas
        self.usarCaracteresEspeciais = usarCaracteresEspeciais
        self.usarNumero = usarNumero
    }
    
    
    func gerador(total: Int) -> [String] {
        
        senhas.removeAll()
        
        var usar: String = ""
        
        if usarCaracteresEspeciais{
            
            usar += caracteresEspeciais
            
        }
        if usarNumero{
            
            usar += numeros
            
        }
        if usarLetrasMinusculas{
            
            usar += letras
            
        }
        if usarLetrasMaiusculas{
            
            usar += letras.uppercased()
            
        }
        
        let usarArray = Array(usar)
        while senhas.count < total {
            var senha = ""
            for _ in 1...numeroDeLetras{
                let index = Int(arc4random_uniform(UInt32(usarArray.count)))
                senha += String(usarArray[index])
            }
            senhas.append(senha)
        }
        
        
        return senhas
        
    }
}

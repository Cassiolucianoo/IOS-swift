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
   private let caracteresEspeciais = ""



    init( numeroDeLetras: Int , usarLetrasMinusculas: Bool , usarLetrasMaiusculas: Bool, usarCaracteresEspeciais: Bool, usarNumero: Bool) {
        self.numeroDeLetras = numeroDeLetras
        self.usarLetrasMinusculas = usarLetrasMinusculas
        self.usarLetrasMaiusculas = usarLetrasMaiusculas
        self.usarCaracteresEspeciais = usarCaracteresEspeciais
        self.usarNumero = usarNumero
    }
    
    
}

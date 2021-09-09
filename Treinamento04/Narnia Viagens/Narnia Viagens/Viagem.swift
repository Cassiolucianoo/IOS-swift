//
//  Viagem.swift
//  Narnia viagens
//
//  Created by Virtual Machine on 08/09/21.
//

import UIKit

class Viagem: NSObject{
    let titulo: String
    let quantidadeDedias: Int
    let preco:String
    let caminhoDaImagem:String
    
    init( titulo: String, quantidadeDedias: Int, preco:String, caminhoDaImagem:String){
        self.titulo = titulo
        self.quantidadeDedias = quantidadeDedias
        self.preco = preco
        self.caminhoDaImagem = caminhoDaImagem
    }

}

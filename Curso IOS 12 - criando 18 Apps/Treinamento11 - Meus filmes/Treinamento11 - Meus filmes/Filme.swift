//
//  Filmes.swift
//  Treinamento11 - Meus filmes
//
//  Created by Virtual Machine on 24/09/21.
//

import UIKit

class Filme{
    
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(titulo: String, descricao: String, imagem:UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
    
}

//
//  Item.swift
//  bank
//
//  Created by Virtual Machine on 01/09/21.
//

import UIKit

class Item: NSObject {
    
    // MARK: - ATRIBUTOS
    let nome: String
    let calorias: Double
    
    
    // MARK: - INITI CONSTRUTOR
    init(nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
    }

}

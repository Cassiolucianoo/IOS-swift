//
//  Refeicao.swift
//  bank
//
//  Created by Virtual Machine on 01/09/21.
//

import UIKit

class Refeicao: NSObject {
    
        // MARK: - Atributos
        
        let nome: String
        let felicidade: Int
        var itens: Array<Item> = []
        
        // MARK: - Construtor
        
    init(nome: String, felicidade: Int, itens: [Item] = []){
            self.nome = nome
            self.felicidade = felicidade
            self.itens = itens
        }
        
        //MARK: - Metodos
        
        func totalDeCalorias() -> Double {
            var total = 0.0
            
            for item in itens{
                total += item.calorias
                
            }
            return total
        }
    }

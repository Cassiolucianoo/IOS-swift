//
//  CopaDoMundo.swift
//  Treinamento1.11 - Campeoes da Compa do Mundo
//
//  Created by cassio luciano on 10/02/22.
//

import Foundation


struct CopaMundo: Codable {
    let ano: Int
    let pais: String
    let vencedor: String
    let vice: String
    let vencedorPontos: String
    let vicePontos: String
    let partidas : [Partidas]
}

struct Partidas: Codable {
    let fase : String
    let jogos: [Jogo]
}

struct Jogo: Codable {
    let casa: String
    let pontos : String
    let data: String
    let convidado: String
    
}

  


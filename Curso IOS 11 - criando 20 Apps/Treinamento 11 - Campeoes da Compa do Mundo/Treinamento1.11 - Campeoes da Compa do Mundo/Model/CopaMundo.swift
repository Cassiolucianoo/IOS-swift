//
//  CopaDoMundo.swift
//  Treinamento1.11 - Campeoes da Compa do Mundo
//
//  Created by cassio luciano on 10/02/22.
//

import Foundation

struct CopaMundo: Codable {
    
    let year : Int
    let country : String
    let  winner : String
    let vice: String
    let  winnerScore: String
    let  viceScore: String
    let matches: [Match]
}

struct Match: Codable {
    let stage : String
    let games: [Game]
}

struct Game: Codable {
    let home: String
    let away : String
    let score : String
    let date : String
    
}

  


//
//  Perguntas.swift
//  Treinamento1.04 - App perguntas teoricas swift
//
//  Created by cassio luciano on 13/12/21.
//

import Foundation



class Perguntas {
    
    let questao: String
    let opcao: [String]
    //apenas visualizada pela propria classe
    private let respostaCorreta: String
    
    //construtor da classe
    init(questao: String, opcao: [String], respostaCorreta: String) {
        self.questao = questao
        self.opcao  = opcao
        self.respostaCorreta = respostaCorreta
    }
    
    //função de validação se a resposta está correta
    
    func validaOpcao (_ index: Int) -> Bool{
        let responder = opcao[index]
        return responder == respostaCorreta
        
    }
    
    // apresenta a liberação de memoria apos aparesentar uma questão
    deinit {
        print("Liberando memoria")
    }
    
    
}




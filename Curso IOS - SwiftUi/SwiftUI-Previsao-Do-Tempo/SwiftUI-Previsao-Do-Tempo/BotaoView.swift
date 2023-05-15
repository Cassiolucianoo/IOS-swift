//
//  BotaoView.swift
//  SwiftUI-Previsao-Do-Tempo
//
//  Created by cassio on 11/01/23.
//

import Foundation
import SwiftUI


struct BotaoMudarTempo: View {
    var textBotao: String
    var textColor: Color
    var corDeFundoBt: Color
    
    var body: some View {
            Text(textBotao)
                .frame(width: 280, height: 50)
                .background(corDeFundoBt)
                .foregroundColor(textColor)
                .font(.system(size:20, weight: .bold, design: .default))
                .cornerRadius(10)
    }
}

//
//  StateBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 15/02/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var corDofundo: Color = Color.green
    @State var contador: Int = 0
    @State var titulo: String = "Fundo verde"

    
    var body: some View {
        ZStack{
            corDofundo
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(spacing: 20) {
                Text(titulo)
                    .font(.title)
                Text("Contador \(contador)")
                    .font(.headline)
                    .underline()
                HStack(spacing: 20){
                    Button("Botão Positivo +1"){
                        corDofundo = .red
                        titulo = "Seu fundo ficou vermelho"
                        contador += 1
                    }
                    Button("Botão Negativo -1"){
                        corDofundo = .blue
                        titulo = "Seu fundo ficou azul"
                        contador -= 1
                    }
                    
                }
                
            }
        }.foregroundColor(.white)
        

    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}

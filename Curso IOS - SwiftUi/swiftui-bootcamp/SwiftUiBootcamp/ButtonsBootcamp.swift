//
//  SwiftUIView.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 13/02/23.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "Esse é meu titulo"
    var body: some View {
        VStack(spacing: 20){
            Text(title)
            
            Button("Selecione aqui") {
                self.title = "Botão Selecionado"
            }.accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                self.title = "Botão SALVAR pressionado"
            }, label: {
                Text("SALVAR " .uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
                
            })
            Button(action: {
                self.title = "Botão FIM Selecionado"
            }, label: {
                Text("Fim".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 1.0)
                    )
            })
            
            Button(action: {
                self.title = "Coração"
            },
            label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow( color: Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)), radius: 10)
                    
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
                
            })
            
        }
        
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}

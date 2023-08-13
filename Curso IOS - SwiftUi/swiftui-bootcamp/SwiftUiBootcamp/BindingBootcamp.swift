//
//  BindingBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 18/02/23.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var CorDeFundo: Color = Color.green
    @State var titulo: String = "Titulo"
    
    var body: some View {
        
        ZStack{
            CorDeFundo.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Text(titulo)
                    .foregroundColor(.white)
                Botao(CorDeFundo: $CorDeFundo,  titulo: $titulo)
            }
        }
    }
}

struct Botao: View {
    @Binding var CorDeFundo: Color
    @State var buttonColor: Color = Color.blue
    @Binding var titulo: String
    
    var body: some View{
        Button(action: {
            CorDeFundo = Color.orange
            buttonColor = Color.pink
            titulo = "Novo titulo"
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
        })
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

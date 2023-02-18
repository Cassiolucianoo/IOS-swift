//
//  Conditional.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 18/02/23.
//

import SwiftUI

struct Conditional: View {
    @State var formaRedonda: Bool = false
    @State var formaQuadrada: Bool = false
    @State var carregando: Bool = false
    var body: some View {
        
        VStack(spacing: 20){
            Button("Forma redonda: \(formaRedonda.description)"){
                formaRedonda.toggle()
            }
            Button("Forma quadrada:\(formaQuadrada.description)"){
                formaQuadrada.toggle()
            }
            
            if formaQuadrada { Rectangle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)}
            
            if formaRedonda { Circle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)}
            if !formaQuadrada || !formaRedonda {RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            
            Spacer()
        }
        
     
        VStack{
            
            Button("Carregando: \(formaRedonda.description)"){
                carregando.toggle()
            }
            if carregando{
                ProgressView()
            }
        }
    }
    
}

struct Conditional_Previews: PreviewProvider {
    static var previews: some View {
        Conditional()
    }
}

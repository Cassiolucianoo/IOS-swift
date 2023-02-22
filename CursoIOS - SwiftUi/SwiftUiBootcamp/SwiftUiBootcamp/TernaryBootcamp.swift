//
//  TernaryBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 21/02/23.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var verdadeiroFalso: Bool = false
    
    
    var body: some View {
        
        VStack{
            Button("Botão : \(verdadeiroFalso.description)"){
                verdadeiroFalso.toggle()
            }
            Text(verdadeiroFalso ?  "Olá, Mundo!" : "Tchau, Mundo!")
            
            RoundedRectangle(cornerRadius: verdadeiroFalso ?  /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/ : 0)
                .fill(verdadeiroFalso ? Color.yellow : Color.red)
                .frame(width: verdadeiroFalso ? /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ : 50, height: verdadeiroFalso ?  /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ : 10, alignment: verdadeiroFalso ?  /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ : .bottom)
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}

//
//  InitializerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 01/02/23.
//

import SwiftUI

struct InitializerBootcamp: View {
    let corDeFundo: Color
    let contagem : Int
    let title: String
    
    
    init(contagem: Int, fruta: Fruta) {
        self.contagem = contagem
        
        if fruta == .maca {
            self.title = "Apples"
            self.corDeFundo = .red
            
        }else {
            self.title = "Oranges"
            self.corDeFundo = .orange
            
        }
    }
    
    enum Fruta {
        case maca
        case laranja
    }
    
    
    
    var body: some View {
        HStack {
            Text("\(contagem)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }.frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(corDeFundo)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitializerBootcamp(contagem: 50, fruta: .maca)
            InitializerBootcamp(contagem: 50, fruta: .laranja)
            InitializerBootcamp(contagem: 50, fruta: .maca)
            InitializerBootcamp(contagem: 50, fruta: .laranja)
            
        }
    }
}

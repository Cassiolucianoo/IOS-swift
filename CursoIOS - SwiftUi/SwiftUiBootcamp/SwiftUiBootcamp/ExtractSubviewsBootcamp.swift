//
//  ExtractSubviewsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 15/02/23.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack{
            
            Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            HStack {
                SubView(titulo: "Tomate", contador: 5, color: .red)
                SubView(titulo: "banana", contador: 12, color: .yellow)
                SubView(titulo: "abacate", contador: 9, color: .green)
            }
            
        }
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct SubView: View {
    
    let titulo: String
    let contador: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text(titulo)
                .font(.system(size: 15))
                .bold()
            
            Text("\(contador)")
                .font(.system(size: 20))
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

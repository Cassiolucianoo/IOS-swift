//
//  IconsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 16/01/23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        VStack(spacing: 50){
            
            Image(systemName: "books.vertical")
                .resizable()
                //.font(.system(size: 70))
                //.aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .scaledToFit()
                //.scaledToFill()
                //.font(.caption)
                //.clipped()
                //.font(.largeTitle)
                //.renderingMode(.original)
                .foregroundColor(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)))
                .frame(width: 150, height: 150)
            
            Image(systemName: "chart.bar.doc.horizontal.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
                .frame(width: 100, height: 100)
            
            Image(systemName: "bus.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                .frame(width: 75, height: 75)
        }
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}

//
//  SwiftUIView.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 12/01/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .fontWeight(.semibold)
//            .bold()
           // .underline()
//            .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: .blue)
//            .italic()
//            .strikethrough(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: .green)
            .font(.system(size: 10, weight: .semibold, design: .serif))
            .baselineOffset(40)
            .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .minimumScaleFactor(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}

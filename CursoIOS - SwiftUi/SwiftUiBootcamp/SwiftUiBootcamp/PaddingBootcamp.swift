//
//  PaddingBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 29/01/23.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        
        VStack (alignment: .leading){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 20)
            Text("This is the description of what we will do on this screen. it is multiple lines and we will align the text to the leading edge.")
            
        }
        .padding()
        //.padding(.vertical, 10)
        .background(Color.white
                        .cornerRadius(10)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius:10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10))
        
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.yellow)
            //.padding()
            .padding(.all, 10)
            .padding(.leading, 20)
            .background(Color.red)
        
        Text("Opa opa")
            .font(.largeTitle)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity, alignment:  .leading)
            //background(Color.red)
            .padding(.leading, 20)
    }
    
       
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}

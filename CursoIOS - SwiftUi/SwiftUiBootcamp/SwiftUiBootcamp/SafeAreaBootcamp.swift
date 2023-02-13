//
//  SafeAreaBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 12/02/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        
        ScrollView{
            VStack {
                Text("Titulo")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .center)
                ForEach(0..<10) { index in
                    
                    RoundedRectangle(cornerRadius:  25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(20)
                }
            }
        }
        .background(
            Color.blue
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
               // .edgesIgnoringSafeArea(.bottom)
            
        )
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}

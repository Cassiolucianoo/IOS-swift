//
//  TapGestureBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 29/04/23.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var apertado: Bool = false
    
    var body: some View {
        
        VStack(spacing: 40){
            
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(apertado ? Color.red : Color.blue)
            
            Button(action: {apertado.toggle()}, label: {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            
            Text("on tap")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .onTapGesture {
                    apertado.toggle()
                }
            
            Text("Aperte 2 vezes igual insta")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .onTapGesture(count: 2, perform: {
                    apertado.toggle()
                })
            Spacer()
        }
        .padding(40)
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}

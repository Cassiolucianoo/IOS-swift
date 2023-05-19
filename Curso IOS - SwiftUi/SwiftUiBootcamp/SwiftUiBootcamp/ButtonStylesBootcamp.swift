//
//  ButtonStylesBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 18/05/23.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        
        VStack{
            Button("Textando 1"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button("Textando 2"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            
            Button("Textando 1"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            
            Button("Textando 1"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
        }
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
    }
}

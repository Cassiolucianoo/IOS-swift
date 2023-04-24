//
//  DarkModeBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 23/04/23.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorTela
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                VStack(spacing: 20){
                    Text("Usando cor Primary")
                        .foregroundColor(.primary)
                    Text("Usando cor secodary")
                        .foregroundColor(.secondary)
                    Text("Usando cor black")
                        .foregroundColor(.black)
                    Text("Usando cor branca")
                        .foregroundColor(.white)
                    Text("Usando cor vermelha")
                        .foregroundColor(.red)
                    Text("Usando cor adapitavel!")
                        .foregroundColor(Color("CorAdapitavel"))
                    Text("cor local adapitavel Primary")
                        .foregroundColor(colorTela == .light ? .green : .yellow)
                    
                }
            }.navigationTitle("Modo escuro / claro")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBootcamp()
            .preferredColorScheme(.light)
        DarkModeBootcamp()
            .preferredColorScheme(.dark)
    }
}

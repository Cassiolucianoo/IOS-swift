//
//  SheetsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 13/04/23.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var visualizarSheetView: Bool = false
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Button(action: {
                
                visualizarSheetView = true
            }, label: {
                Text("Abrir A sheet View 1")
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                
            })
            .sheet(isPresented: $visualizarSheetView, content: {
                
                Text("Opa sheet 1")
            })
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
    }
}

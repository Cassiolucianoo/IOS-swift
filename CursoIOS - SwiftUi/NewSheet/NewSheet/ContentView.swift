//
//  ContentView.swift
//  NewSheet
//
//  Created by cassio on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var mostraModal = false
    var body: some View {
        
        ZStack{
            Color (#colorLiteral(red: 0.9453449845, green: 0.6994598508, blue: 0.8202556372, alpha: 1))
                .ignoresSafeArea()
            Button(action: {mostraModal = true}) {
                Text("Rosquinha")
                    .font(.system(size: 40, weight:.heavy, design: .rounded))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .padding(.vertical, 20)
                    .padding(.horizontal, 40)
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                                    .opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            }
            .offset(y: -100)
            ModalView(isShowing: $mostraModal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .statusBar(hidden: true)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


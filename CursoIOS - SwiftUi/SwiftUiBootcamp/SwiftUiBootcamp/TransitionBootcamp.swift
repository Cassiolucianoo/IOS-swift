//
//  TransitionBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 23/03/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var mostrarTela: Bool = false
    
    var body: some View {
        
        //visualização bottom
        
        ZStack (alignment: .bottom){
            VStack {
                Button("Botão") {
                    mostrarTela.toggle()
                }
                Spacer()
            }
            
            if mostrarTela {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(mostrarTela ? 1.0 : 0.0)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
                
            }
            
        } .edgesIgnoringSafeArea(.bottom)
        
        
        //visualização lateral
        
        
        ZStack (alignment: .bottom){
            VStack {
                Button("Botão") {
                    mostrarTela.toggle()
                }
                Spacer()
            }
            
            if mostrarTela {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(mostrarTela ? 1.0 : 0.0)
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut)
                
            }
            
        } .edgesIgnoringSafeArea(.bottom)
        
        
        //------ opacity
        
        ZStack (alignment: .bottom){
            VStack {
                Button("Botão") {
                    mostrarTela.toggle()
                }
                Spacer()
            }
            
            if mostrarTela {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    
                    .transition(.asymmetric(
                                    insertion: .move(edge: .bottom),
                                    removal: AnyTransition.opacity.animation(.easeInOut)))
                
            }
            
        } .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}

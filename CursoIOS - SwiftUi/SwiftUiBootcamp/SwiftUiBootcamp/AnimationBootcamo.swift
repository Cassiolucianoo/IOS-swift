//
//  AnimationBootcamo.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 23/02/23.
//

import SwiftUI

struct AnimationBootcamo: View {
    
    @State var animacao: Bool =  false
    
    var body: some View {
        VStack{
            
            Button("Botão"){
                animacao.toggle()
                
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: animacao ? 50 : 30)
                .fill(animacao  ? Color.yellow : Color.red)
                .frame(
                       width: animacao ? 100 :  300,
                       height: animacao ?  /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/: 450)
                .rotationEffect(Angle(degrees: animacao ? 360: 0))
                .offset(y: animacao ? 300: 0)
                .animation(Animation
                .default
                .repeatForever(autoreverses: true))
             
            
            Spacer()
            
            
            
        }
    }
}

struct AnimationBootcamo_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamo()
    }
}

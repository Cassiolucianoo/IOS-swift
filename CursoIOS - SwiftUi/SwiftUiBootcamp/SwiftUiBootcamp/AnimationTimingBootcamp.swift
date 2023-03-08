//
//  AnimationTimingBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 08/03/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var animacao: Bool = false
    let tempo: Double = 1
    
    var body: some View {
        VStack{
            Button("Botão"){
                animacao.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: animacao ?  350 : 50, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .animation(Animation.linear(duration: tempo))
            
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}

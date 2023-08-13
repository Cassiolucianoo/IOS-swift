//
//  ColorsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 15/01/23.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                //Color.primary
               // Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
                
             Color("ColorPersonalizada")
            )
            
            .frame(width: 300, height: 200)
            .shadow(color: Color("ColorPersonalizada").opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -20, y: -20)
            
}
    
    

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
}

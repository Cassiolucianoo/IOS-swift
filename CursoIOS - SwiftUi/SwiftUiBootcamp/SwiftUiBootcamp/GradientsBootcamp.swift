//
//  GradientsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 16/01/23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        
        //------------------------------------
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill( RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/500/*@END_MENU_TOKEN@*/))
            .frame(width: 300, height:200, alignment: .center)
        
        
        //-------------------------------------
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center))
            .frame(width: 300, height:200, alignment: .center)
        //-------------------------------------
        
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                LinearGradient(gradient: Gradient(colors: [Color.init(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color.init(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                )
            .frame(width: 300, height:200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        //-------------------------------------
       
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}

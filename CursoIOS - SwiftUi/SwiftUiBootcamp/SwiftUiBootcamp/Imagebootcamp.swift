//
//  Imagebootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 17/01/23.
//

import SwiftUI

struct Imagebootcamp: View {
    var body: some View {
        Image("joel")
             .resizable()
            //.aspectRatio(contentMode: .fit)
             //.scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 300)
            //.clipped()
           // .cornerRadius(150)
            .clipShape(
               // Circle()
                //RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                //Ellipse()
                Circle()
                
            )
        
        Image("thelastofus")
            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
            .scaledToFit()
            .frame(width: 400, height: 400)
            .foregroundColor(.green)
        
    }
    
    
    
    
}

struct Imagebootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Imagebootcamp()
    }
}

//
//  TabViewBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 23/04/23.
//

import SwiftUI

struct TabViewBootcamp2: View {
    
    @State var selecionadoTab: Int = 0
    var corFundo = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
    
    let imgs: [String] = [
        "rosca", "img3", "img1", "img2"
    ]
    
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 20.0)
                .fill( Color(corFundo))
            // .padding()
            
            VStack{
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                    .padding(.top)
                
                TabView{
                    ForEach(imgs, id: \.self){ img in
                        Image(img)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 350, height: 350)
                            .padding(.bottom,120)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
            }
        }
    }
}

struct TabViewBootcamp2_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp2()
    }
}

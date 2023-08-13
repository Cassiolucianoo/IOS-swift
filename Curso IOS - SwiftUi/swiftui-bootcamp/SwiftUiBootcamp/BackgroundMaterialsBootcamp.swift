//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 17/05/23.
//

import SwiftUI


struct BackgroundMaterialsBootcamp: View {

    var body: some View {
        
        VStack{
            Spacer()
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThickMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
        Image("joel"))
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}

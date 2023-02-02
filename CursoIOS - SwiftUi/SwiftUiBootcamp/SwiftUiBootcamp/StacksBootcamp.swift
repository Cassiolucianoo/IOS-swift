//
//  StacksBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 29/01/23.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        ZStack(alignment: .top){
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .center, spacing: 10){
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 120, height: 120)
                
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 100, height: 100)
                
                HStack(){
                    
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 100, height: 100)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 50, height: 50)
                    
                    
                }
            }
            
        }
    }
    
}


struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}

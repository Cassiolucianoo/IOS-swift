//
//  SpacerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 30/01/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack(spacing: 0){
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
        }
        .background(Color.blue)
        
        VStack{
            HStack(){
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Image(systemName: "xmark")
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .background(Color.yellow)
            .padding(.horizontal)
            .background(Color.orange)
            
            Spacer()
                .frame(width: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(height: 55)
        }
    }}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}

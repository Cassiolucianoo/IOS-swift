//
//  ScrollViewBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 06/02/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            VStack{
                ForEach(0..<5){ index in
                    Rectangle()
                        .fill(Color.red)
                        .frame(height: 200)
                    
                }
            }
        })
        
        ScrollView {
            VStack{
                ForEach(0..<10){ index in
                    ScrollView(.vertical, showsIndicators: true, content: {
                        Text("Titulo")
                        
                        
                    })
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color.white)
                        .frame(width: 200, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding()
                }
            }
        }
        
        ScrollView {
            LazyVStack{
                ForEach(0..<10){ index in
                    Text("Categoria x")
                        .font(.system(size: 22, weight: .semibold, design: .serif))
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        LazyHStack{
                            
                            ForEach(0..<20){ index in
                                VStack {
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .fill(Color.red)
                                        .frame(width: 200, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                        .padding()
                                    Text("Titulo x 1988")
                                    
                                    Text("Ano 1988")
                                        .font(.system(size: 10, weight: .semibold, design: .serif))
                                        .padding(.bottom, 20)
                                }
                                
                            }
                            
                        }
                    })
                }
            }
        }
        
    }

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
}

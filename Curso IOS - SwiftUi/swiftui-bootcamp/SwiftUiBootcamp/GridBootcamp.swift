//
//  GridBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 10/02/23.
//

import SwiftUI

struct GridBootcamp: View {
    
    let colunas: [GridItem] = [
        
        //GridItem(.adaptive(minimum: 10, maximum: 300),spacing: nil, alignment: nil),
        
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {

        ScrollView{
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 300)
            
            
            LazyVGrid(
                columns: colunas,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    
                    Section(header:
                                Text("Titulo 1")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity,  alignment: .leading)
                                .background(Color.blue)
                                .padding()
                            
                    ){
                        ForEach(0..<10){ index in
                            
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                            
                            
                        }
                        
                    }
                    
                    
    
                            Section(header:
                                        Text("Titulo 2")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .frame(maxWidth: .infinity,  alignment: .leading)
                                        .background(Color.blue)
                                        .padding()
                                    
                            ){
                                ForEach(0..<10){ index in
                                    
                                    Rectangle()
                                        .frame(height: 150)
                                    
                                    
                                }
                                
                            }
                    
                    Section(header:
                                Text("Titulo 1")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity,  alignment: .leading)
                                .background(Color.blue)
                                .padding()
                            
                    ){
                        ForEach(0..<15){ index in
                            
                            Rectangle()
                                .fill(Color.red)
                                .frame(height: 150)
                            
                            
                    
                                  
                
                        }
                        
                    }
                    
                    
                    
                    
                    
                })
            
        }
        
    }
    
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}

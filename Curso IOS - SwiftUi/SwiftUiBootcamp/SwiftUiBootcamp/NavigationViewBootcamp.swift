//
//  NavigationViewBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 15/04/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView
            {
                ScrollView{
                    NavigationLink("Olá mundo", destination: MyOtherScreen())
                    
                    Text("Hello, World!")
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
                .navigationTitle("All inbloxes")
                // .navigationBarTitleDisplayMode(.inline)
                //.navigationBarHidden(true)
                .navigationBarItems(
                    leading:
                        
                        HStack{
                            Image(systemName: "person.fill")
                            Image(systemName: "flame.fill")
                        }
                     ,
                    trailing:
                        NavigationLink(
                            destination: MyOtherScreen(),
                            label: {Image(systemName: "gear")
                                
                            })
                    
                )
            }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Tela verde")
                .navigationBarHidden(true)
            
            VStack{
                NavigationLink("CLIQUE AQUI", destination: Text("3rd tela"))
                
                Button("Botão voltar") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}

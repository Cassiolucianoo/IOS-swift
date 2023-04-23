//
//  TabViewBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 23/04/23.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var seleciona: Int = 2
    @State var corIcon = Color.red
    
    
    var body: some View {
        
        TabView(selection: $seleciona){
            
            Home(selecionar: $seleciona, cor: $corIcon)
            
                .tabItem {
                    Image(systemName: "house.fill")
                }
                .tag(0)
            
            Sobre(cor: $corIcon)
            
                .tabItem {
                    Image(systemName: "globe")
                        .foregroundColor(.red)
                }
                .tag(1)
            
            Perfil(cor: $corIcon)
            
                .tabItem {
                    Image(systemName: "person.fill")
                }
                .tag(2)
            
        }.accentColor(corIcon)
        
        
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

// MARK: - Home
struct Home: View {
    
    @Binding var selecionar: Int
    @Binding var cor: Color
    
    var body: some View {
        ZStack{
            Color(.red)
                .edgesIgnoringSafeArea(.top)
                .padding(.bottom)
            VStack{
                Text("Home")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Text("A intenção desse conteúdo é colocar em prática um dos aprendizados")
                    .font(.title3)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(7)
                    .padding(.all)
                
                Button (action:{
                    selecionar = 2
                    
                    print("aqui")
                }, label: {
                    Text("Visualizar Perfil")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
        } .onAppear {
            cor = Color.red
        }
    }
}
// MARK: - Sobre
struct Sobre: View {
    
    @Binding var cor: Color
    
    var body: some View {
        ZStack{
            Color(.blue)
                .edgesIgnoringSafeArea(.top)
                .padding(.bottom)
            VStack{
                Text("Sobre TabView")
                    .font(.largeTitle)
                Text("A TabView é um componente no SwiftUI que permite criar uma interface de usuário com guias ou abas. Cada aba representa uma seção diferente do aplicativo e geralmente é usada para agrupar conteúdo relacionado. ")
                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                    .lineLimit(nil)
                    .padding(.all)
            }.foregroundColor(.white)
        }
        .onAppear {
            cor = Color.blue
        }
    }
}
// MARK: - Perfil
struct Perfil: View {
    
    @Binding var cor: Color
    var corFundo = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
    var body: some View {
        
        ZStack{
            Color(corFundo)
                .edgesIgnoringSafeArea(.top)
                .padding(.bottom)
            
            VStack{
                
                Image("joel")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(
                        Circle()
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.white, lineWidth: 6)
                    )
                Text("Joel jose da silva")
                    .font(.largeTitle)
                Text("Joel nasceu em 26 de September de 1964 ")
                
                Text("Perfil:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all)
                    .font(.title)
                Text("Alto e Atleta, com cabelos grisalhos curtos e barba rala. Reservado e desconfiado, resultado de sua experiência como um sobrevivente da pandemia que devastou a civilização.")
                
                Text("Ojetivos:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all)
                    .font(.title)
                Text("Buscando recolocação como desenvolvedor iOS júnior ou estágio.")
            }
            .padding(.all)
            .onAppear {
                cor = Color(corFundo)
            }
            
            
        }
        
    }
}

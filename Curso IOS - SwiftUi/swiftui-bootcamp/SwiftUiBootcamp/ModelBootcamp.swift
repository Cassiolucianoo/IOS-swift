//
//  ModelBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 04/05/23.
//

import SwiftUI

struct userDados: Identifiable{
    let id: String = UUID().uuidString
    let nome: String
    let userName: String
    let followerCount: Int
    let verifica: Bool
}

struct ModelBootcamp: View {
    
    @State var usuario: [userDados] = [
    
        userDados(nome: "CASSIO", userName: "Cassiolucianoo", followerCount: 222, verifica: false),
        userDados(nome: "CASSIO", userName: "Cassiolucianoo", followerCount: 222, verifica: true),
        userDados(nome: "CASSIO", userName: "Cassiolucianoo", followerCount: 222, verifica: true)
    ]
    var body: some View {
        NavigationView{
            List{
                ForEach(usuario) { usuario in
                    HStack(spacing: 15.0){
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading){
                            Text(usuario.userName)
                                .font(.headline)
                            Text(usuario.nome)
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        Image(systemName: usuario.verifica ? "checkmark.seal.fill" : "xmark.seal.fill")
                        VStack{
                            Text("\(usuario.followerCount)")
                                .font( .headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                    }
                    .padding(.vertical,10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Usuario")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}

//
//  ListSwipeActionBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 19/05/23.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
    var corFundo2 = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    // MARK: VARIAVEIS
    @State var frutas: [String] = [
        "Cassio", "Luciano", "Silva","Karina", "Jose","Mario"
    ]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(frutas, id: \.self) {
                    Text($0.capitalized)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true){
                            Button("Salvar"){
                                
                            }
                            .tint(.green)
                            Button("Editar"){
                                
                            }
                            .tint(.blue)
                            Button("Deletar"){
                                
                            }
                            .tint(.red)
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: true){
                            Button("Favoritar"){
                                
                            }
                            .tint(.yellow)
                            
                        }
                }
                //.onDelete(perform: delete)
                
            }
            .padding()
            .navigationTitle("Lista de nomes")
            .background(Color(corFundo2))
        }
      
    }
    func delete(indexSet: IndexSet){
        
    }
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}

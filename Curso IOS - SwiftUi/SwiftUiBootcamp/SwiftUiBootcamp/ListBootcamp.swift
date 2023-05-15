//
//  ListBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 17/04/23.
//

import SwiftUI

struct ListBootcamp: View {
    @State var frutas: [String] = [
        "Banana","Manga","Limão","Banana"]
    var body: some View {
        NavigationView{
            List{
                Section(
                    header: Text("FRUTAS")) {
                        ForEach(frutas, id: \.self){fruta in
                            Text(fruta.capitalized)
                        }.onDelete(perform: funcaoDeletar)
                            .onMove(perform: movimentarFruta)
                    }
                
                
            }.navigationTitle("Lista de frutas")
                .navigationBarItems(
                    leading: EditButton(),
                    trailing: Button("Adixionar", action: {
                        
                        add()
                    })
                     
                )
        }
    }
    func add (){
        
            frutas.append("banana")
     
    }
    func funcaoDeletar(indexSet: IndexSet){
        frutas.remove(atOffsets: indexSet)
    }
    
    func movimentarFruta(indices: IndexSet, newOffset: Int){
        frutas.move(fromOffsets: indices, toOffset: newOffset)
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}

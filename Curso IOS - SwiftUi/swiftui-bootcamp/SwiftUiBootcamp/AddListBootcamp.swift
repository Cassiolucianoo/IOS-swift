//
//  teste.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 20/05/23.
//

import SwiftUI

struct AddListBootcamp: View {
    @State private var frutas = ["maçã", "banana", "laranja"]
    @State private var exibindoFormulario = false
    @State private var novaFruta = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(frutas, id: \.self) { fruta in
                    Text(fruta)
                }
                .onDelete(perform: excluirFruta)
            }
            .navigationBarTitle("Frutas")
            .navigationBarItems(trailing:
                Button(action: {
                    exibindoFormulario = true
                }) {
                    Image(systemName: "plus")
                }
            )
            .sheet(isPresented: $exibindoFormulario) {
                FormularioFruta(novaFruta: $novaFruta, adicionarFruta: adicionarFruta)
            }
        }
    }
    
    func excluirFruta(at offsets: IndexSet) {
        frutas.remove(atOffsets: offsets)
    }
    
    func adicionarFruta() {
        frutas.append(novaFruta)
        novaFruta = ""
        exibindoFormulario = false
    }
}

struct FormularioFruta: View {
    @Binding var novaFruta: String
    var adicionarFruta: () -> Void
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Nova Fruta", text: $novaFruta)
                
                Button(action: {
                    adicionarFruta()
                }) {
                    Text("Adicionar")
                }
            }
            .navigationBarTitle("Adicionar Fruta")
        }
    }
}

struct AddListBootcampPreviews: PreviewProvider {
    static var previews: some View {
        AddListBootcamp()
    }
}

//
//  Teste.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 20/05/23.
//

import SwiftUI

struct EditList2Bootcamp: View {
    @State private var frutas = ["maçã", "banana", "laranja"]
    @State private var editando = false
    @State private var frutaEditada = ""
    @State private var indiceFrutaEditada = 0
    
    var body: some View {
        VStack {
            List(0..<frutas.count, id: \.self) { index in
                Button(action: {
                    indiceFrutaEditada = index
                    frutaEditada = frutas[index]
                    editando = true
                }) {
                    Text(frutas[index])
                }
            }
        }
        .sheet(isPresented: $editando) {
            VStack {
                TextField("Editar Fruta", text: $frutaEditada)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: {
                    frutas[indiceFrutaEditada] = frutaEditada
                    editando = false
                }) {
                    Text("Salvar")
                }
                .padding()
            }
            .padding()
        }
    }
}

struct EditList2Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EditList2Bootcamp()
    }
}

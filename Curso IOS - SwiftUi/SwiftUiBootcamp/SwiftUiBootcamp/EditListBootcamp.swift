//
//  01Classedeteste.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 20/05/23.
//

import SwiftUI

struct EditList: View {
    @State private var frutas = ["maçã", "banana", "laranja"]

    var body: some View {
        VStack {
            List {
                ForEach(frutas.indices, id: \.self) { index in
                    EditarFrutaView(fruta: $frutas[index])
                }
            }
        }
    }
}

struct EditarFrutaView: View {
    @Binding var fruta: String
    @State private var editingMode = false

    var body: some View {
        HStack {
            if editingMode {
                TextField("Fruta", text: $fruta)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.trailing, 8)
                    .transition(.opacity)
                    .animation(.default)
            } else {
                Text(fruta)
            }

            Button(action: {
                editingMode.toggle()
            }) {
                Image(systemName: editingMode ? "checkmark.circle" : "pencil.circle")
                    .foregroundColor(editingMode ? .blue : .gray)
            }
        }
    }
}


struct EditList_Previews: PreviewProvider {
    static var previews: some View {
        EditList()
    }
}

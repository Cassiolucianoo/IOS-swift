//
//  opa.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 20/05/23.
//

import SwiftUI


struct Deletando: View {
    @State private var frutas = ["maçã", "banana", "laranja"]

    var body: some View {
        VStack {
            List {
                ForEach(0..<frutas.count, id: \.self) { index in
                    HStack {
                        TextField("Fruta", text: $frutas[index])
                        Button(action: {
                            self.deleteFruta(at: index)
                        }) {
                            Image(systemName: "trash")
                        }
                    }
                }
            }
        }
    }

    private func deleteFruta(at index: Int) {
        frutas.remove(at: index)
    }
}

struct Deletando_Previews: PreviewProvider {
    static var previews: some View {
        Deletando()
    }
}

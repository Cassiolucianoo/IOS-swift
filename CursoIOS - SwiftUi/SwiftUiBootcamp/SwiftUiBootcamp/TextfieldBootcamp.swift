//
//  TextfieldBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 19/04/23.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textoEntrada: String = ""
    @State var baseArray: [String] = []
    
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                TextField("Informe o texto", text: $textoEntrada)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(Ajuste() ? Color.blue : Color.red)
                    .font(.headline)
                Button(action: {
                    if Ajuste(){
                        salvarTexto()
                    }
                    
                }, label: {
                    Text("Salvar")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Ajuste() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!Ajuste())
                List{
                ForEach(baseArray, id: \.self){ data in
                    
                        Text(data)
                    }
                    
                }.cornerRadius(10)
                Spacer()
            }.navigationTitle("Cadastrar")
                .padding()
        }
    }
    func salvarTexto(){
        
        baseArray.append(textoEntrada)
        textoEntrada =  ""
        
    }
    func Ajuste() -> Bool{
        if textoEntrada.count >= 5 {
            return true
        }
        return false
    }
    
}



struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}

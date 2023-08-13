//
//  TextEditorBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 19/04/23.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditor: String = "Sua mensagem aqui!"
    @State var salveText: String = "Ok"
    var corFundo = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    var corFundo2 = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
    var body: some View {
        
        NavigationView{
            VStack{
                TextEditor(text: $textEditor)
                    .foregroundColor(.red)
                    .frame(height: 250)
                    .colorMultiply(Color(corFundo))
                    .cornerRadius(10)
                Button(action: {
                    
                    salveText = textEditor
                    
                }, label: {
                    Text("Salvar")
                        .padding()
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.cornerRadius(10))
                        .padding()
                        .foregroundColor(.white)
                })
                
                Text(salveText)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Text Editor")
            .background(Color(corFundo2))
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}

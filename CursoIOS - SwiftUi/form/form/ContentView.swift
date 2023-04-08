//
//  ContentView.swift
//  form
//
//  Created by cassio on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var title = ""
    @State private var dateSelect = Date()
    @State private var description = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Informçãoes")){
                    TextField("Titulo da tarefa", text: $title)
                    DatePicker("Data inicio: ", selection: $dateSelect)
                }
                Section(header: Text ("Detalhes"), footer: Footer()) {
                    TextEditor(text: $description)
                        .frame( maxHeight: 150)
                }
            }
            .accentColor(.red)
            .navigationTitle("Criar tarefa")
            .onTapGesture {
                hideKeybord()
            }
            .navigationBarItems(leading: leading, trailing: trailing)
        }
    }
}

var leading: some View{
    Button(action: {
        
    }, label: {
        Text("Cancela")
        
    })
}
var trailing: some View{
    Button(action: {
        saveTarefa()
    }, label: {
        Text("Adicionar")
    })
}
func cancelar(){
    print("Tarefa salva")
}

func saveTarefa(){
    print("Tarefa salva")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Footer: View {
    @State private var wordCount: Int = 0
    var body: some View {
        Text ("\(self.wordCount) Caracteres")
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.headline)
            .foregroundColor(.secondary)
    }
}

extension View {
    func hideKeybord(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

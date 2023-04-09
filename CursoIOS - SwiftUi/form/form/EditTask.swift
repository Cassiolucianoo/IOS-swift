//
//  TaskEdit.swift
//  form
//
//  Created by cassio on 09/04/23.
//

import SwiftUI

struct EditTask: View {
    
    @State private var title = ""
    @State private var dateSelect = "21/09/1988"
    @State private var description = " "
 
    
    var body: some View {
            Form {
                Section(header: Text("Informçãoes")){
                    TextField("Titulo da tarefa", text: $title)
                    Text (" Data: \(dateSelect)")
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
        
    }
}

struct EditTask_Previews: PreviewProvider {
    static var previews: some View {
        EditTask()
    }
}

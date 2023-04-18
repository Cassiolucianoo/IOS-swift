//
//  ActionSheetBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 18/04/23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var mostrarActionSheet: Bool = false
    @State var actionSheetOpicao: ActionSheetOpicao = .minhaOutraPostagem
    
    enum ActionSheetOpicao {
        case minhaPostagem
        case minhaOutraPostagem
    }
    
    var body: some View {
        VStack{
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@Nomedousuario")
                Spacer()
                Button(action:{
                    actionSheetOpicao = .minhaOutraPostagem
                    mostrarActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $mostrarActionSheet, content: pegaAcaoSheet)
    }
    
    func pegaAcaoSheet() -> ActionSheet{
        
        let shareButton: ActionSheet.Button = .default(Text("Share")){
        }
        let relatorioButton: ActionSheet.Button = .destructive(Text("Report")){
        }
        let deletaButton: ActionSheet.Button = .destructive(Text("Delete")){
        }
        let cancelaButton: ActionSheet.Button = .cancel()
        
        
        let title = Text("o que você gostaria de fazer?")
        
        switch actionSheetOpicao{
        case .minhaOutraPostagem:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, relatorioButton, deletaButton, cancelaButton])
        case .minhaPostagem:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, relatorioButton, deletaButton, cancelaButton])
        
            
        }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}

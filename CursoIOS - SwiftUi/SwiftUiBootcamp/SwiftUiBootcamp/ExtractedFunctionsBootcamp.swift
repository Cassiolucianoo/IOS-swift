//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 15/02/23.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var titulo: String = "Amarelo"
    @State var fundo :Color = Color.yellow
    @State var contagem: Int = 0
    
    var body: some View {
        
        ZStack{
            fundo.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            conteudo
        }
    }
    var conteudo : some View {
        
        VStack{
            Text(titulo)
                .font(.largeTitle)
            Button(action: {
                botaoSelecionado()
            }, label: {
                Text("Trocar de cor e TEXTO")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    func botaoSelecionado(){
        if contagem == 1 {
            contagem = -1
            titulo = "Amarelo"
            fundo = .yellow
        }else{
            titulo = "Rosa"
            fundo = .pink
        }
        contagem += 1
    }
    
    struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            ExtractedFunctionsBootcamp()
        }
    }
}

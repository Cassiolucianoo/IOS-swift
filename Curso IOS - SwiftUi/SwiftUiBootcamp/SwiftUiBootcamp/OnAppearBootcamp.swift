//
//  OnAppearBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 25/04/23.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var meuTexto: String = "Texto inicial."
    @State var contador: Int = 0
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(meuTexto)
                /*
                 A principal diferença entre o VStack e o LazyVStack é que o LazyVStack adota uma abordagem "preguiçosa" (lazy) para renderizar as visualizações. Isso significa que ele só renderiza as visualizações que estão atualmente visíveis na tela, evitando assim a renderização desnecessária de visualizações que não estão visíveis na tela. Isso pode levar a melhorias significativas de desempenho em listas longas de visualizações.

                 Em resumo, o LazyVStack é útil para exibir listas de visualizações em interfaces de usuário, especialmente em casos onde há muitos itens na lista ou em listas que precisam ser carregadas dinamicamente.
                */
                LazyVStack{
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                contador += 1
                            }
                    }
                }
            }
            /*
             O onAppear é útil para executar ações quando uma visualização é carregada na tela. Por exemplo, você pode usar o onAppear para carregar dados de uma fonte externa, como um banco de dados, assim que a visualização é exibida na tela. Isso pode ser particularmente útil em casos onde você deseja carregar dados de forma assíncrona, para que a visualização não bloqueie a interface do usuário enquanto espera pelos dados.

             Aqui está um exemplo de uso do onAppear em uma visualização no SwiftUI:
             */
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    meuTexto =  "Esse é o novo texto"
                }
            })
            .onDisappear(perform: {
                meuTexto = "Texto Final"
            })
            .navigationTitle("On Appear : \(contador)")
        }
       
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}

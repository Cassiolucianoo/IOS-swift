//
//  IfLetGuardBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 30/04/23.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var userID: String? = nil
    @State var mostrarTexto: String? = nil
    @State var carregando: Bool = false
    
    
    var body: some View {
        
        NavigationView{
            VStack{
                Text("Exemplo de Codificação  seguro")
                if let texto = mostrarTexto{
                    Text(texto)
                        .font(.title)
                }
                if carregando{
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Codificação segura")
            .onAppear{
                carregaDados()
            }
        }
    }
    
    func carregaDados(){
        
        if let usuarioId = userID {
            
            carregando = true
            DispatchQueue.main.asyncAfter(deadline: .now () + 6){
                mostrarTexto = "Mostra o novo texto\(usuarioId)"
                carregando = false
            }
        }else {
            mostrarTexto = "Usuario não encontrado"
        }
 
    }
    
    func carregaDados2(){
        
        guard let usuarioId = userID else{
            
                mostrarTexto = "Erro ! 2"
               return
            }
        
        carregando = true
        DispatchQueue.main.asyncAfter(deadline: .now () + 6){
            mostrarTexto = "Mostra o novo texto\(usuarioId)"
            carregando = false
        }
    }
}
struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}

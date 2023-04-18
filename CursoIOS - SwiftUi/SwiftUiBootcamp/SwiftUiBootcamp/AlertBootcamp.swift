//
//  AlertBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 17/04/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var mostraAlerta: Bool = false
    @State var fundoColor: Color = Color.yellow
    
    @State var alertaTipo: MeuAlerta? = nil
    
    @State var menssagem: String =  ""
    @State var tituloAler: String = ""
    
    
    enum MeuAlerta {
        case sucesso
        case error
    }
    
    var body: some View {
        
        ZStack{
            fundoColor.edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Apresentar salvar") {
                    alertaTipo = .sucesso
                    mostraAlerta.toggle()
                    // tituloAler =  "Salvar"
                    //menssagem =  "Dseseja realmente salvar ?"
                }
                Button("Apresentar error") {
                    alertaTipo = .error
                    mostraAlerta.toggle()
                    // tituloAler =  "Error"
                    // menssagem =  "Algo deu errado,  deseja continuar ?"
                }
                
            }
            .foregroundColor(.white)
            .alert(isPresented: $mostraAlerta, content: {
                PegaAlerta()
            })
        }
    }
    func PegaAlerta () -> Alert {
        
        
        switch alertaTipo {
        case .error:
            return Alert(title: Text("Error"),
                         message: Text("menssagem"))
            
        case .sucesso:
            return Alert(title: Text("Sucesso"),
                         message: Text("menssagem"),
                         dismissButton: .default( Text("OK"), action: {
                 fundoColor = .red
            }))
             
        default:
            return Alert(title: Text("Error"))
        }
        
        // title: Text(tituloAler),
        // message: Text(menssagem),
        // primaryButton: .destructive(Text("Ok"), action: {
        //     fundoColor = .red
        //  }),
        // secondaryButton: .cancel({fundoColor = .blue})
    }
    
}
struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}

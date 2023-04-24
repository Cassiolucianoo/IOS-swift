//
//  DocumentationBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 24/04/23.
//



///Site referencia da apple para documentação.
/*
 https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode_markup_formatting_ref/
 */


import SwiftUI

struct DocumentationBootcamp: View {
    
    /*
    Este é um comentário em bloco.
    Pode conter várias linhas de texto.
    */
    let y = 10 // Esta linha cria uma constante "y" com o valor 10
    

// MARK: VARIAVEIS
    @State var data: [String] = [
        "Laranja", "Manana", "pera"]
    @State var alerta: Bool =  false

    // MARK: VIEW
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ForEach(data, id: \.self){ nome in
                        Text(nome)
                            .font(.headline)
                    }
                }
                .navigationTitle("Documentação")
                //Botão navegation no canto superior direito que ativa um alerta
                .navigationBarItems(trailing:
                                        Button("Alerta", action: {
                    alerta.toggle()
                })
                 //alerta
                ).alert(isPresented: $alerta, content:{
                    getAlert(text: "Alerta aqui")
                })
            }
        }
    }
    
    /*
     Esta função recebe uma string como entrada e retorna
     a contagem de caracteres nessa string.
    */
    
    /**
     Esta é uma descrição mais longa da função.

     - Parameter texto: A string a ser processada.
     - Returns: O texto do alerta.
    */
    func getAlert(text: String) -> Alert {
        // Código para contar caracteres
        return Alert(title: Text(text))
    }
    
    /// Esta é uma função de exemplo que adiciona dois números inteiros e retorna o resultado.
    /// - Parameters:
    ///     - a: O primeiro número a ser adicionado.
    ///     - b: O segundo número a ser adicionado.
    /// - Returns: A soma dos dois números fornecidos.
    func adicionar(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    
    /// Esta é uma classe de exemplo que representa um objeto na tela.
    class Exemplo {
        /// O identificador único deste objeto.
        var id: Int
        
        /// O nome deste objeto.
        var nome: String
        
        /// Inicializa um novo objeto com o identificador e o nome fornecidos.
        init(id: Int, nome: String) {
            self.id = id
            self.nome = nome
        }
        
        /// Altera o nome deste objeto para um novo valor.
        func setNome(_ nome: String) {
            self.nome = nome
        }
    }
    
}

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}

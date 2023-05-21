//
//  ListSwipeActionBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 19/05/23.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
    
    // MARK: VARIAVEIS
    @State private var frutas = ["maçã", "banana", "laranja"]
    @State private var exibirViewEdicao = false
    @State private var frutaSelecionada = ""
    
    var corFundo2 = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                List {
                    //ForEach(frutas, id: \.self) {
                    ForEach(frutas, id: \.self) { fruta in
                        Text(fruta.capitalized)
                        // Text($0.capitalized)
                        //.listRowBackground(Color.red) // Cor de fundo de cada linha
                            .swipeActions(edge: .trailing, allowsFullSwipe: true){
                                Button("Delete"){
                                    //pressionado, chamamos a função deleteFruta e passamos a fruta correspondente como parâmetro. Dentro da função deleteFruta, procuramos o índice da fruta no array
                                    deleteFruta(fruta)
                                }
                                .tint(.red)
                                Button("Salvar"){
                                    
                                }
                                .tint(.green)
                                Button("Editar"){
                                    exibirViewEdicao.toggle()
                                }
                                .tint(.blue)
                                
                            }
                        
                            .swipeActions(edge: .leading, allowsFullSwipe: true){
                                Button("Favoritar"){
                                    
                                    frutas.append("banana")
                                }
                                .tint(.yellow)
                                
                            }
                    }
                    
                }.sheet(isPresented: $exibirViewEdicao) {
                   // NovaTelaa(fruta: $frutaSelecionada, listaFrutas: $frutas)
                }
                
                
                .navigationTitle("FRUTAS")
                
                Text("Favoritos")
                    .font(.headline)
                    .foregroundColor(.yellow)
                
                List {
                    ForEach(frutas, id: \.self) {
                        Text($0.capitalized)
                        
                    }
                    
                }
                
            }    .listStyle(PlainListStyle())
                .background(Color(corFundo2)) // Cor de fundo da lista
            
        }
    }
    //usando firstIndex(of:) e removemos a fruta do array.
    func deleteFruta(_ fruta: String) {
        if let index = frutas.firstIndex(of: fruta) {
            frutas.remove(at: index)
        }
    }
    func add(indexSet: IndexSet){
        
    }
    func editar(indexSet: IndexSet){
        
    }
    func favoritar(indexSet: IndexSet){
        
    }
    
}

struct NovaTelaa: View {
    @Binding var fruta: String
 

    var corFundo2 = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    //discartando uma tela
    @Environment(\.presentationMode)  var presentationMode
   
    
    var body: some View {
        
        VStack{
            
            HStack(){
                
                Button(action: {
                    
                    presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .padding(10)
                })
                Spacer()
                
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .background(Color.orange)
            
            VStack(){
            
            Text("Editar fruta da lista")
                .padding()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
                
                TextField("Fruta", text: $fruta)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .font(.headline)
             
            Button(action: {
              

                
            }, label: {
                Text("Salvar")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .font(.headline)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 2)
                    )
                
            })
            
            
                Color( corFundo2)
                    .ignoresSafeArea(.all)
                
            }.padding()
        }
    }
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        //NovaTelaa()
        ListSwipeActionBootcamp()
    }
}



//
//  ListSwipeActionBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 19/05/23.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
    
    // MARK: --VARIAVEIS
    @State private var frutas = ["Abacate", "Abacaxi", "Açaí","Acerola", "Amora", "Araticum"]
    @State private var frutasFavoritas = ["Banana"]
    @State private var exibirViewEdicao = false
    @State private var frutaSelecionada = ""
    @State private var frutaEditada = ""
    @State private var indiceFrutaEditada = 0
    @State private var editando = false
    @State private var novaFruta = ""
    
    
    var corFundo2 = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                List(0..<frutas.count, id: \.self) { fruta in
                    Button(action: {
                        indiceFrutaEditada = fruta
                        frutaEditada = frutas[fruta]
                        editando = true
                    }) {
                        Text(frutas[fruta])
                        
                    }.swipeActions(edge: .trailing, allowsFullSwipe: true){
                        Button("Delete"){
                            
                            deleteFruta(frutas[fruta])
                        }
                        .tint(.red)
                        Button("Salvar"){
                            salvar()
                        }
                        .tint(.green)
                        Button("Editar"){
                            editar(fruta)
                        }
                        .tint(.blue)
                        
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true){
                        //Neste exemplo, adicionamos um botão que remove a primeira fruta da lista frutas usando frutas.removeFirst(), e em seguida, adicionamos essa fruta à lista frutasFavoritas usando frutasFavoritas.append(primeiraFruta).
                        Button("Favoritar"){
                            if let primeiraFruta = frutas.first {
                                frutas.removeFirst()
                                frutasFavoritas.append(primeiraFruta)}
                        }
                        .tint(.yellow)
                    }
                }
                .navigationTitle("FRUTAS")
                .navigationBarItems(trailing:
                                        HStack {
                    TextField("Nova Fruta", text: $novaFruta)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: {
                        adicionarFruta()
                        
                    }) {
                        Image(systemName: "plus")
                    }
                }
                )
                //MARK: - FAVORITOS
                Text("Favoritos")
                    .font(.headline)
                    .foregroundColor(.yellow)
                
                List {
                    ForEach(frutasFavoritas, id: \.self) {fruta in
                        Text(fruta.capitalized)
                        
                    }
                }
            }    .listStyle(PlainListStyle())
                .background(Color(corFundo2)) // Cor de fundo da lista
            
        }
        //MARK: - FAVORITOS fim
        
        //MARK: - EDITAR INICIO
        
        .sheet(isPresented: $editando) {
            
            VStack {
                
                Text("Editar fruta da lista")
                    .font(.title)
                    .foregroundColor(.black)
                
                TextField("Editar Fruta", text: $frutaEditada)
                    .padding()
                    .background(Color.gray.opacity(0.2).cornerRadius(10))
                    .font(.headline)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 1))
                
                Button(action: {
                    frutas[indiceFrutaEditada] = frutaEditada
                    editando = false
                }) {
                    Text("Salvar")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.headline)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.black, lineWidth: 2))
                }
            }.padding()
                .presentationDetents([.large, .medium, .fraction(0.3)])
        }
        
        //MARK: - EDITAR fim
        
    }
    //usando firstIndex(of:) e removemos a fruta do array.
    
    func adicionarFruta() {
        if !novaFruta.isEmpty {
            frutas.append(novaFruta)
            novaFruta = ""
        }
    }
    
    func deleteFruta(_ fruta: String) {
        if let index = frutas.firstIndex(of: fruta) {
            frutas.remove(at: index)
        }
    }
    func editar(_ fruta: Int) {
        indiceFrutaEditada = fruta
        frutaEditada = frutas[fruta]
        editando = true
    }
    func favoritar(indexSet: IndexSet){
        
    }
    
    func salvar() {
        frutas[indiceFrutaEditada] = frutaEditada
        editando = false
    }
    
}

struct Editar: View {
    
    var salvarFruta: () -> Void
    
    @Binding var fruta: String
    @Binding var editandoFruta: Bool
    
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
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
                
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



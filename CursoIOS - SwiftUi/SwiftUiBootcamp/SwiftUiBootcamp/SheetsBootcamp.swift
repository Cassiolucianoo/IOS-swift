//
//  SheetsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 13/04/23.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var visualizarSheetView: Bool = false
    @State var opaAqui: String = "Opa view 1"
    
    var body: some View {
        ZStack{
            
            Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Button(action: {
                
                visualizarSheetView = true
            }, label: {
                Text("Abrir A sheet View 1")
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            //nunca adicionar logicas de condicinal aqui
            .sheet(isPresented: $visualizarSheetView, content: {
                
                SegundaView( opa2: $opaAqui)
            })
            
        }
    }
}

struct SegundaView: View {
    @State var visualizarSheetView: Bool = false
    @Binding var opa2: String
    
    var body: some View {
        
        ZStack{
            
            Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                
                visualizarSheetView = true
            }, label: {
                Text("Abrir A sheet View 2 --->\(opa2)")
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                
            })
            
            //apresentação na folha fullscren
            .fullScreenCover(isPresented: $visualizarSheetView, content: {
                
                TerceiraView( )
            })
            
        }
    }
    
    struct TerceiraView: View {
        
        //discartando uma tela
        @Environment(\.presentationMode)  var presentationMode
        
        var body: some View {
            
            ZStack(alignment: .topLeading){
                
                Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Button(action: {
                    
                    presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
                })
                
            }
            
        }
    }
    
    struct SheetsBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            SheetsBootcamp()
            //SegundaView(  )
            //TerceiraView()
        }
    }
}

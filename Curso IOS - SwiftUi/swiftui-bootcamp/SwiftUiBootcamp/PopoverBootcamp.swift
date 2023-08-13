//
//  PopoverBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 14/04/23.
//
//  3 formas de objetos de transição
//
// sheet
// animations
// transitions

import SwiftUI



// MARK: - metodo 1 sheet

struct PopoverBootcamp: View {
    
    @State var mostraNovaTela: Bool = false
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.8225975815, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
                .ignoresSafeArea(.all)
            
            VStack{
                Button("Enter"){
                    mostraNovaTela.toggle()
                }.font(.largeTitle)
                Spacer()
                
                
                // sheet--------------
            }.sheet(isPresented: $mostraNovaTela, content: {
                NovaTela()
            })
            
        }
    }
}

struct NovaTela: View {
    
    
    //discartando uma tela
    @Environment(\.presentationMode)  var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
                .ignoresSafeArea(.all)
            
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






// MARK: - metodo 2 transitions

struct PopoverBootcampTransitions: View {
    
    @State var mostraNovaTela: Bool = false
    
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
                .ignoresSafeArea(.all)
            
            VStack{
                Button("Enter"){
                    mostraNovaTela.toggle()
                }.font(.largeTitle)
                Spacer()
                
                
                // metodo 2 transitions
                 ZStack{
                    if mostraNovaTela{
                        NovaTelaTransitions(fecha: $mostraNovaTela)
                            .padding(.top, 100)
                            .transition(.move(edge: .bottom))
                            .animation(.spring())
                    }
                }.zIndex(2.0)
              
                
            }
        }
    }
}

struct NovaTelaTransitions: View {
    //discartando uma tela
    
    @Binding var fecha: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color(#colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1))
                .ignoresSafeArea(.all)
            
            Button(action: {
                
                fecha.toggle()
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
    }
}





// MARK: - metodo 3  animations

struct PopoverBootcampAnimations: View {
    
    @State var mostraNovaTela: Bool = false
    
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1))
                .ignoresSafeArea(.all)
            
            VStack{
                Button("Enter"){
                    mostraNovaTela.toggle()
                }.font(.largeTitle)
                Spacer()
                
                
                // metodo 3 animations
                
                NovaTelaAnimations(fecha: $mostraNovaTela)
                    .padding(.top, 100)
                    .offset(y: mostraNovaTela ? 0: UIScreen.main.bounds.height)
                    .animation(.spring())
                
            }
        }
    }
}

struct NovaTelaAnimations: View {
    //discartando uma tela
    
    @Binding var fecha: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
                .ignoresSafeArea(.all)
            
            Button(action: {
                
                fecha.toggle()
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
    }
}





struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
    // PopoverBootcamp()
       // PopoverBootcampTransitions()
       PopoverBootcampAnimations()
    }
}


//
//  MainView.swift
//  NewSheet
//
//  Created by cassio on 11/04/23.
//

//import SwiftUI
//
//struct MainView: View {
//    @State private var isDragging = false
//    
//    var mainView: some View {
//        VStack{
//            // handle
//            ZStack{
//                Capsule()
//                    .frame(width: 40, height: 6)
//                
//            }
//            .frame(height: 40)
//            .frame(maxWidth: .infinity)
//            .background(Color.white.opacity(0.00001)) // this is important for the dragging!
//            .gesture(dragGesture)
//            
//            
//            ZStack{
//                VStack{
//                    Text("\"Todos os conteudos pode ser visualizados aqui\"")
//                        .font(.system(size: 25 , weight: .regular))
//                        .multilineTextAlignment(.center)
//                        .fixedSize(horizontal: false, vertical: true)
//                        .padding(.bottom, 10)
//                    //.frame(width:300, height: 20, alignment: .leading)
//                    
//                    Text(" opa ")
//                        .font(.system(size: 20, weight: .bold))
//                }
//                .padding(.horizontal, 30)
//            }
//            .frame(maxHeight: .infinity)
//            .padding(.bottom, 35)
//        }
//        
//        .frame(height: 500, alignment: .top)
//        .frame(maxWidth: .infinity)
//        .background(
//            //Hack for RoundedCorners only on top
//            ZStack{
//                RoundedRectangle(cornerRadius: 30)
//                Rectangle()
//                    .frame(height: curHeight / 2)
//            }
//            .foregroundColor(.white)
//        )
//        .animation(isDragging ? nil :.easeOut(duration: 0.43))
//    }
//    
//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}

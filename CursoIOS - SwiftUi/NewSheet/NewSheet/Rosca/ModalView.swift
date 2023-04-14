//
//  ModalView.swift
//  NewSheet
//
//  Created by cassio on 11/04/23.
//

import SwiftUI

struct ModalView: View {
    
    @State private var isDragging =  false
    @Binding var isShowing: Bool
    @State private var curHeight: CGFloat = 400
    @State private var rosca = ""
    let minHeight: CGFloat = 400
    let maxHeight: CGFloat = 700
    
    let startOpacity: Double = 0.4
    let endOpacity: Double = 1
    
    var dragPercentage: Double{
        let res = Double((curHeight - minHeight) / (maxHeight - minHeight))
        return max(0, min(1, res))
    }
    
    var body: some View {
        ZStack(alignment: .bottom){
            if isShowing{
                Color.red
                    .opacity(startOpacity + (endOpacity - startOpacity) * dragPercentage)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                mainView
                    .transition(.move(edge: .bottom))
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut)
    }
    var mainView: some View {
        VStack{
            
            // handle
            ZStack{
                Capsule()
                    .frame(width: 40, height: 6)
                
            }
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.00001)) // Cor da borda do botão PARA USO DO GESTURE
            .gesture(dragGesture)
            ZStack{
                VStack{
                    Text("Rosca")
                        .font(.system(size: 50 , weight: .regular))
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    Image("rosca 2")
                        .resizable()
                        .scaledToFit()
                    Text(rosca)
                        .font(.title)
                }
                .padding(.horizontal, 30)
            }
            .frame(maxHeight: .infinity)
            .padding(.bottom, 35)
        }
        .frame(height: curHeight)
        .frame(maxWidth: .infinity)
        .background(
            //Corte para cantos arredondados apenas no topo
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                Rectangle()
                    .frame(height: curHeight / 2)
            }
            .foregroundColor(.white)
        )
        .animation(isDragging ? nil : .easeOut(duration: 0.45))
    }
    
    @State private var prevDragTranslation = CGSize.zero
    
    var dragGesture: some Gesture{
        DragGesture(minimumDistance: 0, coordinateSpace: .global)
            .onChanged { val in
                if !isDragging{
                    isDragging = true
                    
                }
                let dragAmount = val.translation.height - prevDragTranslation.height
                if curHeight > maxHeight || curHeight < minHeight{
                    curHeight -= dragAmount / 6
                }else {
                    
                    curHeight -= dragAmount
                }
                prevDragTranslation = val.translation
            }
            .onEnded { val in
                prevDragTranslation = .zero
                isDragging = false
                if curHeight > maxHeight{
                    curHeight = maxHeight
                    rosca = " Grande"
                }else if curHeight < minHeight{
                    rosca = "Pequena"
                    curHeight = minHeight
                }
            }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

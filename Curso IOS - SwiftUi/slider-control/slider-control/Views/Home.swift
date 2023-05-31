//
//  Home.swift
//  slider-control
//
//  Created by cassio on 31/05/23.
//

import SwiftUI

struct Home: View {
    
    // MARK: - INTROS
    @State var intros: [Intro] = [
        
        Intro(titulo: "Rosca", subTitulo: "Rosca de morango", descricao: " No contexto dos Simpsons, a rosca desempenha um papel icônico e recorrente na série.", imagem: "rosca", cor: Color("corRosca")),
        
        Intro(titulo: "Homer Simpson ", subTitulo: "", descricao: " Homer Simpson é um dos personagens principais do desenho animado Os Simpsons . Ele é o pai da família Simpson e protagonista da série. ", imagem: "homer", cor: Color("corHomer")),
        
        Intro(titulo: "Duff", subTitulo: "Duff beer", descricao: "Duff é uma cerveja fictícia que se tornou um elemento icônico da série Os Simpsons", imagem: "duff", cor: Color("corduff")),
        
      
    ]
    
    
    
    // MARK: - PROPRIEDADES DE GESTO
    @GestureState var isDragging: Bool = false
    
    @State var fakeIndex: Int = 0
    @State var currentIndex: Int = 0

    var body: some View {
        ZStack {
            ForEach(intros.indices.reversed(), id: \.self){index in
                //Intro View
                IntroView(intro: intros[index])
                    .clipShape(LiquidShape(offset: intros[index].offset, curvePoint: fakeIndex == index ? 50 : 0))
                    .padding(.trailing, fakeIndex == index ? 15: 0)
                    .ignoresSafeArea()
            }
            HStack(spacing: 8) {
                ForEach(0..<intros.count - 2, id: \.self){index in
                    Circle()
                        .fill(.gray)
                        .frame(width: 8, height: 8)
                        .scaleEffect(currentIndex == index ? 1.15 : 0.85)
                        .opacity(currentIndex == index ? 1 : 0.25)
                }
                
                Spacer()
                
                Button{
                    
                } label: {
                    Text("SABER MAIS")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(.gray)
                        .clipShape(Capsule())
                }
            }
            .padding()
            .padding(.horizontal)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
        .overlay(
            
            Button(action: {
                
            }, label: {
                
                Image(systemName: "chevron.right")
                    .font(.largeTitle)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.black)
                    .contentShape(Rectangle())
                    .gesture(
                    DragGesture()
                        .updating($isDragging, body: {value, out, _ in
                            out = true
                        })
                        .onChanged({ value in
                            withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 0.6, blendDuration: 0.6)){
                                intros[fakeIndex].offset = value.translation
                            }
                            
                        })
                        .onEnded({value in
                            withAnimation(.spring()){
                                if -intros[fakeIndex].offset.width >
                                        getRect().width / 2 {
                                    intros[fakeIndex].offset.width = -getRect().height * 1.5
                                    
                                    fakeIndex += 1
                                    
                                    // MARK: - UPDATE ORIGINAL INDEX
                                    if currentIndex == intros.count - 3 {
                                        currentIndex = 0
                                    } else {
                                        currentIndex += 1
                                    }
                                    
                                    // MARK: - RESETING INDEX
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                                        if fakeIndex == (intros.count - 2) {
                                            for index in 0..<intros.count - 2{
                                                intros[index].offset = .zero
                                            }
                                            
                                            fakeIndex = 0
                                        }
                                    }
                                    
                                } else {
                                    intros[fakeIndex].offset = .zero
                                }
                            }
                        })
                    )
                
            })
            .offset(y: 53)
            .opacity(isDragging ? 0 : 1)
            .animation(.linear, value: isDragging)
            
            
            ,alignment: .topTrailing
        )
        .onAppear{
            guard let first = intros.first else {
                return
            }
            
            guard var last = intros.last else {
                return
            }
            
            last.offset.width = -getRect().height * 1.5
            
            intros.append(first)
            intros.insert(last, at: 0)
            
            fakeIndex = 1
        }
    }
    
    @ViewBuilder
    func IntroView(intro: Intro)->some View {
        VStack {
            
            Image(intro.imagem)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(40)
            
            VStack(alignment: .leading, spacing: 0) {
                
                Text(intro.titulo)
                    .font(.system(size: 40))
                    .textCase(.uppercase)
                
                Text(intro.subTitulo)
                    .font(.system(size: 36, weight: .bold))
                
                Text(intro.descricao)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .padding(.top)
                    .frame(width: getRect().width - 100)
                    .lineSpacing(8)
                
            }
            .foregroundColor(.black)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)
            .padding([.trailing, .top])
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            
            intro.cor
        
        )
    }
}
    
// MARK: - VIEW ETENSION

extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct LiquidShape: Shape {
    var offset: CGSize
    var curvePoint: CGFloat
    
    // MARK: SHAPE ANIMATION
    var animatableData: AnimatablePair<CGSize.AnimatableData, CGFloat>{
        get{
            return AnimatablePair(offset.animatableData, curvePoint)
        }
        set{
            offset.animatableData = newValue.first
            curvePoint = newValue.second
        }
    }
    
    func path(in rect: CGRect) -> Path {
            return Path{path in
                let width = rect.width + (-offset.width > 0 ? offset.width : 0)
                
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: rect.width, y: 0))
                path.addLine(to: CGPoint(x: rect.width, y: rect.height))
                path.addLine(to: CGPoint(x: 0, y: rect.height))
                
                // MARK: - FROM
                let from = 80 + (offset.width)
                path.move(to: CGPoint(x: rect.width, y: from > 80 ? 80 : from))
                
                // MAR: - TO
                var to = 180 + (offset.height) + (-offset.width)
                to = to < 180 ? 180 : to
                
                let mid : CGFloat = 80 + ((to - 80) / 2)
                
                path.addCurve(to: CGPoint(x: rect.width, y: to), control1: CGPoint(x: width - curvePoint, y: mid), control2: CGPoint(x: width - curvePoint, y: mid))
                
            }
        }
}



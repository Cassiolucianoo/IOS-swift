//
//  ContentView.swift
//  SwiftUI-Previsao-Do-Tempo
//
//  Created by cassio on 10/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, Color( "azulMaisClaro")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("São Paulo, BR")
                    .font(.system(size:32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("42º")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }.padding(.bottom, 40)
                
                HStack(spacing: 20){
                    SemanasView(semana: "SEG", img:  "cloud.sun.fill", temp: 9 )
                    SemanasView(semana: "TER", img:  "sun.max.fill", temp: 12)
                    SemanasView(semana: "QUA", img:  "cloud.sun.fill", temp: 31)
                    SemanasView(semana: "QUI", img:  "sunset.fill", temp: 32)
                    SemanasView(semana: "SEX", img:  "wind.snow", temp: 12)
                }
                Spacer()
                
                Button{
                    print("botão selecionado")
                }
                label:{
                    Text("Mudar horario do Dia")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size:20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }.padding(.bottom, 70)
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SemanasView: View {
    var semana: String
    var img: String
    var temp: Int
    
    var body: some View {
        VStack{
            Text(semana)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: img)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temp)º")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

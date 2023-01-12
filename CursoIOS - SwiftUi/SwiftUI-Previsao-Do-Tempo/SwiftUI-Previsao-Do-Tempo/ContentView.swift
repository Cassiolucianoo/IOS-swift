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
            CorDoFundo(topoCor: .blue, rodapeCor: Color("azulMaisClaro"))
            VStack{
                
                CidadeTextView(cidadeText: "São Paulo, BR")
                VStack(spacing: 10){
                    CidadeTemperaturaTextView(img: "cloud.sun.fill", temperatura:42)
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
                    
                    BotaoMudarTempo(textBotao: "BotaoMudarTempo", textColor: .blue, corDeFundoBt: .white)
                }
                
                Spacer()
                
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

struct CorDoFundo: View {
    var topoCor: Color
    var rodapeCor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topoCor, rodapeCor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CidadeTextView: View {
    var cidadeText: String
    var body: some View {
        Text(cidadeText)
            .font(.system(size:32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct CidadeTemperaturaTextView: View{
    var img: String
    var temperatura: Int
    var body: some View{
        VStack{
        Image(systemName: img)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
        Text("\(temperatura)º")
            .font(.system(size: 70, weight: .medium))
            .foregroundColor(.white)
    }.padding(.bottom, 40)
    }
}

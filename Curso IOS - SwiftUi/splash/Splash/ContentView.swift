//
//  ContentView.swift
//  Splash
//
//  Created by cassio on 25/05/23.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Text("Bem-vindo à minha App")
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue)
        // Personalize o layout e o estilo conforme necessário
    }
}

struct ContentView: View {
    @State private var showSplash = true
    
    var body: some View {
        ZStack {
            if showSplash {
                SplashView()
                    .onAppear {
                        // Defina um atraso para encerrar a tela de splash após alguns segundos
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            showSplash = false
                        }
                    }
            } else {
                // Aqui você pode colocar a próxima View após a tela de splash
                Text("Tela principal")
                    .font(.title)
                    .foregroundColor(.black)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       
            ContentView()
      
    }
}

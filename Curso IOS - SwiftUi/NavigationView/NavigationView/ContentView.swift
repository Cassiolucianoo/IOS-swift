//
//  ContentView.swift
//  NavigationView
//
//  Created by cassio on 10/01/23.
//

import SwiftUI

struct VermelhoView: View {
    var body: some View {
        NavigationView {
            VStack{
                
                CicleNumberView(color: .red, number: 1)
                    .navigationTitle("Vermelho")
                    .offset(y: -60)
                NavigationLink(
                    destination: AzulView(),
                    label: {
                        Text("Tela seguinte")
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                
            }
            
        }
        .accentColor(Color(.label))
    }
}

struct AzulView: View {
    var body: some View {
        
        VStack{
            
            CicleNumberView(color: .blue, number: 2)
                
                .navigationTitle("Azul")
                .offset(y: -60)
            NavigationLink(
                destination: VerdeView(),
                label: {
                    Text("Tela seguinte")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
        }
    }
}

struct VerdeView: View {
    var body: some View {
        
        VStack{
            
            CicleNumberView(color: .green, number: 2)
                
                .navigationTitle("Verde")
                .offset(y: -70)
            
        }
    }
}

struct CicleNumberView: View {
    
    var color: Color
    var number: Int
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VermelhoView()
        }
    }
}

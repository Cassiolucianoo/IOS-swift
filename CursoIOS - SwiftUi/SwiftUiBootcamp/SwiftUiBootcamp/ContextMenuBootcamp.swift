//
//  ContextMenuBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 18/04/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var literalColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    @State var transport = "vai de que ?"
    @State var imagem = "lightbulb"
    
    var body: some View {
        card
            .contextMenu(menuItems: {
                
                Button(action: {
                    literalColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
                    transport = "Bus"
                    imagem = "bus.doubledecker"
                }
                       , label:{
                    HStack{
                        Text("Bus")
                        Image(systemName: "bus.doubledecker")
                    }
                } )
                
                Button(action: {
                    literalColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                    transport = "Caminhando"
                    imagem = "figure.highintensity.intervaltraining"
                }, label:{
                    HStack{
                        Text("Caminhando")
                        Image(systemName: "figure.highintensity.intervaltraining")
                    }
                } )
                
                Button(action: {
                    literalColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
                    transport = "carro"
                    imagem = "car.fill"
                }, label:{
                    HStack{
                        Text("carro")
                        Image(systemName: "car.fill")
                    }
                } )
                
                Button(action: {
                    literalColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
                    transport = "Avião"
                    imagem = "airplane"
                }, label:{
                    HStack{
                        Text("Avião")
                        Image(systemName: "airplane")
                    }
                } )
            })
    }
    var card: some View {
        HStack{
            VStack{
                
                Text("Selecione aqui e mude")
                VStack(alignment: .leading, spacing: 10.0){
                    Image(systemName: imagem)
                        .padding(.horizontal, 2.0)
                        .font(.title)
                    
                    Text(transport)
                        .font(.headline)
                    Text("Selecione aqui e mude")
                        .font(.subheadline)
                }
                .padding(.all, 10.0)
                .foregroundColor(.white)
                .background(Color(literalColor))
                .clipShape(
                    RoundedRectangle(cornerRadius: 10.0)
                )
            }
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}

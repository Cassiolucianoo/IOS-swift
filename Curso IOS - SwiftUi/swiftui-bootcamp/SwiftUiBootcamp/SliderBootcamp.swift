//
//  SliderBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 22/04/23.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var corre: Double = -300
    @State var color: Color = .red
    
    var body: some View {

            VStack{
                Image("carro")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .padding(.leading,corre)
                    .shadow(color: Color(.black).opacity(0.2), radius: 0, x: 0, y: 5)
                Text(
                String(format: "%.0f", corre)
                )
               // Slider(value: $corre)
               // Slider(value: $corre, in: 1...5)
               //Slider(value: $corre, in: -300...300, step: 1.0)
                
                Slider(
                    value: $corre,
                       in: -300...300,
                       step: 1.0,
                       onEditingChanged: { (_) in
                    color = .green
                },
                    minimumValueLabel:Text("1"),
                    maximumValueLabel:Text("100"),
                    label: {
                 Text("1")
             }
                )
                
                .accentColor(.red)
                
            }.padding()
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}

//
//  PickerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 21/04/23.
//

import SwiftUI
import UIKit

struct PickerBootcamp: View {
    
    @State var selecionarDia: String = "00"
    @State var selecionarMes: String = "00"
    @State var selecionarAno: String = "0000"
    
    
    var body: some View {
        
        
        VStack{
            HStack{
                
                Text(selecionarDia)
                Text("/")
                
                Text(selecionarMes)
                Text("/")
                Text(selecionarAno)
                
            }
            
          
                Picker(
                    selection: $selecionarDia,
                    label: Text("Picker"),
                    content:{
                        
                        ForEach(1..<31) { numero in
                            Text("\(numero)").tag("\(numero)")
                        }

                    }).pickerStyle(MenuPickerStyle())
                
                Picker(
                    selection: $selecionarMes,
                    label: Text("Picker"),
                    content:{
                        ForEach(1..<13) { numero in
                            Text("\(numero)").tag("\(numero)")
                        }
                      //  Text("12").tag("12")
                        
                    }).pickerStyle(SegmentedPickerStyle())
                    .padding()
            
            Picker(
                selection: $selecionarAno,
                label: Text("Picker"),
                content:{
                    ForEach(1..<13) { numero in
                        Text("\(numero)")
                            .font(.headline)
                            .foregroundColor(.red)
                            .tag("\(numero)")
                        
                    }
                  //  Text("12").tag("12")
                    
                })
                .padding()
                
            
            
        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}

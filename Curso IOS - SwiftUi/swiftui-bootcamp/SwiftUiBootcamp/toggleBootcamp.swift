//
//  toggleBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 20/04/23.
//
import SwiftUI

struct toggleBootcamp: View {
    
    @State var togggleIsOn: Bool =  false
    var colortrue = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    var colorfalse = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
    var colorLigada = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    
    @State var toggleOn = false
    var body: some View {
        ZStack{
            VStack {
                HStack{
                    Text("Status!")
                        .foregroundColor(togggleIsOn ? .black : .white)
                    Text(togggleIsOn ? " Ligada " : "Desligado")
                        .foregroundColor(togggleIsOn ? .green : .red)
                }.font(.title)
                
                Toggle(isOn: $togggleIsOn
                       , label: {
                    Text("Mudar status")
                        .foregroundColor(togggleIsOn ? .black : .white)
                    
                })
                .toggleStyle(SwitchToggleStyle(tint: Color(colortrue)))
                Spacer()
            }
            
            .padding(.horizontal,80)
            .padding(.top,100)
            .background(togggleIsOn ? Color(colorLigada) : Color.black )
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image(togggleIsOn ? "1815262" : "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .shadow(color: Color(.red).opacity(4), radius: 80, x: -10, y: -10)
                
            }
        }
    }
}

struct toggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        toggleBootcamp()
    }
}

//
//  StepperBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 22/04/23.
//

import SwiftUI

struct StepperBootcamp: View {
    
    
    @State var stepperValor : Int = 0
    @State var largura : CGFloat = 0
    @State var colorFundo = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    
    var body: some View {
        
        ZStack{
            Color(colorFundo)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Image("rosca")
                    .resizable()
                    .scaledToFill()
                    .frame(width: largura, height: largura)
                    .clipShape(
                        Circle()
                    )
                
                HStack{
                    VStack {
                        Stepper("Stepper Numerico \(stepperValor)", value: $stepperValor )
                        Stepper("Stepper rosca \(largura)", value: $largura )
                        
                        Stepper("Stepper 3 func"){
                            incremento(amount: 50)
                        } onDecrement: {
                            incremento(amount: -50)
                        }
                        
                        
                    }.padding()
                }
                .background(Color.white)
                .cornerRadius(20)
                .padding()

            }
        }
    }
    func incremento(amount: CGFloat){
        withAnimation(.easeInOut){
            largura += amount
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}

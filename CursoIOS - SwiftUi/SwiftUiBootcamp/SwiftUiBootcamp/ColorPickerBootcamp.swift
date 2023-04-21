//
//  ColorPickerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 21/04/23.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var corDoFundo: Color = .green
    
    var body: some View {
        ZStack{
            corDoFundo.edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color",
            selection: $corDoFundo,
            supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(20)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
            
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}

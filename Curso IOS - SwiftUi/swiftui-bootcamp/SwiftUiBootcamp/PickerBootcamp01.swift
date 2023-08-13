//
//  PickerBootcamp01.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 21/04/23.
//

import SwiftUI


struct PickerBootcamp01: View {
    
    
    @State private var number: Int = 1
    
    
    var body: some View {
        
        Picker("Your age", selection: $number) {
            ForEach(1...100, id: \.self) { number in
                Text("\(number)")
            }
        }
    }
}
struct PickerBootcamp01_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp01()
    }
}

//
//  ContentView.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 12/01/23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
          //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 15)
            //.fill(Color.gray)
            //.foregroundColor(.pink)
            //.stroke()
            //.stroke(Color.red)
            //.stroke(Color.blue, lineWidth: 30)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round,  dash: [30]))
            //.trim(from: 0.3, to: 1.0)
            .frame(width: 300, height:200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}

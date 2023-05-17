//
//  CircularProgressBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 16/05/23.
//

import SwiftUI

struct CircularProgressBootcamp: View {
    @State var scale: CGFloat = 1
    
    let starColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
    var body: some View {
        // 1
        Image(systemName: "sparkle")
            .foregroundColor(Color(starColor))
            .font(.system(size: 20, weight: .black))
            
            // 2
            .scaleEffect(scale)
            
            // 3
            .onAppear {
                
                // 4
                let baseAnimation = Animation.easeInOut(duration: 1.5)
                let repeated = baseAnimation.repeatForever(autoreverses: true)
                
                // 5
                withAnimation(repeated) {
                    scale = 0.8
                }
            }
    }
    
}

struct StarrySky: View {
    
    let bgColor = #colorLiteral(red: 0.2054183185, green: 0.08943314105, blue: 0.4286007285, alpha: 1)
    let height = UIScreen.main.bounds.height
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack {
          
            // 1
            Color(bgColor).edgesIgnoringSafeArea(.all)
            
            // 2
            ForEach(0..<10) { index in
                CircularProgressBootcamp()
                    // 3
                    .position(x: CGFloat.random(in: 0...width), y: CGFloat.random(in: 0...height))
            }
        }
       
    }
}

struct CircularProgressBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StarrySky()
    }
}

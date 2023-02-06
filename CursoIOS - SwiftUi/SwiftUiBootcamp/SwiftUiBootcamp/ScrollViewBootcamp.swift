//
//  ScrollViewBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 06/02/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            VStack{
                ForEach(0..<5){ index in
                    Rectangle()
                        .fill(Color.red)
                        .frame(height: 200)
                    
                }
            }
        })
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}

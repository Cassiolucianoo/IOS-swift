//
//  TextSelectionBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 18/05/23.
//

import SwiftUI

struct TextSelectionBootcamp: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .textSelection(.enabled)
            
        }
    }
}
struct TextSelectionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBootcamp()
    }
}

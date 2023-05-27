//
//  BadgesBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 26/05/23.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        TabView{
            Color.red
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge(4)
            Color.green
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge("New")
            Color.blue
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge("Cassio")
        }
        
        List{
            Text("Hello, word !")
                .badge("NOVO ITEMS!")
            Text("Hello, word !")
                .badge(7)
            Text("Hello, word !")
            Text("Hello, word !")
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}

//
//  AppStorageBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 09/05/23.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("nome") var currentUserName: String?
    var body: some View {
        VStack(spacing: 20){
            Text(currentUserName ?? "Add Name Here")
            
            if let nome = currentUserName{
                Text(nome)
            }
            Button("Save".uppercased()){
                let nome: String = "Emily"
                currentUserName = nome
            }
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}

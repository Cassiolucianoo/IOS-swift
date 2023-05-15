//
//  NavigationViewApp.swift
//  NavigationView
//
//  Created by cassio on 10/01/23.
//

import SwiftUI

@main
struct NavigationViewApp: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.red]
    }
    
    var body: some Scene {
        WindowGroup {
            VermelhoView()
        }
    }
}

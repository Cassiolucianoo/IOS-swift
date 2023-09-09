//
//  AppDelegate.swift
//  Treinamento1.04 - CicloDeVida
//
//  Created by cassio luciano on 13/01/22.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        print(" didFinishLaunchingWithOptions launchOptions ")
        
        return true
    }

    // MARK: - UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {

        print(" configurationForConnecting connectingSceneSession ")

        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)


    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
     
        print(" didDiscardSceneSessions sceneSessions ")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print(" applicationDidBecomeActive ")
    }

    
    func applicationWillResignActive(_ application: UIApplication) {
        print(" applicationWillResignActive ")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print(" applicationDidEnterBackground ")
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        print(" applicationWillEnterForeground ")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print(" applicationWillTerminate ")
    }


}


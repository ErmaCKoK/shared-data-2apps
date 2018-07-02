//
//  AppDelegate.swift
//  App A
//
//  Created by Andrii Kurshyn on 01.07.2018.
//  Copyright © 2018 Andrii Kurshyn. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        print("open \(url)")
        
        let text = UserDefaults.standard.string(forKey: "text") ?? "nil"
        let url = URL(string: "appb://redirect?text=\(text)")!
        UIApplication.shared.open(url, options: [:], completionHandler: nil)//(url)
        
        return false
    }
    
//    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([Any]?) -> Void) -> Bool {
//        print("userActivity \(userActivity)")
//        return false
//    }


}


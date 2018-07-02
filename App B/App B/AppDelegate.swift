//
//  AppDelegate.swift
//  App B
//
//  Created by Andrii Kurshyn on 01.07.2018.
//  Copyright © 2018 Andrii Kurshyn. All rights reserved.
//

import UIKit

extension NSNotification.Name {
    static var AppDidReciveUrl: NSNotification.Name { return NSNotification.Name(rawValue: "NotificationAppDidRReciveUrl") }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        
        NotificationCenter.default.post(name: .AppDidReciveUrl, object: url.absoluteString)
        
        return false
    }


}


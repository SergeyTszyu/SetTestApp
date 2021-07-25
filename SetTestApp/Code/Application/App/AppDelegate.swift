//
//  AppDelegate.swift
//  SetTestApp
//
//  Created by Sergey Tszyu on 25.07.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        AppNavigator.setupRootViewController(for: window)
        
        return true
    }
    
}


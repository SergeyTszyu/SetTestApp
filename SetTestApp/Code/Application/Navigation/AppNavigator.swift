//
//  AppNavigator.swift
//  SetTestApp
//
//  Created by Sergey Tszyu on 25.07.2021.
//

import UIKit

struct AppNavigator {
    
    static func setupRootViewController(for window: UIWindow?) {
        
        window?.rootViewController = R.storyboard.main.instantiateInitialViewController()
        window?.makeKeyAndVisible()
    }

}

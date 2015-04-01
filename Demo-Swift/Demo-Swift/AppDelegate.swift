//
//  AppDelegate.swift
//  Demo-Swift
//
//  Created by Daniel Khamsing on 3/13/15.
//  Copyright (c) 2015 Daniel Khamsing. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {        
        let navigationController = UINavigationController(rootViewController: ViewController())
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        
        return true
    }

}


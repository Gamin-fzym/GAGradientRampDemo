//
//  AppDelegate.swift
//  GAGradientRampDemo
//
//  Created by MaciOS on 2021/7/29.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        let gra = GradientVC()
        window?.rootViewController = gra
        window?.makeKeyAndVisible()
        return true
    }

}


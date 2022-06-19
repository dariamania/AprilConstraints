//
//  AppDelegate.swift
//  AprilConstraints
//
//  Created by Dariia Pavlovskaya on 10.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = SecondViewController()
        window?.backgroundColor = .red
        window?.makeKeyAndVisible()
        return true
    }
}

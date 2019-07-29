//
//  AppDelegate.swift
//  NavigationController
//
//  Created by MinKyeongTae on 29/07/2019.
//  Copyright © 2019 MinKyeongTae. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, willFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        return true
    }

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let firstViewController = FirstViewController()
        let navigationController = UINavigationController(rootViewController: firstViewController)
        navigationController.navigationItem.title = "네이게이션 타이틀"
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return true
    }
}

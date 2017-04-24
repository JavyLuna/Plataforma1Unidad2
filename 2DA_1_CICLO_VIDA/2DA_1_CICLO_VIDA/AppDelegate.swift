//
//  AppDelegate.swift
//  2DA_1_CICLO_VIDA
//
//  Created by administrador on 07/03/17.
//  Copyright © 2017 tec2. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
//Esta funcion nos muestra en consola cuando abre la app
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
        print("WillResignActive")
    }
//Esta funcion nos muestra en consola minimizamos la aplicacion y nos vamos al menu de inicio
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print("DidEnterBackground")
    }
//Esta funcion nos muestra en consola cuando la minimizamos
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
        print("WillEnterForeground")
    }
//Esta funcion nos muestra en consola cuando la aplicacion se queda activa
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        print("DidBecomeActive")
    }
//Esta funcion nos muestra en consola cuando la aplicacion se termina, desde el administrador de las aplicaciones
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        print("WillTerminate")
    }

}


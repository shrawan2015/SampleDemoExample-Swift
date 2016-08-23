//
//  AppDelegate.swift
//  MovieList-RXSWIFT
//
//  Created by ShrawanKumar Sharma on 22/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import UIKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let movieList : [MovieVM] = {
        let ferrariF12 = MovieModel(movieName:"dfdfdf ",moviecharacter:"dfdfdgfd",dateRelease:"cvcvcvcv",characters:"dfdfdf")
//        let zondaF = CarModel(model: "Zonda F", make: "Pagani", horsePower:"602", photoURL: "http://storage.pagani.com/view/1024/BIG_zg-4-def.jpg")
//        
//        let lamboAventador = CarModel(model: "Aventador", make: "Lamborghini", horsePower: "700", photoURL: "http://cdn.lamborghini.com/content/models/aventador_lp700-4_roadster/gallery_2013/roadster_21.jpg")
//        
        return [MovieVM(movieModel: ferrariF12)]
    }()

    

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


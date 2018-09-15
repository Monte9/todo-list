//
//  AppDelegate.swift
//  Chantal
//
//  Created by Monte with Pillow on 9/15/18.
//  Copyright © 2018 Monte Thakkar. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let taskStore = TaskStore()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Static tasks init
//        let todoTasks = [Task(name: "Finish To-do list app"), Task(name: "Go grocery shopping"), Task(name: "Watch Tech videos"), Task(name: "Solve Leetcode problems")]
//        let doneTasks = [Task(name: "Do Laundry"), Task(name: "Eat Pizza")]
//
//        taskStore.tasks = [todoTasks, doneTasks]
        
        let taskController = window?.rootViewController?.childViewControllers.first as? TasksController
        taskController?.taskStore = taskStore
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
        // Save tasks
        TasksUtility.save(self.taskStore.tasks)
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        
        // Save tasks
        TasksUtility.save(self.taskStore.tasks)
    }


}


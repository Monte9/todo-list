//
//  TasksUtility.swift
//  Chantal
//
//  Created by Monte with Pillow on 9/15/18.
//  Copyright © 2018 Monte Thakkar. All rights reserved.
//

import Foundation

class TasksUtility {
    
    private static let key = "tasks"
    
    // archive
    private static func archive(_ tasks: [[Task]]) -> NSData {
        return NSKeyedArchiver.archivedData(withRootObject: tasks) as NSData
    }
    
    // fetch
    static func fetch() -> [[Task]]? {
        guard let unarchivedData = UserDefaults.standard.object(forKey: key) as? Data else { return nil }
        
        return NSKeyedUnarchiver.unarchiveObject(with: unarchivedData) as? [[Task]]
    }
    
    // save
    static func save(_ tasks: [[Task]]) {
        
        // archive
        let archivedTasks = archive(tasks)
        
        // set object for key
        UserDefaults.standard.set(archivedTasks, forKey: key)
        UserDefaults.standard.synchronize()
    }
}

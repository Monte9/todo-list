//
//  TasksStore.swift
//  Chantal
//
//  Created by Monte with Pillow on 9/15/18.
//  Copyright © 2018 Monte Thakkar. All rights reserved.
//

import Foundation

class TaskStore {
    var tasks = [[Task](), [Task]()]
    
    func add(_ task: Task, at index: Int, isDone: Bool = false) {
        let section = isDone ? 1 : 0
        
        tasks[section].insert(task, at: index)
    }
    
    @discardableResult func removeTask(at index: Int, isDone: Bool = false) -> Task {
        let section = isDone ? 1 : 0
        
        return tasks[section].remove(at: index)
    }
}

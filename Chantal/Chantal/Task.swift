//
//  Tasks.swift
//  Chantal
//
//  Created by Monte with Pillow on 9/15/18.
//  Copyright © 2018 Monte Thakkar. All rights reserved.
//

import Foundation

class Task {
    
    var name: String
    var isDone: Bool
    
    init(name: String, isDone: Bool = false) {
        self.name = name;
        self.isDone = isDone;
    }
}

//
//  ToDoItem.swift
//  ToDoListApp
//
//  Created by Haily San Cesario on 5/12/24.
//

import Foundation

class ToDoItem {
    var title = "" //remember to initialize them
    var isImportant = false
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
    }
}




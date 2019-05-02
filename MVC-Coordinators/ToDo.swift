//
//  ToDo.swift
//  MVC-Coordinators
//
//  Created by Josue Emanuel Quinones Rivera on 5/2/19.
//  Copyright © 2019 Globant. All rights reserved.
//

import UIKit

//MARK: To Do model
struct ToDo {
    //MARK: Attributes
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    //MARK: Methods for load data
    static func loadToDos() -> [ToDo]? {
        return nil
    }
    
    //MARK: Date Formatter
    static let dueDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
}

//
//  ViewController.swift
//  MVC-Coordinators
//
//  Created by Josue Emanuel Quinones Rivera on 5/2/19.
//  Copyright © 2019 Globant. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    //MARK: Attributes
    var toDos = [ToDo]()
    
    //MARK: ToDoTableViewController methods
    override func viewDidLoad() {
        super.viewDidLoad()
        if let savedToDos = ToDo.loadToDos() {
            toDos = savedToDos
        }
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "ToDoCell")
        navigationItem.leftBarButtonItem = editButtonItem
    }
}

//MARK: ToDoTableViewController Data Source
extension ToDoTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)
        cell.textLabel?.text = toDos[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            toDos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

//
//  ViewController.swift
//  Sneakers
//
//  Created by Pimpisa Predaswad on 2/13/16.
//  Copyright © 2016 Pimpisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var toDoItems = [ToDoItems]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if toDoItems.count > 0{
        
            return
        
        }
        toDoItems.append(ToDoItems(text: "Drink a big glass of water"))
        toDoItems.append(ToDoItems(text: "Look at the blue paper"))
        toDoItems.append(ToDoItems(text: "---------"))
        toDoItems.append(ToDoItems(text: "rule the Web"))
        toDoItems.append(ToDoItems(text: "buy a new iPhone"))
        toDoItems.append(ToDoItems(text: "darn holes in socks"))
        toDoItems.append(ToDoItems(text: "write this tutorial"))
        toDoItems.append(ToDoItems(text: "master Swift"))
        toDoItems.append(ToDoItems(text: "learn to draw"))
        toDoItems.append(ToDoItems(text: "get more exercise"))
        toDoItems.append(ToDoItems(text: "catch up with Mom"))
        toDoItems.append(ToDoItems(text: "get a hair cut"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


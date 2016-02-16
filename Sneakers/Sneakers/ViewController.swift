//
//  ViewController.swift
//  Sneakers
//
//  Created by Pimpisa Predaswad on 2/13/16.
//  Copyright © 2016 Pimpisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var toDoItems = [ToDoItems]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableView()
        
        setUpToDoItems()
        
        
    }
    
    func setUpTableView(){
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.separatorStyle = .None
        tableView.rowHeight = 50.0

        
    }
    
    func setUpToDoItems(){
        
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
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("cell",
                forIndexPath: indexPath) 
            let item = toDoItems[indexPath.row]
            cell.textLabel?.text = item.text
            return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath
        indexPath: NSIndexPath) -> CGFloat {
            return tableView.rowHeight;
    }


}


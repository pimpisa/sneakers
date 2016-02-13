//
//  ToDoItems.swift
//  Sneakers
//
//  Created by Pimpisa Predaswad on 2/13/16.
//  Copyright © 2016 Pimpisa. All rights reserved.
//

import UIKit

class ToDoItems: NSObject {
    
    var text:String!
    
    var completed:Bool!
    
    init(text: String){
        
        self.text = text
        self.completed = false
    
    }

}

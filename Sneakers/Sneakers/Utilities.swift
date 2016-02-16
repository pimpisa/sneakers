//
//  Utilities.swift
//  Sneakers
//
//  Created by Pimpisa Predaswad on 2/15/16.
//  Copyright © 2016 Pimpisa. All rights reserved.
//

import UIKit

class Utilities: NSObject {
    
    static func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    

}

//
//  Extensions.swift
//  Pop A Lock
//
//  Created by Ryan Bilak on 5/5/16.
//  Copyright © 2016 beachambilak. All rights reserved.
//

import Foundation
import SpriteKit

extension CGFloat {
    
    static func random(min: CGFloat, max: CGFloat) -> CGFloat {
        
         return CGFloat(Float(arc4random()) / 0xFFFFFFFF) * (max - min) + min

        
    }
    
}

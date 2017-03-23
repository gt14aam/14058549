//
//  Draggingimage.swift
//  project1
//
//  Created by Gurmeet on 22/03/2017.
//  Copyright © 2017 Gurmeet. All rights reserved.
//

import UIKit

class Draggingimage: UIImageView {
    
    var applelocation: CGPoint?
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        applelocation = touches.first?.location(in: self)
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let currentLocation = touches.first?.location(in: self)
        let dx = currentLocation!.x - applelocation!.x
        let dy = currentLocation!.y - applelocation!.y
        
        self.center = CGPoint(x :self.center.x+dx, y : self.center.y+dy)
        
        let halfx = self.bounds.midX
        self.center.x = min(halfx, self.center.x)
        self.center.x = max((self.superview?.bounds.size.width)! - halfx,self.center.x)
        
        let halfy = self.bounds.midY
        self.center.y = min(halfy, self.center.y)
        self.center.y = max((self.superview?.bounds.size.height)! - halfy,self.center.y)
        self.center = self.center
    }
}

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
        
        var newcenter = CGPoint(x :self.center.x+dx, y : self.center.y+dy)
        
        let halfx = self.bounds.midX
        newcenter.x = max(halfx, newcenter.x)
        newcenter.x = min((self.superview?.bounds.size.width)! - halfx,newcenter.x)
        
        let halfy = self.bounds.midY
        newcenter.y = max(halfy + 200, newcenter.y)
        newcenter.y = min((self.superview?.bounds.size.height)! - halfy,newcenter.y)
        
        self.center = newcenter
    }
}

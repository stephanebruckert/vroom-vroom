//
//  Speed.swift
//  vroom-vroom
//
//  Created by Stephane Bruckert on 12/20/15.
//  Copyright © 2015 Stephane Bruckert. All rights reserved.
//

import Foundation

class Speed: NSObject
{
    
    func update(fifo: FIFOQueue<NSDate>)
    {
        Menu().changeTitle(speed(fifo))
    }
    
    func speed(fifo: FIFOQueue<NSDate>) -> String
    {
        let elapsedTime = fifo.items.last!.timeIntervalSinceDate(fifo.items.first!)
        let x = 1.0
        return NSString(format: "%0.0fw/m",x/Double(elapsedTime)*(60/x)) as String
    }

    
}
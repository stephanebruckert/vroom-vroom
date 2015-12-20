//
//  KB.swift
//  wpm-menubar
//
//  Created by Stephane Bruckert on 12/20/15.
//  Copyright © 2015 Stephane Bruckert. All rights reserved.
//

import Foundation
import Cocoa

let KB = Keyboard()

class Keyboard: NSObject
{
    private override init(){}
    
    
    func keyDownEvent(event: NSEvent!)
    {
        print(event.keyCode)
        
    }
    
}
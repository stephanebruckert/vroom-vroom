//
//  LIFOStack.swift
//  vroom-vroom
//
//  Created by Stephane Bruckert on 12/20/15.
//  Copyright © 2015 Stephane Bruckert. All rights reserved.
//

import Foundation

class FIFOQueue<T>
{
    var items : [T]
    
    init()
    {
        items = [T]()
    }
    
    func push(item : T)
    {
        items.insert(item, atIndex: items.count)
        
        if items.count > 5
        {
            pop()
        }
        
        print(items)
    }
    
    func pop() -> T?
    {
        if items.count == 0
        {
            return nil
        }
        
        let item = items[0]
        items.removeAtIndex(0)
        return item
    }
}

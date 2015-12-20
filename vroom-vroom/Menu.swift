//
//  Menu.swift
//  vroom-vroom
//
//  Created by Stephane Bruckert on 12/20/15.
//  Copyright © 2015 Stephane Bruckert. All rights reserved.
//

import Cocoa

let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1)

class Menu: NSObject {
    
    override init() {
        let menu = NSMenu()
        statusItem.title = "Vrooooooom"
        statusItem.highlightMode = true
        statusItem.menu = menu
        
        let menuItem = NSMenuItem()
        menuItem.title = "Quit"
        menuItem.action = Selector("quit:")
        menu.addItem(menuItem)
    }
    
    func changeTitle(speed : String) {
        statusItem.title = speed
    }
}


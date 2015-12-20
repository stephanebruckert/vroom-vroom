//
//  AppDelegate.swift
//  vroom-vroom
//
//  Created by Stephane Bruckert on 12/19/15.
//  Copyright © 2015 Stephane Bruckert. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func acquirePrivileges() -> Bool {
        let accessEnabled = AXIsProcessTrustedWithOptions(
            [kAXTrustedCheckOptionPrompt.takeUnretainedValue() as String: true])
        
        if !accessEnabled  {
            print("You need to enable the keylogger in the System Prefrences")
        }
        return accessEnabled
    }

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        _ = Menu()
        
        acquirePrivileges()
        
        // KeyDown listener
        NSEvent.addGlobalMonitorForEventsMatchingMask(
            NSEventMask.KeyDownMask, handler: {(event: NSEvent) in
                KB.keyDownEvent(event)
        })
        
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    func quit(sender: NSButton) {
        NSApplication.sharedApplication().terminate(self)
    }

}


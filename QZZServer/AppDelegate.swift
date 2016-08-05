//
//  AppDelegate.swift
//  TestS1
//
//  Created by Wesley Yang on 16/8/1.
//  Copyright © 2016年 ff. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(notification: NSNotification) {
        
        do {
            
            let server = qzzServer(try File.currentWorkingDirectory())
            try server.start(9080, forceIPv4: true)

        } catch {
            print("Server start error: \(error)")
        }

        
        
    }


}

class Test:SQLTable{
    
}

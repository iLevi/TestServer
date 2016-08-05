//
//  UserRecord.swift
//  iOSTeamServer
//
//  Created by Wesley Yang on 16/8/1.
//
//

import Foundation


class UserRecord:SQLTable{
    var id = -1
    var user = ""
    var problemId = -1
    var isRight = true
    var timeStamp:NSDate = NSDate.distantPast()
    
    override var description:String{
        return "Record: \(user) \(problemId) \(isRight) \(timeStamp)"
    }
}

//
//  DataCenter.swift
//  QZZServer
//
//  Created by Wesley Yang on 16/8/1.
//  Copyright © 2016年 ff. All rights reserved.
//

import Foundation

public func getOverviewDataForUser(user:String) -> Dictionary<String,AnyObject>{
    
    let db = SQLiteDB.sharedInstance
    let allNamesResult = db.query("select distinct user from userrecords")
    var allNames = [String]()
    for nameDic in allNamesResult {
        let name = nameDic["user"] as! String
        allNames.append(name)
    }

    var totalDic = [String:Int]()
    for aName in allNames {
        var value = 0
        let statistics = Statistic.rows("key='user.\(aName).totalcounts'", order: "", limit: 0) as! [Statistic]
        if let s = statistics.first {
            value = Int(s.value)!
        }
        totalDic[aName] = value
    }
    
    var nameMap = [String:String]()
    for aName in allNames {
        let lowercaseName = aName.lowercaseString
        let queryResult = db.query("select * from NameMap where name='\(lowercaseName)'")
        if let nameDic = queryResult.first{
            let realName = nameDic["realName"] as! String
            nameMap[aName] = realName
        }
        
    }
    
    
    var correctRateDic = [[String:AnyObject]]()
    for aName in allNames {
        var value:Float = 0.0
        let statistics = Statistic.rows("key='user.\(aName).corrects'", order: "", limit: 0) as! [Statistic]
        if let s = statistics.first {
            let corrects = Int(s.value)!
            let total : Int! = totalDic[aName]
            if total != 0 {
                let totalF = Float(total)
                let correctsF = Float(corrects)
                value = correctsF/totalF
            }
        }
        var realName = ""
        if (nameMap[aName] != nil){
            realName = nameMap[aName]!
        }
        correctRateDic.append(["name":aName,"correctRate":value,"realName":realName])
    }
    
    let sortedCorrectRateRanks = correctRateDic.sort { (a:[String : AnyObject], b:[String : AnyObject]) -> Bool in
        let rate1 = a["correctRate"]?.floatValue
        let rate2 = b["correctRate"]?.floatValue
        return rate1>rate2
    }
    
    var userRank = 0
    for rateInfo in sortedCorrectRateRanks {
        userRank += 1
        if (rateInfo["name"]! as! String) == user {
            break
        }
    }
    
    var totalMonthDic = [String:Int]()
    for aName in allNames {
        var value = 0
        let statistics = Statistic.rows("key='user.\(aName).totalcounts.\(getThisMonth())'", order: "", limit: 0) as! [Statistic]
        if let s = statistics.first {
            value = Int(s.value)!
        }
        totalMonthDic[aName] = value
    }
    
    var correctMonthRateDic = [[String:AnyObject]]()
    for aName in allNames {
        var value:Float = 0.0
        let statistics = Statistic.rows("key='user.\(aName).corrects.\(getThisMonth())'", order: "", limit: 0) as! [Statistic]
        if let s = statistics.first {
            let corrects = Int(s.value)!
            let total : Int! = totalMonthDic[aName]
            if total != 0 {
                let totalF = Float(total)
                let correctsF = Float(corrects)
                value = correctsF/totalF
            }
        }
        var realName = ""
        if (nameMap[aName] != nil){
            realName = nameMap[aName]!
        }
        correctMonthRateDic.append(["name":aName,"correctRate":value,"realName":realName])
    }
    
    let sortedCorrectMonthRateRanks = correctMonthRateDic.sort { (a:[String : AnyObject], b:[String : AnyObject]) -> Bool in
        let rate1 = a["correctRate"]?.floatValue
        let rate2 = b["correctRate"]?.floatValue
        return rate1>rate2
    }
    
    var userMonthRank = 0
    for rateInfo in sortedCorrectRateRanks {
        userMonthRank += 1
        if (rateInfo["name"]! as! String) == user {
            break
        }
    }

    var realName = ""
    if (nameMap[user] != nil){
        realName = nameMap[user]!
    }
    
    var info = getBasicDataForUser(user)
    info["totalRankings"] = sortedCorrectRateRanks
    info["monthRankings"] = sortedCorrectMonthRateRanks
    info["totalRank"] = userRank
    info["monthRank"] = userMonthRank
    info["realName"] = realName
    
    return info
}

func updateStatisticsForUserRecord(record:UserRecord){

    let usr = record.user
    
    let correctKey = "user.\(usr).corrects"
    let userStatistic = Statistic.rows("key='\(correctKey)'", order: "", limit: 0) as! [Statistic]
    if let u = userStatistic.first{
        if record.isRight {
            let lastCorrect = Int(u.value)!
            u.value = "\(lastCorrect+1)"
            u.key = correctKey
            u.save()
        }
    }else{
        let newStatistic = Statistic()
        newStatistic.key = correctKey
        if record.isRight {
            newStatistic.value = "1"
        }else{
            newStatistic.value = "0"
        }
        newStatistic.save()
    }
    
    let monthCorrectKey = "user.\(usr).corrects.\(getThisMonth())"
    let userMonthStatistic = Statistic.rows("key='\(monthCorrectKey)'", order: "", limit: 0) as! [Statistic]
    if let u = userMonthStatistic.first{
        if record.isRight {
            let lastCorrect = Int(u.value)!
            u.value = "\(lastCorrect+1)"
            u.key = monthCorrectKey
            u.save()
        }
    }else{
        let newStatistic = Statistic()
        newStatistic.key = monthCorrectKey
        if record.isRight {
            newStatistic.value = "1"
        }else{
            newStatistic.value = "0"
        }
        newStatistic.save()
    }
    
    
    let totalKey = "user.\(usr).totalcounts"
    let userTotal = Statistic.rows("key='\(totalKey)'", order: "", limit: 0) as! [Statistic]
    if let u = userTotal.first{
        let last = Int(u.value)!
        u.value = "\(last+1)"
        u.key = totalKey
        u.save()
    }else{
        let newStatistic = Statistic()
        newStatistic.key = totalKey
        newStatistic.value = "1"
        newStatistic.save()
    }
    
    let totalMonthKey = "user.\(usr).totalcounts.\(getThisMonth())"
    let userMonthTotal = Statistic.rows("key='\(totalMonthKey)'", order: "", limit: 0) as! [Statistic]
    if let u = userMonthTotal.first{
        let last = Int(u.value)!
        u.value = "\(last+1)"
        u.key = totalMonthKey
        u.save()
    }else{
        let newStatistic = Statistic()
        newStatistic.key = totalMonthKey
        newStatistic.value = "1"
        newStatistic.save()
    }


}

//key for month
func getThisMonth() -> String{
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyyMM"
    return dateFormatter.stringFromDate(NSDate())
}

public func getBasicDataForUser(user:String) -> Dictionary<String,AnyObject>{
    
    let records = UserRecord.rows("user='\(user)'", order: "timestamp desc", limit: 0) as! [UserRecord];
    
    var corrects = 0
    var fails = 0
    var contCorrects = 0
    var contCorrectFlag = true
    
    for rec in records {
        if rec.isRight {
            corrects+=1
            if contCorrectFlag {
                contCorrects += 1
            }
        }else{
            fails+=1
            contCorrectFlag = false
        }
    }
    
    //TODO:ranking
    
    return ["corrects":corrects,
            "fails":fails,
            "total":(corrects+fails),
            "continueCorrects":contCorrects]
}

public func getSolvedQuestions(user:String) -> [Int]
{
    let db = SQLiteDB.sharedInstance
    let result = db.query("select distinct problemId from userrecords where user='\(user)' and isRight=1")
    var allPromblems = [Int]()
    for dic in result {
        let pid = dic["problemId"] as! Int
        allPromblems.append(pid)
    }
    return allPromblems
}




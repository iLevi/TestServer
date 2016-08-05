//
//  QZZServer.swift
//  TestS1
//
//  Created by Wesley Yang on 16/8/1.
//  Copyright © 2016年 ff. All rights reserved.
//

import Foundation



public func qzzServer(publicDir: String) -> HttpServer {

    
    let server = HttpServer()
 
    /**
     *  submit score
     */
    server["/qa/submit"] = { request in
        let formFields = request.queryParams
        let rec = UserRecord()
        var answers:String?
        for (key,value) in formFields {
            switch key {
            case "user":rec.user = value
            case "problemId":rec.problemId = Int(value)!
            case "answers":answers = value
            default:continue
            }
        }
        
        rec.isRight = false
        if let ans = answers {
            let anss = ans.split("-")
            let intAnss = anss.map({ (a) -> Int in
                return Int(a)!
            })
            if let qa = QALibray.shared.getQA(rec.problemId){
                rec.isRight = qa.validateOptionAnswers(intAnss)
            }
        }
        
        if rec.user != "" {
            rec.timeStamp = NSDate()
            rec.save()
            updateStatisticsForUserRecord(rec)
        }
        
        var overview = getOverviewDataForUser(rec.user)
        overview["isCorrect"] = rec.isRight
        
        return .OK(.Json(overview))
    }
    
    /**
     *  get a users score info
     */
    server["/qa/get"] = { request in
        let formFields = request.queryParams
        var userName:String?
        for (key,value) in formFields {
            if key == "user" {
                userName = value
            }
        }
        guard let userN = userName else{
            return .OK(.Json(["code":-1,"msg":"user name not provided"]))
        }
        let rec = getOverviewDataForUser(userN)
        return .OK(.Json(rec))
    }
    
    
    server["/qa/getqa"] = { request in
        let formFields = request.queryParams
        var userName:String?
        for (key,value) in formFields {
            if key == "user" {
                userName = value
            }
        }
        if let qaInfo = QALibray.shared.getQA(userName){
            return .OK(.Json(qaInfo.toQDic()))
        }else{
            let qa = QALibray.shared.getRandomQAInfo()
            var dic = qa.toQDic()
            dic["allClear"] = "1"
            return .OK(.Json(dic))
        }
    }
    
    //TODO:harder question
//    server["/qa/gethardqa"] = { request in
//        
//        
//    }
    
    server["/"] = scopes {
        html {
            body {
                ul(server.routes) { service in
                    li {
                        a { href = service; inner = service }
                    }
                }
            }
        }
    }

    return server

}

//
//  JsonConvert.swift
//  GRGetReport
//
//  Created by JOJO on 2019/9/12.
//  Copyright © 2019 JOJO. All rights reserved.
//

import Foundation

 func convertStringToDictionary(text: String) -> [String:AnyObject]? {
    if let data = text.data(using: String.Encoding.utf8) {
        do {
            return try JSONSerialization.jsonObject(with: data, options: [JSONSerialization.ReadingOptions.init(rawValue: 0)]) as? [String:AnyObject]
        } catch let error as NSError {
            print(error)
        }
    }
    return nil
}


 func convertDictionaryToString(dict:[String:AnyObject]) -> String {
    var result:String = ""
    do {
        //如果设置options为JSONSerialization.WritingOptions.prettyPrinted，则打印格式更好阅读
        let jsonData = try JSONSerialization.data(withJSONObject: dict, options: JSONSerialization.WritingOptions.init(rawValue: 0))
        
        if let JSONString = String(data: jsonData, encoding: String.Encoding.utf8) {
            result = JSONString
        }
        
    } catch {
        result = ""
    }
    return result
}

 func convertArrayToString(arr:[AnyObject]) -> String {
    var result:String = ""
    do {
        let jsonData = try JSONSerialization.data(withJSONObject: arr, options: JSONSerialization.WritingOptions.init(rawValue: 0))
        
        if let JSONString = String(data: jsonData, encoding: String.Encoding.utf8) {
            result = JSONString
        }
        
    } catch {
        result = ""
    }
    return result
}

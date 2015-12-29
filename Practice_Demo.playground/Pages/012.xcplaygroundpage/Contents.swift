//: [Previous](@previous)

import Foundation

let input   = "18800002222---13144445555"
let p = "1[3|5|7|8][0-9]\\d{8}"

/**
正则表达式查询工具——用户可以输入一段文本，在另外控件里输入一个正则表达式。运行以后会返回匹配的内容或者正则表达式中的错误。
 
 - parameter st:      输入的文本
 - parameter pattern: 正则表达式
 
 - returns: 匹配的内容，或错误的内容，如果无法匹配返回nil
 */
func regular(str: String, pattern: String) -> String? {
    
    do {
        let expr             = try NSRegularExpression(pattern: pattern, options: [])
        
        guard let res               = expr.firstMatchInString(str, options: NSMatchingOptions.ReportProgress, range: NSMakeRange(0, str.characters.count)) else{
            return nil
        }
        //print(res.range)
        return NSString(string: str).substringWithRange(res.range) as String
    }catch{
        print(error)
        return  (error as NSError).debugDescription
    }
}

regular(input, pattern: p)
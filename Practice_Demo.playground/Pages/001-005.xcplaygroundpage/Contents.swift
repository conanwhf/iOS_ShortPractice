//: [Previous](@previous)

import Foundation

func getString ( st: String )->String{
    //Just return, or get the input in future
    return st
}

/**
 001. # 逆转字符串**——输入一个字符串，将其逆转并输出。
 */
func func001( s: String )-> String{
    return String(s.characters.reverse())
}


/**
 002. # 拉丁猪文字游戏**——这是一个英语语言游戏。基本上是将一个英语单词的第一个辅音音素的字母移动到词尾并且加上后缀-ay（譬如“banana”会变成“anana-bay
 */
func func002( var s:String ) -> String{
    let VOWEL = "AEIOU"
    //let CONSONANT = "_BCD_FGH_JKLMN_PQRST_VWXYZ"
    let ADD =  ("ay", "ay")
    
    //guard s != "" else {
    if s.isEmpty {
        return ""
    }
    
     //start with consonant, move & -ay
    if !VOWEL.characters.contains(s.uppercaseString.characters.first! ) {
        let ch = s.characters.first!
        s.removeAtIndex(s.startIndex)
        s.append(ch)
        s.appendContentsOf(ADD.0)
    }
    //start with vowel, add -ay(or -way, -yay, -hay)
    else {
        s.appendContentsOf(ADD.1)
    }
    return s
}


/**
*  003. # 统计元音字母**——输入一个字符串，统计处其中元音字母的数量。更复杂点的话统记每个元音字母的数量。
*/
func func003( s:String) -> ([Character:Int], total: Int){
    let VOWEL = "AEIOU"
    var dict = [Character:Int]()
    var count = 0
    
    for i in VOWEL.characters {
        dict.updateValue(0, forKey: i)
    }
    
    for i in s.uppercaseString.characters {
        if VOWEL.characters.contains(i) {
            dict[i] = dict[i]! + 1
        }
    }
    
    // Just print the reslut
    for i in dict {
        print(i)
        count += i.1
    }
    print("String \"\(s)\" include total vowel \(count)")
    
    return (dict, count)
}



/*
004. # 判断是否为回文**——判断用户输入的字符串是否为回文。回文是指正反拼写形式都是一样的词，如“racecar”。
*/
func func004( s: String) -> Bool{
    return String(s.characters.reverse()) == s
}


/*
005. # 统计字符串中的单词数目**——统计字符串中单词的数目，更复杂的话从一个文本找出字符串并生成单词数目统计结果。
*/
func func005(s:String) -> Int{
    return s.componentsSeparatedByString(" ").count
    //s.componentsSeparatedByCharactersInSet(NSCharacterSet(charactersInString: " ,.!"))
}


func001( getString("abcdefg") )
func002( getString("iron") )
func003( getString("banana") )
func004( getString("racecar") )
func005( getString("it is mine!") )

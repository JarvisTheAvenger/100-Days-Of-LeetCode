import Foundation

// https://leetcode.com/problems/longest-common-prefix/

func longestCommonPrefix(_ strs: [String]) -> String {
    guard !strs.isEmpty else { return "" }
    
    let sortedStrs = strs.sorted { s1, s2 in
        s1.count < s2.count
    }
    
    let firstStringCharacters = Array(sortedStrs.first!)
    
    var count = 0
    
outerloop: for idx in 0..<firstStringCharacters.count {
    let firstStringCurrentChar = firstStringCharacters[idx]
    
innerLoop: for innerIdx in 0..<sortedStrs.count {
    let innerStringCurrentChar = Array(sortedStrs[innerIdx])[idx]
    
    if firstStringCurrentChar != innerStringCurrentChar {
        break outerloop
    }
}
    
    count += 1
}
    
    
    return String(firstStringCharacters[0..<count])
}

// ["flower","flow","flight"]
// ["f","fl","fl"]
// ["dog","racecar","car"]
//

longestCommonPrefix([""])

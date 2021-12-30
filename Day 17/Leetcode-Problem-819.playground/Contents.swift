import Foundation

// https://leetcode.com/problems/most-common-word/

func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
    let words = paragraph.split(separator: " ")
    var dict = [String:Int]()
    
    for word in words {
        let refinedWord = String(word).filter { !$0.isPunctuation }.lowercased()
        
        if !banned.contains(refinedWord) {
            if let count = dict[refinedWord] {
                dict[refinedWord] = count + 1
            } else {
                dict[refinedWord] = 1
            }
        }
    }
    
    return dict.sorted { $0.value > $1.value }.first?.key ?? ""
}

let result = mostCommonWord("word", ["word"])

print(result)

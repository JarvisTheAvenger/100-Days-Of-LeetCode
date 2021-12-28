import Foundation

// https://leetcode.com/problems/check-if-the-sentence-is-pangram/

func checkIfPangram(_ sentence: String) -> Bool {
    guard sentence.count >= 26 else {
        return false
    }
    
    var dict = ["a": false, "b": false, "c": false, "d": false, "e": false,
                "f": false, "g": false, "h": false, "i": false, "j": false,
                "k": false, "l": false, "m": false, "n": false, "o": false,
                "p": false, "q": false, "r": false, "s": false, "t": false,
                "u": false, "v": false, "w": false, "x": false, "y": false, "z": false]
    
    
    let characters = Array(sentence.lowercased())
    
    for char in characters {
        dict["\(char)"] = true
    }
    
    for key in dict.values {
        if key == false {
            return false
        }
    }
    
    return true
}

checkIfPangram("leetcode")

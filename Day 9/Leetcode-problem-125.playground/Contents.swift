import UIKit

// https://leetcode.com/problems/valid-palindrome/

func isPalindrome(_ s: String) -> Bool {
    
    let characters = Array(s)
    
    var start = 0
    var end = s.count - 1
    
    while (start < end) {
        let startChar = characters[start]
        
        if !(startChar.isNumber || startChar.isLetter) {
            start += 1
            continue
        }
        
        let endChar = characters[end]
        
        if !(endChar.isLetter || endChar.isNumber) {
            end -= 1
            continue
        }
        
        if startChar.lowercased() != endChar.lowercased() {
            return false
        }
        
        start += 1
        end -= 1
    }
    
    return true
}

isPalindrome("a.")

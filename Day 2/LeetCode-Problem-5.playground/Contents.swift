import UIKit

// https://leetcode.com/problems/longest-palindromic-substring/

func longestPalindrome(_ s: String) -> String {
    guard !s.isEmpty else { return "" }
    
    var start = 0
    var end = 0
    
    for i in 0..<s.count {
        let len1 = expandFromMiddle(s, i, i)
        let len2 = expandFromMiddle(s, i, i+1)
        let len = max(len1, len2)
        
        if len > end - start {
            start = i - ((len-1)/2)
            end = i + (len / 2)
        }
    }
    
    let chars = Array(s)
    let result = String(chars[start...end])
    
    return result

}

func expandFromMiddle(_ string: String, _ left: Int, _ right: Int) -> Int {
    if string.isEmpty || left > right { return 0 }
    
    var left = left
    var right = right
    
    let chars = Array(string)
    
    while left >= 0 && right < string.count && chars[left] == chars[right] {
        left -= 1
        right += 1
    }
    
    return right - left - 1
}



let input = "abababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababababa"

let result = longestPalindrome(input)

print(result)

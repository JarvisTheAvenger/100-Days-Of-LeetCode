import UIKit

// https://leetcode.com/problems/implement-strstr/

func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.isEmpty {
        return 0
    }
    
    let m = haystack.count
    let n = needle.count
    
    if n > m {
        return -1
    }
    
    let haystackArray = Array(haystack)
    let needleArray = Array(needle)
    
    var i = 0
    for _ in (0...m-n) {
        var j = 0
        
        for _ in 0..<n  {
            if haystackArray[i + j] != needleArray[j] {
                break
            }
            
            j += 1
        }
        
        if j == n {
            return i
        }
        
        i += 1
    }
    
    return -1
}

"mississippi"
"issip"

let result = strStr("mississippi", "issip")
print(result)

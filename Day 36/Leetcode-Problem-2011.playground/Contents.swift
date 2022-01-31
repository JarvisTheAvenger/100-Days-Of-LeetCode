import Foundation

// https://leetcode.com/problems/final-value-of-variable-after-performing-operations/

func finalValueAfterOperations(_ operations: [String]) -> Int {
    var val = 0
    
    for operation in operations {
        switch operation {
           case "X++", "++X":  val += 1
           default: val -= 1
        }
    }
    
    return val
}

let operations = ["--X","X++","X++"]

finalValueAfterOperations(operations)

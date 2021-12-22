import Foundation

// https://leetcode.com/problems/intersection-of-two-arrays/

func printAllDuplicates(_ s: String) {
    var dict = [Character: Int]()
    
    for element in Array(s) {
        if let _ = dict[element] {
            print(element)
        } else {
            dict[element] = 1
        }
    }
}

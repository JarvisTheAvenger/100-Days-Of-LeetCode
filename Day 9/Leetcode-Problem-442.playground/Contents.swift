import Foundation

// https://leetcode.com/problems/find-all-duplicates-in-an-array/

func findDuplicates(_ nums: [Int]) -> [Int] {
    var dict = [Int:Bool]()
    var result = [Int]()
    
    
    for element in nums {
        if let isVisited = dict[element], isVisited == true {
            result.append(element)
        } else {
            dict[element] = true
        }
    }
    
    return result
}

findDuplicates([4,3,2,7,8,2,3,1])

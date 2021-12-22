import Foundation

// https://leetcode.com/problems/intersection-of-two-arrays/


func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    let set1 = Set(nums1)
    let set2 = Set(nums2)
    
    let resultSet = set1.intersection(set2)
    
    return Array(resultSet)
}

intersection([1,2,2,1], [2,2])

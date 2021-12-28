import Foundation

// https://leetcode.com/problems/number-of-good-pairs/

func numIdenticalPairs(_ nums: [Int]) -> Int {
    var array = [(Int,Int)]()
        
    for i in 0..<nums.count {
        for j in 0..<nums.count {
            if i == j {
                continue
            }
            
            if nums[i] == nums[j] {
                // found pair
                let exist = array.contains { tupple in
                    if (tupple.0 == i  || tupple.1 == i) && (tupple.0 == j || tupple.1 == j) {
                        return true
                    }
                    
                    return false
                }
                
                if !exist {
                    array.append((i,j))
                }

            }
        }
    }
        
    return array.count
}

numIdenticalPairs([1,2,3])

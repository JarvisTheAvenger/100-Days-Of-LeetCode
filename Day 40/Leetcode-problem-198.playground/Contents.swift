import Foundation

// https://leetcode.com/problems/house-robber/

func rob(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return -1 }
    
    if nums.count == 2 {
        return max(nums[0], nums[1])
    }
    
    if nums.count == 1 {
        return nums[0]
    }
 
    var dp = [Int](repeating: -1, count: nums.count)
    
    dp[0] = nums[0]
    dp[1] = max(nums[0], nums[1])
    
    for idx in 2..<nums.count {
        dp[idx] = max(nums[idx] + dp[idx-2], dp[idx-1])
    }
    
    return dp[nums.count-1]
}

rob([1,2,3,1])

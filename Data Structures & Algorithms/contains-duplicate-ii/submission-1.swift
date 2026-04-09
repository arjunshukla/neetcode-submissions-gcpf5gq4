class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        for i in 0..<nums.count {
            for j in 1..<nums.count {
                if i != j && nums[i] == nums[j] && abs(i - j) <= k {
                    return true
                }
            }
        }

        return false
    }
}

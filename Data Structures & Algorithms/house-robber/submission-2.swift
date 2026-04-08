class Solution {
    func rob(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        guard nums.count > 1 else { return nums[0] }

        var dp: [Int] = [nums[0], max(nums[0],nums[1])]

        for i in 2..<nums.count {
            dp.append(max(dp[i - 1], dp[i - 2] + nums[i]))
        }

        return dp[dp.count - 1]
    }
}

class Solution {
    /*
    Input: nums = [1,4,1,2]
    Output: [1,4,1,2,1,4,1,2]
    */
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var ans = Array(repeating: 0, count: nums.count * 2)
        var numsCount = nums.count
        for i in 0..<numsCount { // i = 0, n = 4
            ans[i] = nums[i]

            if i < numsCount { 
                ans[i + numsCount] = nums[i]
            }
        }

        return ans
    }
}

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let len = nums.count
        var prefix = Array(repeating: 0, count: len)
        var suffix = Array(repeating: 0, count: len)
        var res = Array(repeating: 0, count: len)

        prefix[0] = 1
        suffix[len - 1] = 1

        for i in 1..<len {
            prefix[i] = nums[i-1] * prefix[i - 1] 
        }

        for i in stride(from: len - 2, through: 0, by: -1) {
            suffix[i] = nums[i + 1] * suffix[i + 1]
        }

        for i in 0..<len {
            res[i] = prefix[i] * suffix[i]
        }

        return res
    }
}

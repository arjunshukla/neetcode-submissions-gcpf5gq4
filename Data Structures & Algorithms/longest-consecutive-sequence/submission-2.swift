class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set(nums)
        var res = 0

        for n in nums {
            if !set.contains(n - 1) {
                var len = 1
                while set.contains(n + len) {
                    len += 1
                }
                res = max(res, len)
            }
        }

        return res
    }
}

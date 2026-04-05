class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set(nums)
        var res = 0

        for n in nums {
            var val = n
            var len = 1

            while set.contains(val + len) {
                len += 1
            }

            res = max(res, len)
        }

        return res
    }
}

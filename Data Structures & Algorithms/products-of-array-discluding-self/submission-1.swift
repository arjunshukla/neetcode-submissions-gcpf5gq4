class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var product = 1
        var zeroCount = 0
        for n in nums {
            if n == 0 {
                zeroCount += 1
                continue
            }
            product *= n
        }

        if zeroCount > 1 {
            return Array(repeating: 0, count: nums.count)
        }

        var res = Array(repeating: 0, count: nums.count)

        for (i, num) in nums.enumerated() {
            if zeroCount > 0 {
                res[i] = num == 0 ? product : 0
            } else {
                res[i] = product / num
            }
        }

        return res
    }
}

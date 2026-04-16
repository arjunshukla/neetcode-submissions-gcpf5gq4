class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        let n = nums.count
        var res: [[Int]] = []

        for i in 0..<(1 << n) {
            var subset: [Int] = []
            for j in 0..<n {
                if (i & (1 << j)) != 0 {
                    subset.append(nums[j])
                }
            }
            res.append(subset)
        }
        return res
    }
}

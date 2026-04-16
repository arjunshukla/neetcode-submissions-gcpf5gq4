class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var res: [[Int]] = [[]]
        for num in nums {
            res += res.map { $0 + [num] }
        }
        return res
    }
}

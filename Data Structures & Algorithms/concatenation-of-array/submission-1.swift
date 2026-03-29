class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var ans = nums

        for n in nums {
            ans.append(n)
        }

        return ans
    }
}

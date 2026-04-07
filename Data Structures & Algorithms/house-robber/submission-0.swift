class Solution {
    func rob(_ nums: [Int]) -> Int {
        var rob1 = 0
        var rob2 = 0

        for num in nums {
            let temp = max(rob1 + num, rob2)
            rob1 = rob2
            rob2 = temp
        }

        return rob2
    }
}

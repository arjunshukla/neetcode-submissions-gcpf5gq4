class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var result = 0
        var maxCount = 0

        for num in nums {
            maxCount = (maxCount + 1) * num
            result = max(result, maxCount)
        }
        return result
    }
}

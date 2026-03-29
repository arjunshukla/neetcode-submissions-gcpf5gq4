class Solution {
    /*
    - Define result, max vars = 0
    - Loop array
    - Check if 1 then increment max
    - If not 1, if result < max, 
        - set result = max
        - reset max
    - return result
    */
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var result = 0
        var maxCount = 0

        for num in nums {
            if num == 1 {
                maxCount += 1
                result = max(result, maxCount)
            } else {
                maxCount = 0
            }
        }

        return result
    }
}

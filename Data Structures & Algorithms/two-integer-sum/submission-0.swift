class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for (i, num) in nums.enumerated() {
            let diff = target - num
            if let prevIdx = dict[diff] {
                return [prevIdx, i]
            }
            dict[num] = i
        }

        return []
    }
}

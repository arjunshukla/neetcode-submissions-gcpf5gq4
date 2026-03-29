class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var temp: [Int] = []

        for num in nums {
            if num != val {
                temp.append(num)
            }
        }

        nums = temp
        return nums.count
    }
}

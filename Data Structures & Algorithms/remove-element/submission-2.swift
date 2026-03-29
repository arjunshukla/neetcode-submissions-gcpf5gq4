class Solution {
    /*
    
    */
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var k = 0

        for i in 0..<nums.count {
            print("i: \(i)")
            print("k: \(k)")
            print("nums[i]: \(nums[i])")
            print("nums[k]: \(nums[k])")
            if nums[i] != val {
                nums[k] = nums[i]
                k += 1
            }
        }

        return k
    }
}

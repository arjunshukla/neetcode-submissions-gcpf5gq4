class Solution {
    /*
    - Declare counter variable to check how many elements matching val are there
    - Use 2 pointers
    - i: 1st will loop through the array
    - k: 2nd will be used to track the position of val
    - when nums[i] == val
        - swap with the last one
    - return count
    */
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var maxCount = 0
        var i = 0
        var j = nums.count
        var numCount = nums.count

        while i < j {
            if nums[i] == val {
                j -= 1
                nums[i] = nums[j]
            } else {
                i += 1
            }
        }

        return j
    }
}

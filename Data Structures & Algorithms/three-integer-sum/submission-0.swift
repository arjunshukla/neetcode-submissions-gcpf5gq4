class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res: [[Int]] = []
        let nums = nums.sorted() // O(nlogn)
        let len = nums.count

        for i in 0..<len {

            // skip duplicates
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }

            var l = i + 1
            var r = len - 1

            while l < r {
                let sum = nums[i] + nums[l] + nums[r]
                if sum == 0 {
                    res.append([nums[i], nums[l], nums[r]])

                    // skip duplicates for l and r
                    while l < r && nums[l] == nums[l + 1] {
                        l += 1
                    }

                    while l < r && nums[r] == nums[r - 1] {
                        r -= 1
                    }

                    l += 1
                    r -= 1
                } else if sum > 0 {
                    r -= 1
                } else {
                    l += 1
                }
            } 
        }
        return res
    }
}

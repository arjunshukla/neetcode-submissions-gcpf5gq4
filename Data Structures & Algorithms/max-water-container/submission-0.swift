class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var res = 0
        var left = 0
        var right = heights.count - 1

// [1,7,2,5,4,7,3,6] | 36
        while left < right {
            // h * w
            let height = min(heights[left], heights[right])
            let width = right - left
            let area = height * width
            res = max(res, area)

            if heights[left] <= heights[right] {
                left += 1
            } else {
                right -= 1
            }
        }

        return res
    }
}

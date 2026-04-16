class Solution {
    func combinationSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        let len = nums.count
        var res: [[Int]] = []
        var path: [Int] = []


        func dfs(_ i: Int, _ currentSum: Int) {
            if currentSum == target {
                res.append(path)
                return
            }
            if currentSum > target || i >= len { return }
            
            // take nums[i]
            path.append(nums[i])
            dfs(i, currentSum + nums[i]) // stay at i
            path.removeLast()

            // skip nums[i]
            dfs(i + 1, currentSum)
        }

        dfs(0, 0)
        return res
    }
}

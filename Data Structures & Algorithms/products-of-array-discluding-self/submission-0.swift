class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var res: [Int] = []
        let n = nums.count
        
        for i in 0..<n {
            var product = 1
            for j in 0..<n {
                if i == j { continue }
                product *= nums[j]   
            }
            res.append(product)
        }
        return res
    }
}

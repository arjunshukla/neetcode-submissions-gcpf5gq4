class Solution {
    func climbStairs(_ n: Int) -> Int {
        // ways(n) = ways(n-1) + ways(n-2)
        var oneRemainingStep = 1 // ways to reach i - 1
        var twoRemainingSteps = 1 // ways to reach i - 2

        for i in 0..<n-1 {
            let steps = oneRemainingStep + twoRemainingSteps
            twoRemainingSteps = oneRemainingStep
            oneRemainingStep = steps
        }

        return oneRemainingStep
    }
}

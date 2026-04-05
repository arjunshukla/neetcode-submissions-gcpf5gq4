class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxP = 0

        let len = prices.count
        var i = 0
        var j = i + 1

        while j < len {
            if prices[i] < prices[j] {
                let profit = prices[j] - prices[i]
                maxP = max(maxP, profit)
            } else {
                i = j
            }
            j += 1
        }

        return maxP
    }
}

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        for i in 0..<prices.count {
            let buy = prices[i]
            for j in (i + 1)..<prices.count {
                let sell = prices[j]
                profit = max(profit, sell - buy)
            }
        }

        return profit
    }
}

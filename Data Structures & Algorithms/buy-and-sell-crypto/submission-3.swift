class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxP = 0
        var minBuy = prices[0]

        for sell in prices {
            maxP = max(maxP, sell - minBuy)
            minBuy = min(minBuy, sell)
        }

        return maxP
    }
}

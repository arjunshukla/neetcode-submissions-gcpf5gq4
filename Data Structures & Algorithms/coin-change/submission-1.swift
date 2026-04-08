class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var dp = Array(repeating: amount + 1, count: amount + 1)
        dp[0] = 0

        for amount in 1..<dp.count {
            for coin in coins {
                if amount >= coin {
                    dp[amount] = min(dp[amount], dp[amount - coin] + 1)
                }
            }
        }
        return dp[amount] > amount ? -1 : dp[amount]
    }

}

class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if coins.isEmpty || amount == 0 { return 0 }

        var dp = Array(repeating: amount + 1, count: amount + 1)
        dp[0] = 0

        for i in 1...amount {
            for coin in coins {
                if i - coin >= 0 {
                    dp[i] = min(dp[i], dp[i - coin] + 1)
                }
            }
        }

        return dp[amount] == amount + 1 ? -1 : dp[amount]
    }
}

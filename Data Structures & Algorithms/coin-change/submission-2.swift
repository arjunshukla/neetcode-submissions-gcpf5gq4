class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var possibleAmounts = Array(repeating: amount + 1, count: amount + 1)
        possibleAmounts[0] = 0

        for amount in 1..<possibleAmounts.count {
            for coin in coins {
                if amount >= coin {
                    possibleAmounts[amount] = min(possibleAmounts[amount], possibleAmounts[amount - coin] + 1)
                }
            }
        }
        return possibleAmounts[amount] > amount ? -1 : possibleAmounts[amount]
    }

}

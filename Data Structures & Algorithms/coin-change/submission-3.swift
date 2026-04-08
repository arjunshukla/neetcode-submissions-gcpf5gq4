class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var possibleAmounts = Array(repeating: amount + 1, count: amount + 1)
        possibleAmounts[0] = 0

        for a in 1..<possibleAmounts.count {
            for coin in coins {
                if a >= coin {
                    possibleAmounts[a] = min(possibleAmounts[a], possibleAmounts[a - coin] + 1)
                }
            }
        }
        return possibleAmounts[amount] > amount ? -1 : possibleAmounts[amount]
    }

}

class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        let len = temperatures.count
        var res = Array(repeating: 0, count: len)

        for i in stride(from: len - 2, through: 0, by: -1) {
            var j = i + 1
            while j < len && temperatures[j] <= temperatures[i] {
                if res[j] == 0 {
                    j = len
                    break
                }
                j += res[j]
            }

            if j < len {
                res[i] = j - i
            }
        }

        return res
    }
}

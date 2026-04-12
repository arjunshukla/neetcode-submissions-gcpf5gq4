class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        let len = temperatures.count
        var res = Array(repeating: 0, count: len)
        var stack: [Int] = []

        for i in 0..<len {
            while let last = stack.last,
            temperatures[i] > temperatures[last] {
                let index = stack.removeLast()
                res[index] = i - index
            }
            stack.append(i)
        }
        return res
    }
}

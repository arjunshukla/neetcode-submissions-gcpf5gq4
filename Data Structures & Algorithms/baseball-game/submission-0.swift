class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var sum: [Int] = []

        for op in operations {
            switch op {
                case "D":
                    if let last = sum.last {
                        sum.append(last * 2)
                    }
                case "+":
                    if let last = sum.last {
                        sum.append(last + sum[sum.count - 2])
                    }
                case "C":
                    sum.removeLast()
                default:
                    sum.append(Int(op) ?? 0)
            }
        }

        return sum.reduce(0, +)
    }
}

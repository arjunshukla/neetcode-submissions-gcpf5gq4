// O(n) S, T
class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var sum: [Int] = []
        var total = 0

        for op in operations {
            switch op {
                case "D":
                    if let last = sum.last {
                        sum.append(last * 2)
                        total += sum.last!
                    }
                case "+":
                    if let last = sum.last,
                    sum.count > 1 {
                    let secondLast = sum[sum.count - 2]
                    sum.append(last + secondLast)
                    total += sum.last!
                }
                case "C":
                    if !sum.isEmpty {
                        let last = sum.removeLast()
                        total -= last
                    }
                default:
                    sum.append(Int(op) ?? 0)
                    total += Int(op) ?? 0
            }
        }

        return total
    }
}
